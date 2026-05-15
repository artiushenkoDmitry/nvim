vim.g.mapleader = " "
--vim.cmd("belowright split | resize 7 | terminal")        --setting terminal size on open

vim.keymap.set('n', '<C-s>', ':w<CR>', {})               --saving
vim.keymap.set('n', '<C-t>', ':below terminal<CR>', {})  --open terminal
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])             --switching from terminal mode to normal

--resize window
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>')
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>')
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>')


--workspaces creating and switching 
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>")
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>")
vim.keymap.set("n", "<leader>to", ":tabonly<CR>")
vim.keymap.set("n", "<S-l>", ":tabnext<CR>")
vim.keymap.set("n", "<S-h>", ":tabprevious<CR>")

--switching and closing tabs
vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<leader>bd", ":Bdelete<CR>")

vim.opt.termguicolors = true
vim.opt.mouse = "a"

vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
