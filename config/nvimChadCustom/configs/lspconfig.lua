local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
capabilities.offsetEncoding = { "utf-16" } -- this is the default

vim.cmd([[autocmd FileType handlebars setlocal filetype=html]])

-- if you just want default config for the servers then put them in a table
local servers = {
	"cssls",
	"tsserver",
	"tailwindcss",
  "html",
	"bashls",
	"svelte",
	"jsonls",
	"clangd",
	"intelephense",
  "emmet_ls",
	"ember",
	"volar",
	"cmake",
	"prismals",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

lspconfig.eslint.setup({
	capabilities = capabilities,
	on_attach = function(client, bufnr)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			command = "EslintFixAll",
		})
	end,
})


