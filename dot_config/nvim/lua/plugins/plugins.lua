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

  {
    "aserowy/tmux.nvim",
    keys = {
      { "<c-h>", [[<cmd>lua require("tmux").move_left()<cr>]], "n", desc = "Go to left window" },
      { "<c-j>", [[<cmd>lua require("tmux").move_bottom()<cr>]], "n", desc = "Go to lower window" },
      { "<c-k>", [[<cmd>lua require("tmux").move_top()<cr>]], "n", desc = "Go to upper window" },
      { "<c-l>", [[<cmd>lua require("tmux").move_right()<cr>]], "n", desc = "Go to right window" },
      { "<a-left>", [[<cmd>lua require("tmux").resize_left()<cr>]], "n", desc = "Decrease window width" },
      { "<a-down>", [[<cmd>lua require("tmux").resize_bottom()<cr>]], "n", desc = "Decrease window height" },
      { "<a-up>", [[<cmd>lua require("tmux").resize_top()<cr>]], "n", desc = "Increase window height" },
      { "<a-right>", [[<cmd>lua require("tmux").resize_right()<cr>]], "n", desc = "Increase window width" },
    },
    opts = {
      navigation = {
        enable_default_keybindings = false,
      },
      resize = {
        enable_default_keybindings = false,
        resize_step_x = 2,
        resize_step_y = 2,
      },
    },
  },
}
