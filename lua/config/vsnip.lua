g.vsnip_filetypes = {
    cpp = '["c"]'
}
-- g.vsnip_snippet_dir = fn.expand('~/.config/nvim/snippets/vsnip')

local opts = {
    expr = true
}

imap('<c-j>', [[vsnip#jumpable(1) ? '<plug>(vsnip-jump-next)' : '<c-j>']], opts)
smap('<c-j>', [[vsnip#jumpable(1) ? '<plug>(vsnip-jump-next)' : '<c-j>']], opts)
imap('<c-k>', [[vsnip#jumpable(-1) ? '<plug>(vsnip-jump-prev)' : '<c-k>']], opts)
smap('<c-k>', [[vsnip#jumpable(-1) ? '<plug>(vsnip-jump-prev)' : '<c-k>']], opts)
