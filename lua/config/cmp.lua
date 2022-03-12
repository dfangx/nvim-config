local cmp = require'cmp'
cmp.setup({
    snippet = {
        expand = function(args)
            require'luasnip'.lsp_expand(args.body)
        end
    },
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({select = false}),
        ['<TAB>'] = cmp.mapping.select_next_item(),
        ['<S-TAB>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'luasnip' },
        { name = 'nvim_lsp' },
        { name = 'path' },
        { name = 'note_tags'},
        { name = 'nvim_lua' },
        { name = "neorg" }
    }
})

cmp.setup.cmdline('/', {
    sources = {
        { name = 'buffer' }
    }
})

-- cmp.setup.cmdline(':', {
--     sources = cmp.config.sources({
--         { name = 'path' }
--     }, {
--         { name = 'cmdline' }
--     })
-- })
