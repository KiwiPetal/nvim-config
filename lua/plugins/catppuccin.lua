local setup, catppuccin = pcall(require, "catppuccin")
if not setup then
  return
end

catppuccin.setup({
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
    notify = false,
    coc_nvim = true,
    mini = {
        enabled = true,
        indentscope_color = "",
    },
  }
})

