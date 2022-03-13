execute = vim.api.nvim_command
fn = vim.fn
g = vim.g
o = vim.o
bo = vim.bo
wo = vim.wo

imap = function(key, cmd, opts) 
    vim.api.nvim_set_keymap('i', key, cmd, opts);
end

inoremap = function(key, cmd, opts) 
    opts.noremap = true;
    vim.api.nvim_set_keymap('i', key, cmd, opts)
end

smap = function(key, cmd, opts) 
    vim.api.nvim_set_keymap('s', key, cmd, opts)
end

snoremap = function(key, cmd, opts) 
    opts.noremap = true;
    vim.api.nvim_set_keymap('s', key, cmd, opts)
end

nmap = function(key, cmd, opts) 
    vim.api.nvim_set_keymap('n', key, cmd, opts)
end

nnoremap = function (key, cmd, opts) 
    opts.noremap = true;
    vim.api.nvim_set_keymap('n', key, cmd, opts)
end

buf_nnoremap = function(key, cmd, opts) 
    opts.noremap = true;
    vim.api.nvim_buf_set_keymap(0, 'n', key, cmd, opts)
end

setlocal = function(opt, val)
    vim.api.nvim_buf_set_option(0, opt, val)
end

set = function(opt, val)
    vim.api.nvim_set_option(opt, val)
end
