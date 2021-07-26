nvim_lsp = require'lspconfig'

-- Config from nvim-lsp config
on_attach = function(client)
    o.omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Set autocommands conditional on server_capabilities
    if client.resolved_capabilities.document_highlight then
        vim.api.nvim_exec([[
        hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
        hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
        hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
        augroup lsp_document_highlight
        autocmd!
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
        augroup END
        ]], false)
    end

    local opts = { silent = true }
    buf_nnoremap('gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_nnoremap('gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_nnoremap('K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_nnoremap('gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_nnoremap('<C-s>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_nnoremap('<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_nnoremap('<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_nnoremap('<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    buf_nnoremap('<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_nnoremap('<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_nnoremap('gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_nnoremap('<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    buf_nnoremap('[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    buf_nnoremap(']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    buf_nnoremap('<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
end
