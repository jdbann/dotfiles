return {
  "FeiyouG/commander.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  keys = {
    { "<leader>c", "<cmd>Telescope commander<cr>", mode = "n", desc = "Open Commander" },
  },
  opts = {
    components = {
      "DESC",
      "KEYS",
      "CMD",
    },
    sort_by = {
      "DESC",
      "KEYS",
      "CAT",
      "CMD"
    },
    integration = {
      telescope = { enable = true },
      lazy = { enable = true },
    }
  },
}
