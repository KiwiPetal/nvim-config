return {
  "KiwiPetal/oxocarbon.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme oxocarbon]])
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
  end,
  -- Add in any other configuration;
  --   event = foo,
  --   config = bar
  --   end,
}
