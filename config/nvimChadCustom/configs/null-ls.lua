local present, null_ls = pcall(require, "null-ls")

if not present then
	return
end

local b = null_ls.builtins

local sources = {

	-- webdev stuff
	b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
	b.formatting.prettier.with({ filetypes = { "html", "markdown", "css", "svelte", "vue" } }),
	b.formatting.eslint_d.with({ filetypes = { "typescript", "javascript" } }),
	-- Prisma
	b.formatting.prismaFmt,

	-- Hbs
	b.formatting.djlint.with({ filetypes = { "handlebars", "hbs" } }),
	-- Lua
	b.formatting.stylua,

	-- cpp
	b.formatting.clang_format,
	-- b.diagnostics.cpplint.with({ args = { "--filter=-legal", "$FILENAME" } }),

	-- Rust
	b.formatting.rustfmt.with({ extra_args = { "--edition=2021" } }),
}

null_ls.setup({
	debug = true,
	sources = sources,
})
