return {
  -- lspconfig
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  -- Mason
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",

        -- "rust-analyzer",
        "taplo",
        --
        "gopls",
        --
        "tailwindcss-language-server",
        "emmet-language-server",
        "eslint-lsp",
        "eslint_d",
        "typescript-language-server",
        "svelte-language-server",
        "vue-language-server",
        "astro-language-server",
        --
        -- "clangd",

        -- "intelephense",

        "pyright",

        "json-lsp",

        -- formatters
        "prettierd",
        "stylua",
        "gofumpt",
        "golines",
        "goimports-reviser",
        "black",
      }
    }
  }
}
