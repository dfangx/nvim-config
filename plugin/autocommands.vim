if has('nvim')
    augroup lsp
        autocmd!
        autocmd BufWrite,BufEnter,InsertLeave * :lua vim.lsp.diagnostic.set_loclist({open = false})
    augroup END
endif


augroup vimStart
    autocmd!
    autocmd VimResized * wincmd =
augroup END

