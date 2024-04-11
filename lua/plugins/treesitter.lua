---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      "vim",
      "python",
      "javascript",
      "typescript",
      "tsx",
      "svelte",
      "rust",
      "json",
      "html",
      "css",
      "scss",
      "yaml",
      "prisma",
      "toml",
      "jsdoc",
      "sql",
      "csv",
    })
  end,
}
