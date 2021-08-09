if fn.empty(fn.glob(install_path)) > 0 then
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
end

vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])

return require('packer').startup(function()
    use {'wbthomason/packer.nvim'}
    use {
        'kabouzeid/nvim-lspinstall',
        requires = 'neovim/nvim-lspconfig'
    }
    use {
        'neovim/nvim-lspconfig',
        config = [[require'config.lsp']]
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        config = [[require'config.treesitter']]
    }
    use {
        'mfussenegger/nvim-lint',
        ft = {'sh', 'vim'},
        config = [[require'config.lint']]
    }
    use {
        'hrsh7th/nvim-compe',
        config = [[require'config.compe']]
    }
    use {
        'ibhagwan/fzf-lua',
        requires = 'vijaymarupudi/nvim-fzf'
    }
    use {
        'hrsh7th/vim-vsnip',
        disable = true,
        config = [[require'config.vsnip']]
    }
    use {
        'arcticicestudio/nord-vim',
        config = [[require'config.nord']]
    }
    use {
        'preservim/vim-pencil',
        ft = {'markdown'},
        config = [[require'config.pencil']]
    }
    use {
        'junegunn/goyo.vim',
        cmd = 'Goyo'
    }
    use {
        'junegunn/fzf.vim',
        config = [[require'config.fzf']]
    }
    use {
        'christoomey/vim-tmux-navigator' ,
        cond = 'vim.env.TMUX'
    }
    use {
        'lervag/vimtex',
        ft = {'tex'},
        config = [[require'config.vimtex']]
    }
    use {
        'L3MON4D3/LuaSnip',
        config = [[require'config.luasnip']]
    }
    use {
        'dfangx/friendly-snippets'
    }
    use {
        'habamax/vim-godot',
        ft = {'gdscript', 'gdresource'},
        config = [[require'config.godot']]
    }
    use {
        'plasticboy/vim-markdown',
        config = [[require'config.markdown']]
    }
    use {
        'vhyrro/neorg'
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/plenary.nvim', 'nvim-lua/popup.nvim'},
        config = [[require'config.telescope']],
        cmd = 'Telescope'
    }
end)
