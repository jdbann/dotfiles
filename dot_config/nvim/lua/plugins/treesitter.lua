return {
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
}
