local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({search = vim.fn.input("Grep > ") });
end)
vim.api.nvim_set_keymap('n', '<leader>b', ':Telescope buffers<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fw', function()
    builtin.grep_string({search = vim.fn.expand('<cword>')})
end, { desc = 'Search word under cursor' })
