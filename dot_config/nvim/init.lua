-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require("lazy").setup({
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "macchiato",
      integrations = {
        neogit = true,
        treesitter = true,
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "fish", "lua", "go", "javascript", "query", "typescript", "vim", "vimdoc" },
	sync_install = false,
        auto_install = false,
	highlight = { enable = true },
	indent = { enable = true },
      })
    end
  },

  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
    config = true,
    opts = {
      kind = "split",
    },
  },
})

-- Options
vim.cmd.colorscheme "catppuccin"

-- Keybindings
vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>Neogit<cr>", { noremap = true, silent = true })
