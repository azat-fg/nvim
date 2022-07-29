local options = {
  backup = false,
  clipboard = "unnamedplus",
  cmdheight = 1,
  completeopt = { "menu", "menuone", "noselect" },
  conceallevel = 0,
  colorcolumn = "120",
  fileencoding = "utf-8",
  hidden = true,
  pumheight = 10,
  showmode = false,
  softtabstop = 2,
  showtabline = 0,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  termguicolors = true,
  timeoutlen = 400,
  undofile = true,
  updatetime = 300,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  cursorline = true,
  number = true,
  laststatus = 3,
  showcmd = true,
  ruler = false,
  relativenumber = true,
  numberwidth = 4,
  signcolumn = "yes",
  wrap = false,
  scrolloff = 8,
  sidescrolloff = 8,
}
vim.opt.fillchars = vim.opt.fillchars + 'eob: '

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end
