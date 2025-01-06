return {
  -- {
  --   'altermo/ultimate-autopair.nvim',
  --   event={'InsertEnter','CmdlineEnter'},
  --   branch='v0.6', --recommended as each new version will have breaking changes
  --   opts={
  --
  --   },
  -- },
  {
    'windwp/nvim-autopairs', event = "InsertEnter", config = true
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        keymaps = {
          visual = "<leader>s"
        }
      })
    end
  },
  {
    "windwp/nvim-ts-autotag",
    dependencies = { "windwp/nvim-autopairs" },
    lazy = false,
    opts = { }
  },
}
