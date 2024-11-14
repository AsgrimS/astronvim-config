---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        -- JavaScript + HTML + CSS
        "eslint",
        "svelte",
        "ts_ls",
        "angularls",
        "cssls",
        "tailwindcss",
        "html",
        "prismals",
        -- Python
        -- "basedpyright", -- uncomment if not installed manually (e.g. NixOs)
        -- JSON
        "jsonls",
        -- Rust
        "rust_analyzer",
        -- Bash
        "bashls",
        -- YAML
        "yamlls",
        -- Docker
        "dockerls",
        "docker_compose_language_service",
        -- Nix
        "nil_ls",
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
        -- Bash
        "shfmt",
        -- SQL
        "sqlfluff",
        -- Nix
        "nixpkgs_fmt",
        -- Python
        "debugpy",
        -- "ruff", -- uncomment if not installed manually (e.g. NixOs)
      })

      opts.handlers = {
        prettierd = function()
          require("null-ls").register(require("null-ls").builtins.formatting.prettierd.with {
            condition = function(utils)
              return utils.root_has_file "package.json"
                or utils.root_has_file ".prettierrc"
                or utils.root_has_file ".prettierrc.json"
                or utils.root_has_file ".prettierrc.js"
            end,
          })
        end,
      }
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
