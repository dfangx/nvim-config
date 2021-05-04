require'nvim-treesitter.configs'.setup {
    ensure_installed = "rust", 
    highlight = {
        enable = true
    }
}

vim.api.nvim_set_option("foldmethod", "expr")
vim.api.nvim_set_option("foldexpr", "nvim_treesitter#foldexpr()")
