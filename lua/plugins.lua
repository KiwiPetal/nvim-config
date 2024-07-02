  -- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'stevearc/dressing.nvim'
  use 'nvim-lua/plenary.nvim'
  use {
    'lukas-reineke/indent-blankline.nvim',
    config=function()
      require("ibl").setup()
    end
  }
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'tpope/vim-obsession'
  use 'fladson/vim-kitty'
  use 'pangloss/vim-javascript'
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
    'phaazon/mind.nvim',
    branch = 'v2.2',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require'mind'.setup()
    end
  }
  use {
    'prettier/vim-prettier', run = 'yarn install --frozen-lockfile --production'
  }
  use {
    'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'
  }
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end,
  }
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'neovim/nvim-lspconfig'
  use 'lambdalisue/suda.vim'
  use 'tpope/vim-repeat'
  use 'matveyt/neoclip'
  require'lspconfig'.pyright.setup{}
  use {
    'nvim-telescope/telescope.nvim',
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
  -- use {
  --   'anuvyklack/pretty-fold.nvim',
  --   config = function()
  --     require('pretty-fold').setup()
  --   end
  -- }
  use 'uga-rosa/ccc.nvim'
  use 'NvChad/nvim-colorizer.lua'
  -- use 'p00f/nvim-ts-rainbow'
  use "kyazdani42/nvim-web-devicons"
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  }
  use 'NeogitOrg/neogit'
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
  require("ccc").setup();
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
  require("dressing").setup({
    input = {
      -- Set to false to disable the vim.ui.input implementation
      enabled = true,

      -- Default prompt string
      default_prompt = "Input",

      -- Trim trailing `:` from prompt
      trim_prompt = true,

      -- Can be 'left', 'right', or 'center'
      title_pos = "left",

      -- When true, <Esc> will close the modal
      insert_only = true,

      -- When true, input will start in insert mode.
      start_in_insert = true,

      -- These are passed to nvim_open_win
      border = "rounded",
      -- 'editor' and 'win' will default to being centered
      relative = "cursor",

      -- These can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
      prefer_width = 40,
      width = nil,
      -- min_width and max_width can be a list of mixed types.
      -- min_width = {20, 0.2} means "the greater of 20 columns or 20% of total"
      max_width = { 140, 0.9 },
      min_width = { 20, 0.2 },

      buf_options = {},
      win_options = {
        -- Disable line wrapping
        wrap = false,
        -- Indicator for when text exceeds window
        list = true,
        listchars = "precedes:…,extends:…",
        -- Increase this for more context when text scrolls off the window
        sidescrolloff = 0,
      },

      -- Set to `false` to disable
      mappings = {
        n = {
          ["<Esc>"] = "Close",
          ["<CR>"] = "Confirm",
        },
        i = {
          ["<C-c>"] = "Close",
          ["<CR>"] = "Confirm",
          ["<Up>"] = "HistoryPrev",
          ["<Down>"] = "HistoryNext",
        },
      },

      override = function(conf)
        -- This is the config that will be passed to nvim_open_win.
        -- Change values here to customize the layout
        return conf
      end,

      -- see :help dressing_get_config
      get_config = nil,
    },
    select = {
      -- Set to false to disable the vim.ui.select implementation
      enabled = true,

      -- Priority list of preferred vim.select implementations
      backend = { "telescope", "fzf_lua", "fzf", "builtin", "nui" },

      -- Trim trailing `:` from prompt
      trim_prompt = true,

      -- Options for telescope selector
      -- These are passed into the telescope picker directly. Can be used like:
      -- telescope = require('telescope.themes').get_ivy({...})
      telescope = nil,

      -- Options for fzf selector
      fzf = {
        window = {
          width = 0.5,
          height = 0.4,
        },
      },

      -- Options for fzf-lua
      fzf_lua = {
        -- winopts = {
        --   height = 0.5,
        --   width = 0.5,
        -- },
      },

      -- Options for nui Menu
      nui = {
        position = "50%",
        size = nil,
        relative = "editor",
        border = {
          style = "rounded",
        },
        buf_options = {
          swapfile = false,
          filetype = "DressingSelect",
        },
        win_options = {
          winblend = 0,
        },
        max_width = 80,
        max_height = 40,
        min_width = 40,
        min_height = 10,
      },

      -- Options for built-in selector
      builtin = {
        -- Display numbers for options and set up keymaps
        show_numbers = true,
        -- These are passed to nvim_open_win
        border = "rounded",
        -- 'editor' and 'win' will default to being centered
        relative = "editor",

        buf_options = {},
        win_options = {
          cursorline = true,
          cursorlineopt = "both",
        },

        -- These can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
        -- the min_ and max_ options can be a list of mixed types.
        -- max_width = {140, 0.8} means "the lesser of 140 columns or 80% of total"
        width = nil,
        max_width = { 140, 0.8 },
        min_width = { 40, 0.2 },
        height = nil,
        max_height = 0.9,
        min_height = { 10, 0.2 },

        -- Set to `false` to disable
        mappings = {
          ["<Esc>"] = "Close",
          ["<C-c>"] = "Close",
          ["<CR>"] = "Confirm",
        },

        override = function(conf)
          -- This is the config that will be passed to nvim_open_win.
          -- Change values here to customize the layout
          return conf
        end,
      },

      -- Used to override format_item. See :help dressing-format
      format_item_override = {},

      -- see :help dressing_get_config
      get_config = nil,
    },
  })
end)
