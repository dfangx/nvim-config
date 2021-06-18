require'treesitter_common'
treesitter.setup {
    ensure_installed = "cpp", 
    highlight = {
        enable = true
    },
}

--- Nvim Lsp setup
require'lsp_common'
nvim_lsp.clangd.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
nvim_lsp.clangd.manager.try_add_wrapper()
