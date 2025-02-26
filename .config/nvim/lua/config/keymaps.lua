-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
-- local nomap = vim.keymap.del

-- Built in
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- nomap("n", "<leader>b")
-- nomap("n", "<leader>x")

-- navigation
-- map("n", "<leader>bb", function()
--   require("nvchad.tabufline").prev()
-- end, { desc = "Previous Tab" })
-- map("n", "<leader>bn", function()
--   require("nvchad.tabufline").next()
-- end, { desc = "Next Tab" })
-- map("n", "<leader>c", function()
--   require("nvchad.tabufline").close_buffer()
-- end, { desc = "Close current Buffer" })
map("n", "<leader>qq", "<CMD>qa!<CR>", { desc = "Force Quit" })
map("n", "<leader>qa", "<CMD>wqa<CR>", { desc = "Save & Quit" })

map("n", "<leader><Left>", "<C-w><Left>", { desc = "Focus Left Window" })
map("n", "<leader><Right>", "<C-w><Right>", { desc = "Focus Right Window" })
map("n", "<leader><Up>", "<C-w><Up>", { desc = "Focus Right Window" })
map("n", "<leader><Down>", "<C-w><Down>", { desc = "Focus Down Window" })

map("n", "<leader>gg", "<CMD>LazyGit<CR>", { desc = "Open LazyGit" })
map("n", "<leader>mm", "<CMD>MinimapToggle<CR>", { desc = "Minimap" })

map("n", "<leader>b<tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("n", "<leader>bn", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader>bc", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<leader>bb", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Functions
map({ "n", "v" }, "m", "/<CR>", { desc = "Next highlight" })
map({ "n", "v" }, "M", "?<CR>", { desc = "Previous highlight" })
map({ "n", "v" }, "n", "e", { desc = "Jump to end of word" })
map("n", "m", "/<CR>", { desc = "Jump to start of word" })
map({ "n", "v" }, "<leader>cg", "<CMD>Gen<CR>", { desc = "Codeium Gen" })

-- Manipulations
map({ "n", "v" }, "d", '"_d', { desc = "Delete" })
map({ "n", "v" }, "c", '"_c', { desc = "Edit selection" })
map({ "n", "v" }, "p", "P", { desc = "Paste" })
map("i", "<C-p>", "<ESC>PI", { desc = "Paste in insert mode" })

map("v", "<tab>", ">", { desc = "indent" })
map("v", "<S-tab>", "<", { desc = "unindent" })
map("n", "<tab>", ">>", { desc = "indent" })
map("n", "<S-tab>", "<<", { desc = "unindent" })

map("n", "<C-/>", "gcc", { desc = "toggle comment" })
map("v", "<C-/>", "gc", { desc = "toggle comment" })

-- changes
map("n", "<C-A-Down>", "<C-A-v><Down>", { desc = "" })
map("n", "<C-A-Up>", "<C-A-v><Up>", { desc = "" })
map("n", "<C-A-Left>", "<C-A-v><Left>", { desc = "" })
map("n", "<C-A-Right>", "<C-A-v><Right>", { desc = "" })

-- Nvide
if vim.g.neovide == true then
  map("n", "<leader>+", "<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>", { desc = "Scale Neovide Zoom in" })
  map("n", "<leader>-", "<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>", { desc = "Scale Neovide Zoom out" })
end
