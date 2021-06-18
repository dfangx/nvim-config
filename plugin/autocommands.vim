if has('nvim')
    augroup lsp
        autocmd!
        autocmd BufWrite,BufEnter,InsertLeave * :lua vim.lsp.diagnostic.set_loclist({open_loclist = false})
    augroup END
endif


augroup vimStart
    autocmd!
    autocmd VimResized * wincmd =
augroup END

