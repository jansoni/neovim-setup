
local map = vim.api.nvim_set_keymap



options = { noremap = true }

map('i', 'jk', '<Esc>', options)
map('n', '..', ':noh<cr>', options)


