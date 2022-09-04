-- This file define telescope plugin configurations

function telescope_keymapping()
    -- file about pickers
    vim.keymap.set('n', '<Leader>ff', [[<CMD>lua require('telescope.builtin').find_files()<CR>]])

    -- lsp about pickers
    vim.keymap.set('n', '<Leader>sr', [[<CMD>lua require('telescope.builtin').lsp_references()<CR>]])
    vim.keymap.set('n', '<Leader>si', [[<CMD>lua require('telescope.builtin').lsp_incoming_calls()<CR>]])
    vim.keymap.set('n', '<Leader>so', [[<CMD>lua require('telescope.builtin').lsp_outgoing_calls()<CR>]])
    vim.keymap.set('n', '<Leader>ss', [[<CMD>lua require('telescope.builtin').lsp_workspace_symbols()<CR>]])
    vim.keymap.set('n', '<Leader>gi', [[<CMD>lua require('telescope.builtin').lsp_implementations()<CR>]])
    vim.keymap.set('n', '<Leader>gd', [[<CMD>lua require('telescope.builtin').lsp_definitions()<CR>]])
end

return function()
    require('telescope').setup()
    telescope_keymapping()
end
