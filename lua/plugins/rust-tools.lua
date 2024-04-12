---@type LazySpec
return {
  "simrat39/rust-tools.nvim", -- add lsp plugin
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "rust_analyzer",
      })
    end,
  },
}
