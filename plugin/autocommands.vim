if has('nvim')
    augroup lsp
        autocmd!
        autocmd BufWrite,BufEnter,InsertLeave * :lua vim.diagnostic.setloclist({open = false})
    augroup END
endif


augroup vimStart
    autocmd!
    autocmd VimResized * wincmd =
augroup END

augroup notes
    autocmd!
    autocmd BufWritePost ~/notes/** :silent !gen_tags
augroup END
