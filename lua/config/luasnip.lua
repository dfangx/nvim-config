local opts = {
    silent = true,
}

inoremap('<c-j>', [[<cmd>lua require'luasnip'.jump(1)<cr>]], opts)
inoremap('<c-k>', [[<cmd>lua require'luasnip'.jump(-1)<cr>]], opts)

snoremap('<c-j>', [[<cmd>lua require'luasnip'.jump(1)<cr>]], opts)
snoremap('<c-k>', [[<cmd>lua require'luasnip'.jump(-1)<cr>]], opts)

local ls = require"luasnip"
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node

date = function() return {os.date('%Y-%m-%d')} end
ls.snippets = {
    all = {
        s({
            trig = "date",
            namr = "Date",
            dscr = "Date in the form of YYY-MM-DD"
        },
        {
            f(date, {})
        })
    },
    markdown = {
        s({
            trig = "meta",
            namr = "Metadata",
            dscr = "Yaml metadata format for markdown"
        },
        {
            t({"---",
            "title: "}), i(1, "note_title"), t({"", 
            "author: "}), i(2, "author"), t({"", 
            "date: "}), f(date, {}), t({"",
            "lastmod: "}), f(date, {}), t({"",
            "tags: ["}), i(3), t({"]",
            "---", ""}),
            i(0)
        }),
    }
}

require'luasnip.loaders.from_vscode'.lazy_load()
