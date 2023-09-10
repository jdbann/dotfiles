-- Keybindings
-- Must set leader before initializing any plugins.
vim.api.nvim_set_keymap("", "<space>", "<nop>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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
        gitsigns = true,
        neogit = true,
        telescope = { enabled = true },
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
    opts = {
      kind = "split",
    },
    keys = {
      { "<leader>g", "<cmd>Neogit<cr>", mode = "n", desc = "Open Neogit" },
    },
  },

  {
    "lewis6991/gitsigns.nvim",
    config = true,
  },

  {
    "neovim/nvim-lspconfig",
  },

  {
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
  },
})

require("lsp")

-- Options
vim.cmd.colorscheme "catppuccin"
vim.o.background = "dark"
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.termguicolors = true
vim.wo.number = true

require("commander").add({
  {
    desc = "Focus window below",
    cmd = "<c-w><c-j>",
    keys = { "n", "<c-j>" },
  },
  {
    desc = "Focus window above",
    cmd = "<c-w><c-k>",
    keys = { "n", "<c-k>" },
  },
  {
    desc = "Focus window left",
    cmd = "<c-w><c-h>",
    keys = { "n", "<c-h>" },
  },
  {
    desc = "Focus window right",
    cmd = "<c-w><c-l>",
    keys = { "n", "<c-l>" },
  },
})
