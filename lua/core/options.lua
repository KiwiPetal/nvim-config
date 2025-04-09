local opt = vim.opt

if vim.g.neovide then
  vim.o.guifont = "Victor Mono:h14"
  vim.g.neovide_refresh_rate = 120
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_floating_blur_amount_x = 14.0
  vim.g.neovide_floating_blur_amount_y = 14.0
  vim.g.neovide_floating_corner_radius = 0.4
  vim.keymap.set('i', '<D-v>', '<C-R>+') -- Paste insert mode

  -- Font adjustment functionality
  local guifontsize = 14          -- Starting with size 14 as per your current setting
  local guifont = "Victor\\ Mono" -- Using Victor Mono as per your current setting

  local function AdjustFontSize(amount)
    guifontsize = guifontsize + amount
    vim.o.guifont = guifont .. ":h" .. guifontsize
  end

  -- You can add keymaps to adjust font size, for example:
  vim.keymap.set('n', '<C-=>', function() AdjustFontSize(1) end, { noremap = true, silent = true })
  vim.keymap.set('n', '<C-->', function() AdjustFontSize(-1) end, { noremap = true, silent = true })
end

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- ColorScheme Command
-- vim.api.nvim_create_autocmd("ColorScheme", {
--     pattern = "*",
--     callback = function()
--         package.loaded["feline"] = nil
--         package.loaded["catppuccin.groups.integrations.feline"] = nil
--         require("feline").setup {
--             components = require("catppuccin.groups.integrations.feline").get(),
--         }
--     end,
-- })

-- GLOBAL
opt.ttyfast = true
opt.termguicolors = true
opt.iskeyword:append("-")
opt.clipboard:append("unnamedplus")
opt.backspace = "indent,eol,start"

-- DIAGNOSTICS
vim.diagnostic.config({
  virtual_text = false,
})

-- WINDOW
opt.number = true
opt.relativenumber = true
opt.cc = "0"
opt.wrap = true
opt.breakindent = true
-- opt.showbreak = "↪"
opt.linebreak = true

-- FOLDS
opt.foldenable = true
opt.foldmethod = "marker"
-- opt.foldmethod = "expr"
-- opt.foldexpr = "nvim_treesitter#foldexpr()"
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
