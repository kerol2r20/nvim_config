return function()
    local cmp = require 'cmp'

    cmp.setup {
        snippet = {
            -- REQUIRED - you must specify a snippet engine
            expand = function (args)
                require('luasnip').lsp_expand(args.body) -- For 'luasnip' users
            end,
        },
        window = {
            -- completion = cmp.config.window.bordered(),
            -- documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert {
            ['<C-b>'] = cmp.mapping.scroll_docs(-4),
            ['<C-f>'] = cmp.mapping.scroll_docs(4),
            ['<C-space>'] = cmp.mapping.complete(),
            ['<C-e>'] = cmp.mapping.abort(),
            ['<CR>'] = cmp.mapping.confirm({ select = true }),
        },
        sources = cmp.config.sources({
            -- Group index 1
            { name = 'nvim_lsp' },
            { name = 'luasnip' },
        }, {
            -- Group index 2
            { name = 'buffer' }
        }),
        -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
        cmp.setup.cmdline('/', {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = 'buffer' }
            },
        }),

        -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
        cmp.setup.cmdline(':', {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({
                -- Group index 1
                { name = 'path' },
            },{
                -- Group index 2
                { name = 'cmdline' },
            })
        })
    }
end
