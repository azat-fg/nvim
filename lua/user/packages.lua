require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'morhetz/gruvbox'
  use 'folke/tokyonight.nvim'
  -- Terminal
  use "akinsho/toggleterm.nvim"
  -- Surround
  use "tpope/vim-surround"
  -- TreeSitter.
  use 'nvim-treesitter/nvim-treesitter'
  -- Helping indent lines.
  use 'lukas-reineke/indent-blankline.nvim'
  use 'jiangmiao/auto-pairs'
  use 'fatih/vim-go'
  use 'preservim/tagbar'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
    -- cmp plugins
  use { "hrsh7th/nvim-cmp" }
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-emoji"
  use "hrsh7th/cmp-nvim-lua"
  use "zbirenbaum/copilot-cmp"
  use {
    "tzachar/cmp-tabnine",
    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
  }

  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use


  use 'ray-x/lsp_signature.nvim'
  -- Starting page module.
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require 'alpha'.setup(require 'alpha.themes.startify'.config)
      local startify = require("alpha.themes.startify")
      startify.section.bottom_buttons.val = {
        startify.button("e", "new file", ":ene <bar> startinsert <cr>"),
        startify.button("v", "neovim config", ":e ~/.config/nvim/init.lua<cr>"),
        startify.button("r", "edit zhrc", ":e ~/.zshrc<cr>"),
        startify.button("q", "quit nvim", ":qa<cr>"),
      }
      vim.api.nvim_set_keymap('n', '<c-n>', ':Alpha<cr>', { noremap = true })
    end
  }
end)
