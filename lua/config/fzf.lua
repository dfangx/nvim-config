fzf = require'fzf-lua'
actions = require'fzf-lua.actions'

fzf.setup {
    winopts = {
        split = 'new',
        win_height = 0.5
    },
    fzf_layout = 'default',
    preview_vertical = 'up:70%',
    preview_wrap = 'wrap'
}
local opts = {}
nnoremap('<leader>ff', ':FzfLua files<cr>', opts)
nnoremap('<leader>fs', ':lua fzf.files({actions = {["default"] = actions.file_split}})<cr>', opts)
nnoremap('<leader>fv', ':lua fzf.files({actions = {["default"] = actions.file_vsplit}})<cr>', opts)
nnoremap('<leader>ft', ':lua fzf.files({actions = {["default"] = actions.file_tabedit}})<cr>', opts)
nnoremap('<leader>fg', ':FzfLua git_files<cr>', opts)
nnoremap('<leader>b', ':FzfLua buffers<cr>', opts)
nnoremap('<leader>/', ':FzfLua live_grep<cr>', opts)

require'notes'
