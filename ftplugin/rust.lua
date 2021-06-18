require'treesitter_common'
treesitter.setup {
    ensure_installed = "rust", 
    highlight = {
        enable = true
    }
}

--- Nvim Lsp setup
require'lsp_common'
nvim_lsp.rust_analyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
nvim_lsp.rust_analyzer.manager.try_add_wrapper()
