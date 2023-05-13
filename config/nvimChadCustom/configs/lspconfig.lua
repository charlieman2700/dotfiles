local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
capabilities.offsetEncoding = { "utf-16" } -- this is the default

-- if you just want default config for the servers then put them in a table
local servers = {
	"html",
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
	"volar",
	"cmake",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end
