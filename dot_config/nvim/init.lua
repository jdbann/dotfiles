-- Prepare neovim
require("bootstrap")
require("options")

-- Prepare plugins
require("lazy").setup("plugins")

-- Configure
require("keybindings")
require("lsp")
