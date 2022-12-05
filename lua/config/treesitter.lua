local treesitter = require'nvim-treesitter.configs'
local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

-- parser_configs.norg_meta = {
--     install_info = {
--         url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
--         files = { "src/parser.c" },
--         branch = "main"
--     },
-- }
-- 
-- parser_configs.norg_table = {
--     install_info = {
--         url = "https://github.com/nvim-neorg/tree-sitter-norg-table",
--         files = { "src/parser.c" },
--         branch = "main"
--     },
-- }

treesitter.setup {
    ensure_installed = {
        "bash",
        "c",
        "cpp",
        "lua",
        "python",
        "rust",
        "toml",
        "vim",
        "yaml",
        "zig",
    },
    highlight = {
        enable = true
    },
}

o.foldmethod = 'expr'
o.foldexpr = 'nvim_treesitter#foldexpr()'
