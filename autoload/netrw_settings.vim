function! netrw_settings#OpenRight()
    :normal v
    let g:path=expand('%:p')
    :q!
    execute 'belowright vnew' g:path
    :normal <c-l>
endfunction

function! netrw_settings#OpenBelow()
    :normal v
    let path=expand('%:p')
    :q!
    execute 'belowright new' g:path
    :normal <c-l>
endfunction

