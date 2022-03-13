require'utils'

g.mapleader = ' '
g.localmapleader = ' '

g.netrw_liststyle = 3
g.netrw_winsize = 20
g.netrw_banner = 0
g.netrw_altv = 1

local opts = {}
nnoremap('<space>', '<nop>', opts)
nnoremap('<leader>e', '<cmd>Lexplore<cr>', opts)
