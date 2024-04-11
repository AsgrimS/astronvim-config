---@type LazySpec
return {
  {
    "zbirenbaum/copilot.lua",
    enabled = true,
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        yaml = true,
      },
    },
  },

  {
    "nvim-cmp",
    dependencies = {
      {
        "zbirenbaum/copilot-cmp",
        opts = {},
      },
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require "cmp"
      local lspkind = require "lspkind"
      local api = vim.api

      ---@diagnostic disable-next-line: missing-parameter
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "copilot" } }))
      lspkind.init {
        symbol_map = {
          Copilot = " ",
        },
      }
      api.nvim_set_hl(0, "CmpItemKindCopilot", { fg = "#E06C75" })
    end,
  },
}
