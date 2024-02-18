  -- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'tpope/vim-obsession'
  use 'fladson/vim-kitty'
  -- use {
  --   'rebelot/heirline.nvim',
  --   -- You can optionally lazy-load heirline on UiEnter
  --   -- to make sure all required plugins and colorschemes are loaded before setup
  --   -- event = "UiEnter",
  --   config = function()
  --       require("heirline").setup({})
  --   end
  -- }
  use {
    'christoomey/vim-tmux-navigator',
    lazy=false
  }
  -- use 'jiangmiao/auto-pairs'
  use 'NeogitOrg/neogit'
  use{
    'altermo/ultimate-autopair.nvim',
    event={'InsertEnter','CmdlineEnter'},
    branch='v0.6',
    config=function ()
        require('ultimate-autopair').setup({
                --Config goes here
                })
    end,
  }
 --  use {
	-- "windwp/nvim-autopairs",
 --    config = function() require("nvim-autopairs").setup {} end
 --  }
  use 'https://github.com/ryanoasis/vim-devicons'
  use {
    'prettier/vim-prettier', run = 'yarn install --frozen-lockfile --production'
  }
  use {
    'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'
  }
  -- use {
  --     'nvim-treesitter/nvim-treesitter',
  --     run = function()
  --         local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
  --         ts_update()
  --     end,
  -- }
  -- use 'nvim-treesitter/nvim-treesitter-context'
  --use 'nvim-lue/plenary.nvim'
  use 'neovim/nvim-lspconfig'
  use 'lambdalisue/suda.vim'
  use 'tpope/vim-repeat'
  use 'matveyt/neoclip'
  require'lspconfig'.pyright.setup{}
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'ggandor/leap.nvim'
  require('leap').add_default_mappings()
  use {
    'neoclide/coc.nvim', branch = 'release'
  }
  use {
    'brooth/far.vim'
  }
  --use {
  --  'prettier/vim-prettier', run = 'yarn install'
  --}
  use 'numToStr/Comment.nvim'
  use 'chentoast/marks.nvim'
  use 'ThePrimeagen/vim-be-good'
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use 'lukas-reineke/indent-blankline.nvim'
  use 'uga-rosa/ccc.nvim'
  use 'NvChad/nvim-colorizer.lua'
  -- use 'p00f/nvim-ts-rainbow'
  use "kyazdani42/nvim-web-devicons"
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  }
  use("petertriho/nvim-scrollbar")
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  -- use 'folke/tokyonight.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  require("neogit").setup();
  require("nvim-tree").setup()
  require("trouble").setup()
  require("Comment").setup()
  require("colorizer").setup()
  require("scrollbar").setup()
  require'marks'.setup {
    -- whether to map keybinds or not. default true
    default_mappings = true,
    -- which builtin marks to show. default {}
    builtin_marks = { ".", "<", ">", "^" },
    -- whether movements cycle back to the beginning/end of buffer. default true
    cyclic = true,
    -- whether the shada file is updated after modifying uppercase marks. default false
    force_write_shada = false,
    -- how often (in ms) to redraw signs/recompute mark positions. 
    -- higher values will have better performance but may cause visual lag, 
    -- while lower values may cause performance penalties. default 150.
    refresh_interval = 250,
    -- sign priorities for each type of mark - builtin marks, uppercase marks, lowercase
    -- marks, and bookmarks.
    -- can be either a table with all/none of the keys, or a single number, in which case
    -- the priority applies to all marks.
    -- default 10.
    sign_priority = { lower=10, upper=15, builtin=8, bookmark=20 },
    -- disables mark tracking for specific filetypes. default {}
    excluded_filetypes = {},
    -- marks.nvim allows you to configure up to 10 bookmark groups, each with its own
    -- sign/virttext. Bookmarks can be used to group together positions and quickly move
    -- across multiple buffers. default sign is '!@#$%^&*()' (from 0 to 9), and
    -- default virt_text is "".
    bookmark_0 = {
      sign = "⚑",
      virt_text = "hello world",
      -- explicitly prompt for a virtual line annotation when setting a bookmark from this group.
      -- defaults to false.
      annotate = false,
    },
    mappings = {}
}
  -- require("tokyonight").setup({
  --   -- your configuration comes here
  --   -- or leave it empty to use the default settings
  --   style = "day", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  --   light_style = "day", -- The theme is used when the background is set to light
  --   transparent = true, -- Enable this to disable setting the background color
  --   terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  --   styles = {
  --     -- Style to be applied to different syntax groups
  --     -- Value is any valid attr-list value for `:help nvim_set_hl`
  --     comments = { italic = true },
  --     keywords = { italic = true },
  --     functions = {},
  --     variables = {},
  --     -- Background styles. Can be "dark", "transparent" or "normal"
  --     sidebars = "dark", -- style for sidebars, see below
  --     floats = "dark", -- style for floating windows
  --   },
  --   sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  --   day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  --   hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  --   dim_inactive = false, -- dims inactive windows
  --   lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
  --
  --   --- You can override specific color groups to use other groups or a hex color
  --   --- function will be called with a ColorScheme table
  --   ---@param colors ColorScheme
  --   on_colors = function(colors) end,
  --
  --   --- You can override specific highlights to use other groups or a hex color
  --   --- function will be called with a Highlights and ColorScheme table
  --   ---@param highlights Highlights
  --   ---@param colors ColorScheme
  --   on_highlights = function(highlights, colors) end,
  -- })
end)
