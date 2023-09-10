return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<c-p>", "<cmd>Telescope find_files<cr>", mode = "n", desc = "Search project files" },
    { "<leader>f", "<cmd>Telescope<cr>", mode = "n", desc = "Search Telescope built-in pickers" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", mode = "n", desc = "Search help tags" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", mode = "n", desc = "Search contents of project files" },
  },
}
