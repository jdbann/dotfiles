return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>tt", "<cmd>NvimTreeFindFileToggle<cr>", desc = "Toggle file explorer" },
    { "<leader>tf", "<cmd>NvimTreeFindFile<cr>", desc = "Open current file in file explorer" },
  },
  opts = {},
}
