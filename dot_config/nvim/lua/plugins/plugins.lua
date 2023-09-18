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

  {
    "nvim-neotest/neotest",
    dependencies = {
      { "nvim-neotest/neotest-go" },
      { "nvim-neotest/neotest-jest" },
    },
    opts = {
      adapters = {
        "neotest-go",
        "neotest-jest",
      },
    },
  },

  {
    "folke/edgy.nvim",
    opts = function(_, opts)
      local function remove(tbl, func)
        local i = 1
        while i <= #tbl do
          if func(tbl[i]) then
            i = i + 1
          else
            table.remove(tbl, i)
          end
        end
      end

      remove(opts.left, function(window)
        return window.title == "Neo-Tree Git"
      end)
      remove(opts.left, function(window)
        return window.title == "Neo-Tree Buffers"
      end)
      remove(opts.left, function(window)
        return window.title == "Neotest Summary"
      end)

      return vim.tbl_deep_extend("force", opts, {
        animate = {
          enabled = false,
        },
        right = {
          { title = "Neotest Summary", ft = "neotest-summary", wo = { winfixwidth = false } },
        },
      })
    end,
  },
}