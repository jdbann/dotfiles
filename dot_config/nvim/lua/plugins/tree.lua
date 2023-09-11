return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>tt", "<cmd>NvimTreeFindFile<cr>", desc = "Open file explorer" },
    { "<leader>tq", "<cmd>NvimTreeClose<cr>", desc = "Close file explorer" },
  },
  opts = {
    view = {
      width = {
        min = 30,
        max = "20%",
      },
    },
    renderer = {
      full_name = true,
    },
  },
}
