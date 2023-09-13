return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {},
  },

  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        separator_style = "slant",
        hover = {
          enabled = true,
          reveal = { "close" },
        },
      },
    },
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      vim.list_extend(opts.sources, {
        nls.builtins.diagnostics.golangci_lint,
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              analyses = {
                fieldalignment = false,
              },
            },
          },
        },
      },
    },
  },

  { "nvim-neotest/neotest-go" },
  { "nvim-neotest/neotest-jest" },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        "neotest-go",
        "neotest-jest",
      },
    },
  },
}
