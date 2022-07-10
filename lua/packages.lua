require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'morhetz/gruvbox'
  -- TreeSitter.
  use 'nvim-treesitter/nvim-treesitter'
  -- Helping indent lines.
  use 'lukas-reineke/indent-blankline.nvim'
  use { 'neoclide/coc.nvim', branch = 'release' }
  use 'jiangmiao/auto-pairs'
  use 'tpope/vim-surround'
  use 'fatih/vim-go'
  use 'preservim/tagbar'
  -- use 'neovim/nvim-lspconfig'
  --  use 'williamboman/nvim-lsp-installer'
  --  use 'hrsh7th/cmp-nvim-lsp'
  --  use 'hrsh7th/cmp-buffer'
  --  use 'hrsh7th/cmp-path'
  --  use 'hrsh7th/cmp-cmdline'
  --  use 'hrsh7th/nvim-cmp'
  --
  --  use 'hrsh7th/cmp-vsnip'
  --  use 'hrsh7th/vim-vsnip'
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
