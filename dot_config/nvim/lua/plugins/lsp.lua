return {
  {
    {
      "nvimtools/none-ls.nvim",
      optional = true,
      opts = function(_, opts)
        if type(opts.sources) == "table" then
          local nls = require("null-ls")
          vim.list_extend(opts.sources, {
            nls.builtins.diagnostics.golangci_lint,
          })
        end
      end,
    },

    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              analyses = {
                fieldalignment = false,
              },
            },
          },
        },
      },
    },
  },
}
