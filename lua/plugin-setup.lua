-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- add list of plugins to install
return packer.startup(function(use)
  -- packer can manage itself
  use("wbthomason/packer.nvim")

  -- Requirements
  use("nvim-lua/plenary.nvim") -- lua functions that many plugins use
  use 'stevearc/dressing.nvim'
  use "kyazdani42/nvim-web-devicons"

  use {
    'lukas-reineke/indent-blankline.nvim',
    config=function()
      require("ibl").setup()
    end
  }
  use 'tpope/vim-obsession'
  use 'pangloss/vim-javascript'
  use {
    'christoomey/vim-tmux-navigator',
    lazy=false
  }
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
  use 'lambdalisue/suda.vim'
  use 'tpope/vim-repeat'
  use 'ggandor/leap.nvim'
  use {
    'neoclide/coc.nvim', branch = 'release'
  }
  use {
    'brooth/far.vim'
  }
  use 'ThePrimeagen/vim-be-good'
  use 'nvim-treesitter/nvim-treesitter-context'
  -- use {
  --   'nvim-lualine/lualine.nvim',
  --   requires = {'kyazdani42/nvim-web-devicons', opt = true}
  -- }
  use 'feline-nvim/feline.nvim'
  use 'uga-rosa/ccc.nvim'
  use 'NvChad/nvim-colorizer.lua'
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  }
  use("petertriho/nvim-scrollbar")
  use {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons" ,
    wants = "nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup()

      require("nvim-tree").setup {
        hijack_cursor = true,
        view = {
          width = 25
        }
      }
    end
  }
  use 'f-person/auto-dark-mode.nvim'
  use 'cormacrelf/dark-notify'
  use 'folke/tokyonight.nvim'
  use "savq/melange-nvim"
  use { "catppuccin/nvim", as = "catppuccin" }

  use("szw/vim-maximizer") -- maximizes and restores current window

  -- essential plugins
  use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome)

  -- fuzzy finding w/ telescope
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

  -- managing & installing lsp servers, linters & formatters
  use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
  use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

  -- configuring lsp servers
  use("neovim/nvim-lspconfig") -- easily configure language servers
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  }) -- enhanced lsp uis
  use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
  use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

  -- auto closing
  use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
  use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

  -- git integration
  use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

  use "karb94/neoscroll.nvim"

  use({
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    requires = {
        "nvim-lua/plenary.nvim",
    },
  })

  if packer_bootstrap then
    require("packer").sync()
  end
end)
