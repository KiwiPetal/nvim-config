  -- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  --use 'nvim-lue/plenary.nvim'
  use 'neovim/nvim-lspconfig'
  use 'tpope/vim-repeat'
  require'lspconfig'.pyright.setup{}
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'neoclide/coc.nvim', branch = 'release'
  }
  --use {
  --  'prettier/vim-prettier', run = 'yarn install'
  --}
  use 'sbdchd/neoformat'
  use 'numToStr/Comment.nvim'
  use {
    'nvim-treesitter/nvim-treesitter', {run = ":TSUpdate"}
  }
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'ThePrimeagen/vim-be-good'
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use 'lukas-reineke/indent-blankline.nvim'
  use 'uga-rosa/ccc.nvim'
  use 'p00f/nvim-ts-rainbow'
--  use "vim-airline/vim-airline"
--  use "vim-airline/vim-airline-themes"
  use "kyazdani42/nvim-web-devicons"
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
  use("petertriho/nvim-scrollbar")
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  require("nvim-tree").setup()
  use 'folke/tokyonight.nvim'
  require("scrollbar").setup()
  require("tokyonight").setup({
    -- your configuration comes here
    -- or leave it empty to use the default settings
    style = "day", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
    light_style = "day", -- The theme is used when the background is set to light
    transparent = true, -- Enable this to disable setting the background color
    terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
    styles = {
      -- Style to be applied to different syntax groups
      -- Value is any valid attr-list value for `:help nvim_set_hl`
      comments = { italic = true },
      keywords = { italic = true },
      functions = {},
      variables = {},
      -- Background styles. Can be "dark", "transparent" or "normal"
      sidebars = "dark", -- style for sidebars, see below
      floats = "dark", -- style for floating windows
    },
    sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
    day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
    hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
    dim_inactive = false, -- dims inactive windows
    lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

    --- You can override specific color groups to use other groups or a hex color
    --- function will be called with a ColorScheme table
    ---@param colors ColorScheme
    on_colors = function(colors) end,

    --- You can override specific highlights to use other groups or a hex color
    --- function will be called with a Highlights and ColorScheme table
    ---@param highlights Highlights
    ---@param colors ColorScheme
    on_highlights = function(highlights, colors) end,
  })
end)
