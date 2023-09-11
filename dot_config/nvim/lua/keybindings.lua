local wk = require("which-key")

wk.register({
  name = "window",
  ["<c-j>"] = { "<c-w><c-j>", "Focus window below" },
  ["<c-k>"] = { "<c-w><c-k>", "Focus window above" },
  ["<c-h>"] = { "<c-w><c-h>", "Focus window left" },
  ["<c-l>"] = { "<c-w><c-l>", "Focus window below" },
})
