return {
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local conf = require("plugins.configs.cmp")
      local cmp = require("cmp")

      -- my preferred completions behavior
      conf.mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
      })
      conf.confirm_opts = {
        behavior = cmp.ConfirmBehavior.Replace,
        select = false,
      }

      return conf
    end
  }
}
