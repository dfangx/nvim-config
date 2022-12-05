require'config.lsp.lsp_common'
require'config.lsp.capabilities'

local lspconfig = require'lspconfig'
local lsp_installer = require"nvim-lsp-installer"
lsp_installer.setup{};
local servers = lsp_installer.get_installed_servers();

lspconfig.util.default_config = vim.tbl_extend(
"force",
lspconfig.util.default_config,
{
    on_attach = on_attach,
    capabilities = capabilities
}
)

for _, server in ipairs(servers) do
    if server.name == 'gdscript' then
        lspconfig[server.name].setup {
            on_attach = function(client)
                on_attach(client)
                local _notify = client.notify
                client.notify = function(method, params)
                    if method == 'textDocument/didClose' then
                        return
                    end
                    _notify(method, params)
                end
            end,
            flags = {
                debounce_text_changes = 150
            }
        }
    elseif server.name == 'ccls' then
        lspconfig[server.name].setup {
            on_attach = function (client)
                on_attach(client)
                local keyOpts = {silent = true}
                buf_nnoremap('gc', '<cmd>CclsCallers<cr>', keyOpts)
                buf_nnoremap('<leader>ch', '<cmd>CclsCallHierarchy<cr>', keyOpts)
                buf_nnoremap('gC', '<cmd>CclsCallees<cr>', keyOpts)
                buf_nnoremap('<leader>Ch', '<cmd>CclsCalleeHierarchy<cr>', keyOpts)
            end,
            init_options = {
                cache = {
                    directory = "/home/cyrusng/.cache/ccls"
                }
            }
        }
    elseif server.name == 'sumneko_lua' then
        lspconfig[server.name].setup {
            settings = {
                Lua = {
                    runtime = {
                        version = 'LuaJIT',
                        path = runtime_path,
                    },
                    diagnostics = {
                        globals = {'vim'},
                    },
                    workspace = {
                        library = vim.api.nvim_get_runtime_file("", true),
                    },
                    telemetry = {
                        enable = false,
                    },
                }
            }
        }
    elseif server.name == 'rust-analyzer' then
        lspconfig[server.name].setup {
            settings = {
                ['rust-analyzer'] = {
                    checkOnSave = {
                        command = 'clippy',
                    }
                }
            }
        }
    else
        lspconfig[server.name].setup{}
    end
end
