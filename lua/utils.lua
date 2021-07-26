function imap(key, cmd, opts) 
    vim.api.nvim_set_keymap('i', key, cmd, opts);
end

function inoremap(key, cmd, opts) 
    opts.noremap = true;
    vim.api.nvim_set_keymap('i', key, cmd, opts)
end

function smap(key, cmd, opts) 
    vim.api.nvim_set_keymap('s', key, cmd, opts)
end

function snoremap(key, cmd, opts) 
    opts.noremap = true;
    vim.api.nvim_set_keymap('s', key, cmd, opts)
end

function nmap(key, cmd, opts) 
    vim.api.nvim_set_keymap('n', key, cmd, opts)
end

function nnoremap(key, cmd, opts) 
    opts.noremap = true;
    vim.api.nvim_set_keymap('n', key, cmd, opts)
end

function buf_nnoremap(key, cmd, opts) 
    opts.noremap = true;
    vim.api.nvim_buf_set_keymap(bufnr, 'n', key, cmd, opts)
end

execute = vim.api.nvim_command
fn = vim.fn
g = vim.g
o = vim.o
