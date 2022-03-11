if fn.empty(fn.glob(install_path)) > 0 then
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
end

vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])

return require('packer').startup(function()
    use {'wbthomason/packer.nvim'}
    use {
        'williamboman/nvim-lsp-installer',
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
        ft = {'sh'},
        config = [[require'config.lint']]
    }
    use {
        'hrsh7th/nvim-cmp',
        config = [[require'config.cmp']],
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-nvim-lua',
        }
    }
    use {
        'ibhagwan/fzf-lua',
        requires = {
            'vijaymarupudi/nvim-fzf', 
            {
                'junegunn/fzf', 
                run = './install --bin'
            }
        },
        config = [[require'config.fzf']]
    }
    use {
        'arcticicestudio/nord-vim',
        config = [[require'config.nord']]
    }
    use {
        'preservim/vim-pencil',
        ft = {'markdown', 'norg'},
        config = [[require'config.pencil']]
    }
    use {
        'junegunn/goyo.vim',
        cmd = 'Goyo'
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
        'vhyrro/neorg',
        requires = 'nvim-lua/plenary.nvim',
        config = [[require'config.neorg']]
    }
    use {
        'ledger/vim-ledger',
        ft = {'ledger'}
    }
    use {
        'm-pilia/vim-ccls',
        requires = 'neovim/nvim-lspconfig'
    }
end)
