local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local base = require "plugins.configs.lspconfig"
local on_attach = base.on_attach
local capabilities = base.capabilities

local mason_registry = require "mason-registry"
local vue_language_server_path = mason_registry.get_package("vue-language-server"):get_install_path()
  .. "/node_modules/@vue/language-server"

local markup_files = {
  "html",
  "css",
  "scss",
  "javascript",
  "javascriptreact",
  "typescript",
  "typescriptreact",
  "svelte",
  "vue",
  "astro",
}

local servers = {
  "gopls",
  "rust_analyzer",
  -- "pyright",
  -- "dartls",
  "svelte",
  "clangd",
  "astro",
  "intelephense",
  -- "lua_ls",
  "taplo", -- toml
  "cssls",
  -- "zls",
  "prismals",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    capabilities = capabilities,
    on_attach = on_attach,
  }
end

local function organize_imports(command)
  local params = {
    command = command,
    arguments = { vim.api.nvim_buf_get_name(0) },
  }
  vim.lsp.buf_request(0, "workspace/executeCommand", params)
end

lspconfig.emmet_language_server.setup {
  filetypes = {
    "css",
    "html",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    -- "svelte", -- svelte has its own language server
    -- "vue", -- same as vue
    "php",
    "astro",
  },
}

lspconfig.tailwindcss.setup {
  filetypes = markup_files,
  root_dir = lspconfig.util.root_pattern(
    "tailwind.config.js",
    "postcss.config.js",
    "tailwind.config.cjs",
    "tailwind.config.mjs"
  ),
}

-- lspconfig.cssls.setup({
-- 	filetypes = markup_files,
-- })
--

lspconfig.lua_ls.setup {
  filetypes = { "lua" },
  cmd = { "lua-language-server" },
}

-- lspconfig.eslint.setup({
-- 	filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "astro" },
-- })

lspconfig.elixirls.setup {
  cmd = { "elixir-ls" },
}

-- javascript
local ts_organize_imports_cmd = "_typescript.organizeImports"

lspconfig.tsserver.setup {
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
  commands = {
    OrganizeImports = {
      function()
        organize_imports(ts_organize_imports_cmd)
      end,
      description = "Organize Imports",
    },
  },
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = vue_language_server_path,
        languages = { "vue" },
      },
    },
  },
}

lspconfig.volar.setup {}
