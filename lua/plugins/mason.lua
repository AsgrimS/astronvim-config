if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE


---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        -- Lua
        "lua_ls",
        -- JavaScript + HTML + CSS
        "svelte",
        "tsserver",
        "eslint_d",
        "angularls",
        "cssls",
        "tailwindcss",
        "html",
        "prismals",
        -- Python
        "pylsp",
        -- JSON
        "jsonls",
        -- Rust
        "rust_analyzer",
        -- Bash
        "bashls",
        -- YAML
        "yamlls",
        -- TOML
        "taplo",
        -- Docker
        "dockerls",
        "docker_compose_language_service",
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        -- JavaScript + other
        "prettierd",
        --Lua
        "stylua",
        -- Bash
        "shfmt",
        -- SQL
        "sqlfluff",
        -- TOML
        "taplo",
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "python",
      })
    end,
  },
}
