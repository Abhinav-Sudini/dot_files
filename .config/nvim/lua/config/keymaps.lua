-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- Normal mode
-- vim.keymap.set("n", "<Up>", ":m .-2<CR>==", { desc = "Move line up" })
-- vim.keymap.set("n", "<Down>", ":m .+1<CR>==", { desc = "Move line down" })

-- Normal mode
vim.keymap.set("n", "<Up>", function()
  vim.cmd("move -2")
  vim.cmd("normal! ==")
end, { desc = "Move line up" })

vim.keymap.set("n", "<Down>", function()
  vim.cmd("move +1")
  vim.cmd("normal! ==")
end, { desc = "Move line down" })
