return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
  },
  opts = {
    kind = "split",
  },
  keys = {
    { "<leader>g", "<cmd>Neogit<cr>", mode = "n", desc = "Open Neogit" },
  },
}
