local actions = require'telescope.actions'
require'telescope'.setup {
    defaults = {
        layout_strategy = 'bottom_pane',
        layout_config = {
            height = 0.5
        },
        mappings = {
            i = {
                ['<c-n>'] = false,
                ['<c-p>'] = false,
                ['<up>'] = false,
                ['<down>'] = false,
                ['<esc>'] = actions.close,
                ['<c-j>'] = actions.move_selection_next,
                ['<c-k>'] = actions.move_selection_previous
            }
        }
    }
}

