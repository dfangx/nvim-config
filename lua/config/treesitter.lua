treesitter = require'nvim-treesitter.configs'
vim.api.nvim_set_option("foldmethod", "expr")
vim.api.nvim_set_option("foldexpr", "nvim_treesitter#foldexpr()")
