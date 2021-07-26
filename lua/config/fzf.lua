g.fzf_colors = {
    fg= {'fg', 'Normal'},
    bg= {'bg', 'Normal'},
    hl= {'fg', 'Comment'},
    fg= {'fg', 'CursorLine', 'CursorColumn', 'Normal'},
    ['bg+'] = {'bg', 'CursorLine', 'CursorColumn'},
    ['hl+'] = {'fg', 'Statement'},
    info = {'fg', 'PreProc'},
    border = {'fg', 'Ignore'},
    prompt = {'fg', 'Conditional'},
    pointer = {'fg', 'Exception'},
    marker = {'fg', 'Keyword'},
    spinner = {'fg', 'Label'},
    header = {'fg', 'Comment'}
}
g.fzf_layout = {
    down = '~70%'
}
g.fzf_preview_window = {'up:wrap:70%'}
nnoremap('<leader>ff', ':Files<cr>', {})
nnoremap('<leader>fs', [[:call fzf#run(fzf#wrap({'sink': 'split'}))<cr>]], {})
nnoremap('<leader>fv', [[:call fzf#run(fzf#wrap({'sink': 'vert split'}))<cr>]], {})
nnoremap('<leader>ft', [[:call fzf#run(fzf#wrap({'sink': 'tabedit'}))<cr>]], {})
nnoremap('<leader>fg', ':GFiles<cr>', {})
nnoremap('<leader>b', ':Buffers<cr>', {})
nnoremap('<leader>/', ':Rg<cr>', {})
inoremap('<c-x><c-f>', [[fzf#vim#complete#path("fd", {"options":["--select-1", "--preview", "tree {}"]})]], {expr = true})
imap('<c-x><c-l>', '<plug>(fzf-complete-line)', {})
imap('<c-x><c-k>', '<plug>(fzf-complete-word)', {})
