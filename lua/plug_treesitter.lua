return function() 
    require('nvim-treesitter.configs').setup {
        ensure_installed = { "c", "cpp", "lua", "javascript" },

        -- Enable syntax highlight module
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false
        },

        -- Enable incremental section
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = '<CR>',
                node_incremental = '<CR>',
                node_decremental = '<BS>',
                scope_incremantal = '<TAB>',
            }
        },
    }
end
