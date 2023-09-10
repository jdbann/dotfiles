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
