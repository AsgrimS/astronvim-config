---@type LazySpec
return {
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function(_, opts)
      opts.floating_window = false
      opts.hint_prefix = "󰍻  "
      require("lsp_signature").setup(opts)
    end,
  },
}
