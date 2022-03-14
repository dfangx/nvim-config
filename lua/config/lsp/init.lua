require'config.lsp.lsp_common'
require'config.lsp.capabilities'

local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach = on_attach,
        capabilities = capabilities,
    }
    if server.name == 'gdscript' then
        opts.on_attach = function(client)
            on_attach(client)
            local _notify = client.notify
            client.notify = function(method, params)
                if method == 'textDocument/didClose' then
                    return
                end
                _notify(method, params)
            end
        end
        opts.flags = {
            debounce_text_changes = 150
        }
    end
    if server.name == 'ccls' then
        opts.on_attach = function (client)
            on_attach(client)
            local keyOpts = {silent = true}
            buf_nnoremap('gc', '<cmd>CclsCallers<cr>', keyOpts)
            buf_nnoremap('<leader>ch', '<cmd>CclsCallHierarchy<cr>', keyOpts)
            buf_nnoremap('gC', '<cmd>CclsCallees<cr>', keyOpts)
            buf_nnoremap('<leader>Ch', '<cmd>CclsCalleeHierarchy<cr>', keyOpts)
        end
        opts.init_options = {
            cache = {
                directory = "/home/cyrusng/.cache/ccls"
            }
        }
    end
    if server.name == 'sumneko_lua' then
        opts.settings = {
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
    end
    if server.name == 'rust-analyzer' then
        opts.settings = {
            ['rust-analyzer'] = {
                checkOnSave = {
                    command = 'clippy',
                }
            }
        }
    end
    server:setup(opts)
end)
