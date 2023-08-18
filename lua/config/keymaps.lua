-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local keymap = vim.keymap

keymap.set("i", "jk", "<Esc>")
keymap.set("n", "ms", "viws")
keymap.set("n", "mx", "viwx")
keymap.set("n", "mv", "viw")
keymap.set({"v", "n"}, "qq", "<Esc>")
keymap.set("n", "<leader>j", "^")
keymap.set("n", "<leader>k", "$")

keymap.set("n", "<leader>dd", "<cmd>bdelete<cr>", {desc = "Delete buffer"})
keymap.set("n", "<C-t>", "<cmd>wa<cr><cmd>FloatermToggle<cr>", {desc = "floaterm toggle"})
keymap.set("t", "<C-t>", "<cmd>FloatermToggle<cr>", {desc = "floaterm toggle"})

keymap.set("v", "<leader>cc", require('osc52').copy_visual)

-- keymap.set("n", "<leader>d", "<cmd>BufferLineCloseLeft<cr>", {desc = "Delete buffer"})
--
--
