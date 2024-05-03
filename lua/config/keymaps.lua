-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("v", "<C-c>", '"+y')
vim.keymap.set("n", "<leader>*", "<leader>sw", { desc = "Search for word", remap = true })

-- Rather use alt
vim.keymap.set("n", "<A-h>", "<C-w>h", { desc = "Go to left window", remap = true })
vim.keymap.set("n", "<A-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
vim.keymap.set("n", "<A-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
vim.keymap.set("n", "<A-l>", "<C-w>l", { desc = "Go to right window", remap = true })

vim.keymap.set("n", "<C-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<C-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<C-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<C-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<C-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<C-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Go to definition variants
vim.keymap.set("n", "<C-w>d", function() require("telescope.builtin").lsp_definitions({ reuse_win = true, jump_type = "vsplit" }) end)
