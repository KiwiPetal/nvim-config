local setup, catppuccin = pcall(require, "catppuccin")
if not setup then
  return
end

catppuccin.setup({
  transparent_background = true,
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
    telescope = {
      enabled = true
    },
    notify = false,
    coc_nvim = true,
    mini = {
        enabled = true,
        indentscope_color = "",
    },
  }
})

