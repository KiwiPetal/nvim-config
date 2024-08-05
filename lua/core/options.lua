local opt = vim.opt

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- GLOBAL
opt.iskeyword:append("-")
opt.clipboard:append("unnamedplus")
opt.ttyfast = true
opt.backspace = "indent,eol,start"
opt.termguicolors = true
opt.background = "dark"

-- WINDOW
opt.number = true
opt.relativenumber = true
opt.cc = "0"
opt.linebreak = true
opt.wrap = false

-- FOLDS
opt.foldenable = true
-- TODO test below
opt.foldmethod = "marker"

-- CURSOR
opt.cursorline = true
opt.scrolloff = 6

-- TABS
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.autoindent = true
opt.expandtab = true

-- SEARCH
opt.showmatch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
opt.wildmode = "longest,list"

-- SPLITS
opt.splitright = true
opt.splitbelow = true
