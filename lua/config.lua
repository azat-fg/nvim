vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true
vim.opt.scrolloff = 8
vim.cmd('set nu')
vim.cmd('set relativenumber')
vim.cmd('set nohlsearch')
vim.cmd('set hidden')
vim.cmd('set nowrap')
vim.cmd('set noswapfile')
vim.cmd('set nobackup')
vim.cmd('set undofile')
vim.cmd('set incsearch')
vim.cmd('set signcolumn=yes')
vim.cmd('set colorcolumn=120')
vim.opt.undodir = "~/.vim/undodir"
vim.opt.completeopt = { "menu", "menuone", "noselect" }

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

vim.opt.list = true
vim.opt.listchars:append("eol:↴")
require("indent_blankline").setup {
  show_end_of_line = true,
}
