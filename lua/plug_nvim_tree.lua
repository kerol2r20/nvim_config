return function ()
    vim.keymap.set('n', '<F2>', [[<CMD>NvimTreeToggle<CR>]])
    require('nvim-tree').setup()
end
