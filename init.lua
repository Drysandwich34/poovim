--require("foo")

vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("n", "<leader>e", ":Explore<CR>")
vim.keymap.set("n", "<c-\\>", ":vsplit<CR>")
vim.keymap.set("n", "<C-t>", "<Cmd>ToggleTerm<CR>")
vim.keymap.set("i", "<C-t>", "<Cmd>ToggleTerm<CR>")
vim.keymap.set("t", "<C-t>", "<Cmd>ToggleTerm<CR>")

vim.opt.number = true
vim.opt.relativenumber = true

--vim.keymap.set("n", "<leader>p", ":lua potato()<CR>")

vim.cmd("colorscheme catppuccin")
require("config.lazy")
require("config.lsp")

--this is a test comment
