return {
  "kyazdani42/nvim-tree.lua",
  requires = "kyazdani42/nvim-web-devicons",
  wants = "nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").setup()

    require("nvim-tree").setup {
      hijack_cursor = true,
      view = {
        relativenumber = true,
        width = 30
      }
    }
  end
}
