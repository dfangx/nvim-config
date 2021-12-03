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
    server:setup(opts)
end)
