require "keybindings"
require "packages"
require "config"
require "options"
require "alpha"

local configs = require 'nvim-treesitter.configs'
configs.setup {
  ensure_installed = { "lua", "json", "dockerfile", "bash", "yaml", "python", "go" },
  highlight = { -- enable highlighting
    enable = true,
  },
  indent = {
    enable = false, -- default is disabled anyways
  }
}
