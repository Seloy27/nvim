-- This file is automatically loaded by plugins.core

local opt = vim.opt

opt.cursorline = true -- Enable highlighting of the current line
opt.cursorlineopt = "number"
opt.expandtab = true -- Use spaces instead of tabs
opt.foldlevel = 99
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true -- Ignore case
opt.inccommand = "nosplit" -- preview incremental substitute
opt.jumpoptions = "view"
opt.mouse = "a" -- Enable mouse mode
opt.number = true -- Print line number
opt.relativenumber = true -- Relative line numbers
opt.ruler = false -- Disable the default ruler
opt.shiftwidth = 2 -- Size of an indent
opt.spelllang = { "en" }
opt.tabstop = 2 -- Number of spaces tabs count for
opt.softtabstop = 2
opt.termguicolors = true -- True color support
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.winminwidth = 5 -- Minimum window width
opt.wrap = true
opt.linebreak = true
opt.shortmess:append("I")
opt.guicursor = "n-v-c:block,i-ci-ve:block"
opt.linespace = 3
opt.fillchars:append({ eob = " " }) -- Replaces ~ with space

opt.nu = true
opt.autoindent = true
opt.smartindent = true

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 5
opt.signcolumn = "yes"
opt.isfname:append("@-@")

vim.diagnostic.config {
  virtual_text = true,
  signs = false,
  underline = true,
}

opt.showmode = false
opt.laststatus = 3

vim.g.undotree_WindowLayout = 2
vim.g.undotree_SplitWidth = 35

