return { 
  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
    config = true,
  },
  {
    "nvim-lua/plenary.nvim",
    priority = 900,
    lazy = true,
  },
  {
    "kyazdani42/nvim-web-devicons",
    lazy = true,
  },
  { 
    'stevearc/dressing.nvim',
    opts = {  }
  }
}
