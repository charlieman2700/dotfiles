local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
  autotag = {
    enable = true,
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.cmp = {

  sources = {
    { name = "nvim_lsp" ,max_item_count = 15 },
    { name = "luasnip" ,max_item_count = 4 },
    { name = "buffer" ,max_item_count = 2 },
    { name = "nvim_lua" ,max_item_count = 6 },
    { name = "path" ,max_item_count = 5 },

  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
