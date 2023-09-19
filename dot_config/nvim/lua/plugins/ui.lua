return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        separator_style = "slant",
      },
    },
  },

  {
    "folke/edgy.nvim",
    opts = function(_, opts)
      local function remove(tbl, func)
        local i = 1
        while i <= #tbl do
          if func(tbl[i]) then
            i = i + 1
          else
            table.remove(tbl, i)
          end
        end
      end

      remove(opts.left, function(window)
        return window.title == "Neo-Tree Git"
      end)
      remove(opts.left, function(window)
        return window.title == "Neo-Tree Buffers"
      end)
      remove(opts.left, function(window)
        return window.title == "Neotest Summary"
      end)

      return vim.tbl_deep_extend("force", opts, {
        animate = {
          enabled = false,
        },
        right = {
          { title = "Neotest Summary", ft = "neotest-summary", wo = { winfixwidth = false } },
        },
      })
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        always_divide_middle = false,
      },
      sections = {
        lualine_a = { { "mode", separator = { left = "", right = "" }, right_padding = 2 } },
        lualine_z = {
          {
            function()
              return " " .. os.date("%R")
            end,
            separator = { left = "", right = "" },
            left_padding = 2,
          },
        },
      },
    },
  },
}
