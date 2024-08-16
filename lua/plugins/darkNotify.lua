local setup, darkNotify = pcall(require, "dark_notify")
if not setup then
  return
end

darkNotify.run({
  schemes = {
      -- you can use a different colorscheme for each
      dark = { 
        colorscheme = "catppuccin-mocha",
        background = "dark"
      },
      light = {
        colorscheme = "catppuccin-latte",
        background = "light",
      }
    },
    onchange = function(mode)
    end,
})

