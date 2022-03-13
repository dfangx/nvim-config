""""""""""""""""""""""""""""""""""""""""""""""""""
" KEYBINDS
""""""""""""""""""""""""""""""""""""""""""""""""""
" File finding
nnoremap <leader>ff :find
nnoremap <leader>fs :sfind 
nnoremap <leader>fv :vert :sfind 
nnoremap <leader>ft :tabfind 

" Split lines
nnoremap S a<cr><esc>
nnoremap <leader>O O<esc>
nnoremap <leader>o o<esc>

" Buffer management
nnoremap ]b :bn<cr>
nnoremap [b :bp<cr>
nnoremap <leader>bb :ls<cr>:b
nnoremap <leader>bd :bd<cr>

" Surround
inoremap ( ()<left>
inoremap <expr> ) matchstr(getline('.'), '\%' . col('.') . 'c.') == ')' ? '<right>' : ')'
inoremap [ []<left>
inoremap <expr> ] matchstr(getline('.'), '\%' . col('.') . 'c.') == ']' ? '<right>' : ']'
inoremap {<cr> {<cr>}<esc>O
inoremap { {}<left>
inoremap <expr> } matchstr(getline('.'), '\%' . col('.') . 'c.') == '}' ? '<right>' : '}'
inoremap < <><left>
inoremap <expr> > matchstr(getline('.'), '\%' . col('.') . 'c.') == '>' ? '<right>' : '>'
inoremap <expr> " matchstr(getline('.'), '\%' . col('.') . 'c.') == '"' ? '<right>' : '""<left>'
inoremap <expr> ' matchstr(getline('.'), '\%' . col('.') . 'c.') == "'" ? '<right>' : "''<left>"


" Surround highlighted with token
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>
vnoremap <leader>( <esc>`<i(<esc>`>la)<esc>
"vnoremap <leader>[ <esc>`<i[<esc>`>la]<esc>
vnoremap <leader>{ <esc>`<i{<esc>`>la}<esc>
vnoremap <leader>< <esc>`<i<<esc>`>la><esc>

" Move pane
nnoremap <silent> <leader>h <c-w>H
nnoremap <silent> <leader>l <c-w>L
nnoremap <silent> <leader>k <c-w>K
nnoremap <silent> <leader>j <c-w>J

" Split window
nnoremap <leader>s <c-w>s
nnoremap <leader>v <c-w>v
 
" Resize window
nnoremap <silent> <leader>< 10<c-w><
nnoremap <silent> <leader>> 10<c-w>>
nnoremap <silent> <leader>+ 10<c-w>+
nnoremap <silent> <leader>- 10<c-w>-

" Move between windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h

" Quickfix mappings
nnoremap ]l :lnext<cr>
nnoremap [l :lprevious<cr>
nnoremap <leader>lo :lopen<cr>
nnoremap <leader>lc :lclose<cr>
nnoremap ]c :cnext<cr>
nnoremap [c :cprevious<cr>
nnoremap <leader>co :copen<cr>
nnoremap <leader>cc :cclose<cr>

" Notes mappings
nnoremap <leader>nn :NewNote 
nnoremap <leader>ns :SearchNotes <cr>
nnoremap <leader>nt :SearchNotesByTag <cr>
nnoremap <leader>nl :LinkNote <cr>


