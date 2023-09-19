return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
    opts = {},
    keys = {
      { "<leader>gg", [[<cmd>Neogit<cr>]], "n", desc = "Neogit" },
      { "<leader>gG", [[<cmd>Neogit<cr>]], "n", desc = "Neogit" },
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
