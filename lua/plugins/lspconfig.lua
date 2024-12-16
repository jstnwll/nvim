return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          -- INSERT LSPs HERE IN ALPHABETICAL ORDER
          "clangd",
          "html",
          "lua_ls",
          "pyright",
          "tailwindcss",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.clangd.setup {}
      lspconfig.html.setup {}
      lspconfig.lua_ls.setup {}
      lspconfig.pyright.setup {}
      lspconfig.tailwindcss.setup {}
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      require("mason-tool-installer").setup({
        ensure_installed = {
          -- INSERT DAPS, LINTERS, FORMATTERS HERE IN ALPHABETICAL ORDER
          "black",
          "clang-format",
          "mypy",
          "prettier",
          "ruff",
        },
      })
    end,
  },
}
