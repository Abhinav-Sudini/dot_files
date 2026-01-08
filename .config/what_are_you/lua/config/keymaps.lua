-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set({"n", "v"}, "j", "k", { noremap = true, silent = true })
-- vim.keymap.set({"n", "v"}, "k", "j", { noremap = true, silent = true })
vim.keymap.set("i", "<A-CR>", "^[", { noremap = true, silent = true })
local opts = { noremap = true, silent = true }

-- In insert mode
vim.keymap.set("i", "<A-h>", "<Left>", opts)
vim.keymap.set("i", "<A-j>", "<Down>", opts)
vim.keymap.set("i", "<A-k>", "<Up>", opts)
vim.keymap.set("i", "<A-l>", "<Right>", opts)

-- vim.keymap.set("n", "<Left>", "<fc>^Hj", opts)
-- vim.keymap.set("n", "<Right>", "<A-l>", opts)
vim.keymap.set("n", "<Down>", ":m .+1<CR>==", opts)
vim.keymap.set("n", "<Up>", ":m .-2<CR>==", opts)
