-- local autocmd = vim.api.nvim_create_autocmd

vim.wo.wrap = false
vim.g.cmp_max_menu_items = 10
vim.keymap.set("n", "mm", "%", { desc = "Get matching symbol" })
vim.keymap.set("v", "mm", "%", { desc = "Get matching symbol" })

-- vim.api.nvim_command("set clipboard=")
vim.opt.clipboard = ""
vim.api.nvim_set_keymap('n', '<C-c>', '"+y', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true })
-- vim.opt.mouse = ""

-- Remap vertical movement
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down", noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up", noremap = true })

-- Remap search
vim.keymap.set("n", "n", "nzzzv", { desc = "Search down", noremap = true })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Search up", noremap = true })

-- Map redo
vim.keymap.set("n", "U", ":redo<CR>", { desc = "Redo" })

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
