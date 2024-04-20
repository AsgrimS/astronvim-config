---@type LazySpec
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.filesystem.filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          ".git",
        },
      }
      return opts
    end,
  },
}
