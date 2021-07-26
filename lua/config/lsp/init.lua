require'config.lsp.lsp_common'
require'config.lsp.capabilities'
-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
require'lspinstall'.setup()
local servers = require'lspinstall'.installed_servers()
 for _, lsp in ipairs(servers) do
     nvim_lsp[lsp].setup { 
         on_attach = on_attach,
         capabilities = capabilities,
     }
 end

