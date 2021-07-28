require('utils')

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
    }
    use {
        'neovim/nvim-lspconfig',
        config = [[require'config.lsp']],
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
        config = [[require'config.vsnip']]
    }
    use {
        'arcticicestudio/nord-vim',
        config = [[require'config.nord']]
    }
    use {
        'SidOfc/mkdx',
        -- ft = {'markdown'},
        config = [[require'config.mkdx']]
        -- config = function() 
        --     vim.fn['plugins#SetupMkdx']()
        -- end
    }
    use {
        'preservim/vim-pencil',
        ft = {'markdown'},
        config = [[require'config.pencil']]
    }
    use {
        'junegunn/goyo.vim',
        ft = {'markdown'},
        config = [[vim.cmd(Goyo)]]
    }
    use {
        'junegunn/fzf.vim',
        config = [[require'config.fzf']]
    }
    use {
        'christoomey/vim-tmux-navigator' ,
        cond = 'vim.env.TMUX ~= nil'
    }
    use {
        'lervag/vimtex',
        ft = {'tex'},
        config = [[require'config.vimtex']]
    }
end)
