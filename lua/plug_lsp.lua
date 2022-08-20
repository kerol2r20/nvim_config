function clangd_setup()
    require('lspconfig').clangd.setup {
    }
end

return function()
    clangd_setup()
end
