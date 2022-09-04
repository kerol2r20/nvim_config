-- plugins.lua
-- This file contain neovim plugin & their configurations

-- Only required if you have packer configured as ops
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer cam manage itself
    use 'wbthomason/packer.nvim'

    -- Code comment plugin
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Statusbar plugin
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = require('plug_lualine'),
    }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = require('plug_treesitter'),
    }

    -- LSP
    use {
        'neovim/nvim-lspconfig',
        config = require('plug_lsp'),
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = require('plug_telescope'),
    }

    -- File explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly',
        config = require('plug_nvim_tree')
    }

    -- Auto pair
    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup{} end
    }

    -- Color scheme
    -- use {
    --     'marko-cerovac/material.nvim',
    --     config = require('plug_material')
    -- }

    -- Git
    use {
        'lewis6991/gitsigns.nvim',
        config = require('plug_gitsigns')
    }
end)
 
