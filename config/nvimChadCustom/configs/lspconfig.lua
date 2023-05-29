local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
capabilities.offsetEncoding = { "utf-16" } -- this is the default

-- vim.cmd([[autocmd FileType handlebars setlocal filetype=html]])


-- if you just want default config for the servers then put them in a table
local servers = {
	"cssls",
	"tsserver",
	"tailwindcss",
	"bashls",
	"emmet_ls",
	"svelte",
	"jsonls",
	"clangd",
	"eslint",
	"intelephense",
  "ember",
	"volar",
  "html",
	"cmake",
  "prismals"
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

-- lspconfig.html.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = { "handlebars", "html" },
--   init_options = {
--     configurationSection = { "html", "css", "javascript" },
--     embeddedLanguages = {
--       css = true,
--       javascript = true,
--     },
--   },
-- })
--
