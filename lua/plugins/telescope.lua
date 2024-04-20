---@type LazySpec
return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      opts.pickers = {
        oldfiles = {
          cwd_only = true,
        },
      }
      return opts
    end,
  },
}
