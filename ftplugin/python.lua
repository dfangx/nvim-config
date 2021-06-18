require'treesitter_common'
treesitter.setup {
    ensure_installed = "python", 
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    }
}

--- Nvim Lsp setup
require'lsp_common'
nvim_lsp.pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
nvim_lsp.pyright.manager.try_add_wrapper()
