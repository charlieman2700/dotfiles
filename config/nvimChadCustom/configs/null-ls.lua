local present, null_ls = pcall(require, "null-ls")

if not present then
	return
end

local b = null_ls.builtins

local sources = {

	-- webdev stuff
	-- b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!

	b.formatting.rustywind.with({
		filetypes = { "html", "css", "scss", "svelte", "vue" },
	}),

	b.formatting.prettierd.with({
		filetypes = {
			"javascript",
			"typescript",
			"javascriptreact",
			"typescriptreact",
			"rust_analyzer",
			"html",
			"markdown",
			"css",
			"svelte",
			"vue",
		},
	}),

	-- EsLint

	-- Hbs
	b.formatting.djlint.with({ filetypes = { "handlebars", "hbs" }, extra_args = { "--indent", "2" } }),
	-- Lua
	b.formatting.stylua,

	b.formatting.gofmt,
	b.formatting.goimports_reviser,
	-- cpp
	b.formatting.clang_format,
	b.formatting.prismaFmt,

	b.formatting.phpcsfixer,
	-- b.diagnostics.cpplint.with({ args = { "--filter=-legal", "$FILENAME" } }),

	-- Rust
	b.formatting.rustfmt.with({ extra_args = { "--edition=2021" } }),
}

null_ls.setup({
	debug = true,
	sources = sources,
})
