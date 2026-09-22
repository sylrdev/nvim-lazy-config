local setKeymap = vim.keymap.set
local cmd = vim.cmd

vim.g.mapleader = " "
vim.g.maplocalleader = " "

setKeymap("n", "<leader>q", cmd.q)
setKeymap("n", "<leader>Q", cmd.qa)
setKeymap("n", "<leader>w", cmd.w)
setKeymap("n", "<esc>", cmd.nohlsearch)
setKeymap("n", "<leader>tc", cmd.tabnew)
setKeymap("n", "<leader>tq", cmd.tabclose)
setKeymap("n", "<leader>tn", cmd.tabnext)
setKeymap("n", "<leader>tp", cmd.tabprevious)
