-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-e>", vim.cmd.Ex)

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("n", "J", ":m .+1<CR>==")
vim.keymap.set("n", "K", ":m .-2<CR>==")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- smart-splits: seamless nvim split <-> tmux pane navigation/resizing
vim.keymap.set("n", "<C-h>", function() require("smart-splits").move_cursor_left() end, { desc = "Go to Left Window/Pane" })
vim.keymap.set("n", "<C-j>", function() require("smart-splits").move_cursor_down() end, { desc = "Go to Lower Window/Pane" })
vim.keymap.set("n", "<C-k>", function() require("smart-splits").move_cursor_up() end, { desc = "Go to Upper Window/Pane" })
vim.keymap.set("n", "<C-l>", function() require("smart-splits").move_cursor_right() end, { desc = "Go to Right Window/Pane" })

vim.keymap.set("n", "<C-Up>", function() require("smart-splits").resize_up() end, { desc = "Increase Window/Pane Height" })
vim.keymap.set("n", "<C-Down>", function() require("smart-splits").resize_down() end, { desc = "Decrease Window/Pane Height" })
vim.keymap.set("n", "<C-Left>", function() require("smart-splits").resize_left() end, { desc = "Decrease Window/Pane Width" })
vim.keymap.set("n", "<C-Right>", function() require("smart-splits").resize_right() end, { desc = "Increase Window/Pane Width" })
