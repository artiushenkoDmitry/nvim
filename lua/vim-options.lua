vim.g.mapleader = " "
vim.cmd("belowright split | resize 15 | terminal")

vim.keymap.set('n', '<C-s>', ':w<CR>', {})
vim.keymap.set('n', '<C-t>', ':below terminal<CR>', {})
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

--resize window
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>')
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>')
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>')

vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
