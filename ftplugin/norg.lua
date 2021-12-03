local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

parser_configs.norg = {
    install_info = {
        url = "https://github.com/nvim-neorg/tree-sitter-norg",
        files = { "src/parser.c", "src/scanner.cc" },
        branch = "main"
    },
}

treesitter.setup {
    ensure_installed = "norg", 
    highlight = {
        enable = true
    }
}

if packer_plugins["vim-pencil"] and packer_plugins["vim-pencil"].loaded then
    fn['pencil#init']()
end
