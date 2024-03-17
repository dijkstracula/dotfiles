local map = vim.api.nvim_set_keymap

local tsbuiltin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', tsbuiltin.find_files, {})
vim.keymap.set('n', '<leader>fg', tsbuiltin.live_grep, {})
vim.keymap.set('n', '<leader>fb', tsbuiltin.buffers, {})
vim.keymap.set('n', '<leader>fh', tsbuiltin.help_tags, {})

vim.keymap.set("n", "]g", vim.diagnostic.goto_next)
vim.keymap.set("n", "[g", vim.diagnostic.goto_prev)
