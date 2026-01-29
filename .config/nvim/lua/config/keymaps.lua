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

-- remap jumps
vim.keymap.set("n", "<M-o>", "<C-o>", {
  noremap = true,
  silent = true,
  desc = "Jump back (Ctrl+o)",
})
vim.keymap.set("n", "<M-i>", "<C-i>", {
  noremap = true,
  silent = true,
  desc = "Jump back (Ctrl+o)",
})

-- dw → diw
vim.keymap.set("n", "vw", "viw", {
  noremap = true,
  silent = true,
  desc = "Select inner word",
})
vim.keymap.set("n", "yw", "yiw", {
  noremap = true,
  silent = true,
  desc = "yank inner word",
})
vim.keymap.set("n", "dw", "diw", {
  noremap = true,
  silent = true,
  desc = "Delete inner word",
})
vim.keymap.set("n", "cw", "ciw", {
  noremap = true,
  silent = true,
  desc = "Change inner word",
})

-- Alt+a → select all (ggVG)
vim.keymap.set("n", "<M-a>", "ggVG", {
  noremap = true,
  silent = true,
  desc = "Select all",
})
