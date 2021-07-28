compe = require'compe'
compe.setup {
    enabled = true;
    autocomplete = true;
    debug = false;
    min_length = 1;
    preselect = 'enable';
    throttle_time = 80;
    source_timeout = 200;
    resolve_timeout = 800;
    incomplete_delay = 400;
    max_abbr_width = 100;
    max_kind_width = 100;
    max_menu_width = 100;
    documentation = true;
    source = {
        vsnip = {
            priority = 10
        };
        nvim_lsp = {
            priority = 9
        };
        nvim_lua = {
            priority = 8
        };
        tags = {
            priority = 7
        };
        note_tags = {
            priority = 6
        };
        path = {
            priority = 3
        };
        calc = {
            priority = 2
        };
        buffer = {
            priority = 1
        };
    };
} 
local opts = {
    expr = true,
    silent = true
}
inoremap('<cr>', [[compe#confirm('<cr>')]], opts)
inoremap('<tab>', [[pumvisible() ? '<C-n>' : '<tab>']], opts)
inoremap('<s-tab>', [[pumvisible() ? '<C-p>' : '<s-tab>']], opts)

