-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- s key in normal saves
vim.keymap.set("n", "s", "<cmd>write<CR>", {
  noremap = true,
  desc = "Save current file",
})
