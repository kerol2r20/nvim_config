function clangd_setup()
    -- Binding nvim-cmp
    local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

    require('lspconfig').clangd.setup {
        -- capabilities = capabilities
    }
end

return function()
    clangd_setup()
end
