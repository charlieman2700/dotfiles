-- local autocmd = vim.api.nvim_create_autocmd
--

vim.wo.wrap = false
vim.g.cmp_max_menu_items = 10
vim.keymap.set("n", "mm", "%", { desc = "Get matching symbol" })
vim.keymap.set("v", "mm", "%", { desc = "Get matching symbol" })

-- vim.api.nvim_command("set clipboard=")
vim.opt.clipboard = ""
vim.api.nvim_set_keymap("n", "<C-c>", '"+y', { noremap = true })
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true })
-- vim.opt.mouse = ""

-- Remap vertical movement
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down", noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up", noremap = true })

-- Remap search
vim.keymap.set("n", "n", "nzzzv", { desc = "Search down", noremap = true })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Search up", noremap = true })

-- Map redo
vim.keymap.set("n", "U", ":redo<CR>", { desc = "Redo" })

vim.api.nvim_set_keymap(
	"n",
	"<leader>ldf",
	"<cmd>lua vim.diagnostic.open_float()<CR>",
	{ noremap = true, silent = true, desc = "Float Diagnostic" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>lk",
	"<cmd>lua vim.diagnostic.goto_prev()<CR>",
	{ noremap = true, silent = true, desc = "Prev Diagnostic" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>lj",
	"<cmd>lua vim.diagnostic.goto_next()<CR>",
	{ noremap = true, silent = true, desc = "Next Diagnostic" }
)
-- The following command requires plug-ins "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", and optionally "kyazdani42/nvim-web-devicons" for icon support
vim.api.nvim_set_keymap("n", "<leader>dd", "<cmd>Telescope diagnostics<CR>", { noremap = true, silent = true })

vim.g.copilot_no_tab_map = true
vim.cmd([[imap <silent><script><expr> <C-A> copilot#Accept("\<CR>")]])
-- asdf

if vim.g.neovide then
	vim.g.neovide_input_use_logo = 1 -- enable use of the logo (cmd) key
	vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
	vim.keymap.set("v", "<D-c>", '"+y') -- Copy
	vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
	vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
	vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
	vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode

	-- This is a lua config, I want that after start nvim execute a command but after 5ms
	-- because I want to wait for the neovide to load
	-- The above is not running

	-- Define la función para cargar el dashboard

	vim.cmd("autocmd VimEnter * Nvdash")
	vim.cmd("autocmd VimEnter * Nvdash")
	vim.cmd("autocmd VimEnter * Nvdash")
	vim.cmd("autocmd VimEnter * Nvdash")
	vim.cmd("autocmd VimEnter * Nvdash")

	vim.g.neovide_padding_top = 2
	vim.g.neovide_padding_bottom = 2
	vim.g.neovide_padding_right = 2
	vim.g.neovide_padding_left = 2
	vim.o.guifont = "JetbrainsMono Nerd Font:h18" -- text below applies for VimScript

	vim.g.neovide_scale_factor = 1.0
	local change_scale_factor = function(delta)
		vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
	end
	vim.keymap.set("n", "<C-=>", function()
		change_scale_factor(1.25)
	end)
	vim.keymap.set("n", "<C-->", function()
		change_scale_factor(1 / 1.25)
	end)
end
