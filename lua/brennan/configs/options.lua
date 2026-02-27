-- This file is automatically loaded by plugins.core

local opt = vim.opt

opt.cursorline = true
opt.cursorlineopt = "number"
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true
opt.inccommand = "nosplit"
opt.jumpoptions = "view"
opt.mouse = ""
opt.number = true
opt.relativenumber = true
opt.ruler = false
opt.spelllang = { "en" }
opt.termguicolors = true
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200
opt.virtualedit = "block"
opt.wildmode = "longest:full,full"
opt.winminwidth = 5
-- opt.wrap = true
opt.linebreak = true
opt.shortmess:append("I")
opt.linespace = 3
opt.fillchars:append({ fold = " " })
opt.mousemev = true

opt.nu = true
opt.autoindent = true
opt.smartindent = true
opt.expandtab = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.sidescrolloff = 30
opt.signcolumn = "yes"
opt.isfname:append("@-@")

vim.diagnostic.config {
  virtual_text = true,
  signs = false,
  underline = true,
}
vim.diagnostic.hide()

opt.showmode = false
vim.g.undotree_WindowLayout = 3
vim.g.undotree_SplitWidth = 35
opt.numberwidth = 1
opt.colorcolumn = "110"
opt.laststatus = 3

