require'config.lsp.lsp_common'
require'config.lsp.capabilities'
require'lspinstall.servers'.gdscript = require'lspinstall/util'.extract_config("gdscript")
require'lspinstall'.setup()
local servers = require'lspinstall'.installed_servers()
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup { 
        on_attach = on_attach,
        capabilities = capabilities,
    }
end
nvim_lsp['gdscript'].setup { 
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
    capabilities = capabilities,
    flags = {
        debounce_text_changes = 150
    }
}
