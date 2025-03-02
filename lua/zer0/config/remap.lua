-- Leader key
vim.g.mapleader = " "

-- Netrw
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Moving blocks of text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Moving up and down on center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Listing on center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Pasting without it going in the clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Tabs
vim.keymap.set("n", "<C-t>", ":tabnew<Enter>")
vim.keymap.set("n", "<C-j>", ":tabprev<Enter>")
vim.keymap.set("n", "<C-k>", ":tabnext<Enter>")

-- Fix visual block weirdness (and saves my pinky)
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Remove this background process nonesense
vim.keymap.set({ "n", "i", "v" }, "<C-z>", "")
