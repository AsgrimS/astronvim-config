return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {},
    keys = {
      {
        "<leader>tc",
        "<cmd>CopilotChatToggle<cr>",
        desc = "Toggle Copilot Chat",
      },
      {
        "<leader>c",
        "<cmd>CopilotChatToggle<cr>",
        desc = "Toggle Copilot Chat",
        mode = "v",
      },
    },
  },
}
