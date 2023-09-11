return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "macchiato",
      integrations = {
        cmp = true,
        gitsigns = true,
        neogit = true,
        nvimtree = true,
        telescope = { enabled = true },
        treesitter = true,
        which_key = true,
      },
    })

    vim.cmd.colorscheme "catppuccin"
  end,
}
