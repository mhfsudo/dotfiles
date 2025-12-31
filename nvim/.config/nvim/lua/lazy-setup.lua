vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.conceallevel = 2 -- required for Obsidian

-- set leader key
vim.g.mapleader = " "
-- save with Control + s
vim.keymap.set("n", "<C-s>", ":w<CR>", {})
-- close with Control + w
vim.keymap.set("n", "<C-w>", ":q<CR>", {})
-- save and close with Control + q
vim.keymap.set("n", "<C-q>", ":wq<CR>", {})
-- switch between windows with Tab
vim.keymap.set("n", "<Tab>", "<C-w>w", { noremap = true, silent = true })

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
