require('lint').linters_by_ft = { sh = {'shellcheck'}, vim = {'vint'} };
vim.cmd[[
augroup Lint
autocmd BufEnter,BufWritePost,TextChanged <buffer> lua require('lint').try_lint()
augroup END
]];

