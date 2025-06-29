return {
  'goolord/alpha-nvim',
  dependencies = { 'echasnovski/mini.icons' },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    local icons = require 'mini.icons'

    dashboard.section.header.opts.hl = "DashboardHeader"
    dashboard.section.header.val = {
      [[ ________    _________    ________    ___      ___ ]],
      [[|\   ____\  |\___   ___\ |\   __  \  |\  \    /  /|]],
      [[\ \  \___|_ \|___ \  \_| \ \  \|\  \ \ \  \  /  / /]],
      [[ \ \_____  \     \ \  \   \ \   _  _\ \ \  \/  / / ]],
      [[  \|_____\  \     \ \  \   \ \  \\  \  \ \    / /  ]],
      [[   |\________\     \ \__\   \ \__\\ _\  \ \__/ /   ]],
      [[   \|________|      \|__|    \|__|\|__|  \|__|/    ]]
    }

    dashboard.section.buttons.val = {
      dashboard.button( "t", "  Open Tree", ":NvimTreeToggle<CR>"),
      dashboard.button( "r", "  Recent files", ":Telescope oldfiles<CR>"),
      dashboard.button( "n", "  New file", ":ene <BAR> startinsert<CR>"),
      dashboard.button( "g", "  Open LazyGit", ":LazyGit<CR>"),
      dashboard.button( "q", "  Quit Neovim", ":q<CR>"),
    }

    local quotes = {
      '"Clippin\' wings of the angels...",\n— "I\'m a bad man" by Nine One One',
      '"Be mindful of your thoughts. They will betray you.",\n— Obi-Wan Kenobi, Star Wars',
      '"Come to me, Ifrit!",\n— Clive Rosfield, FFXIV',
      '"I\'m here to even the odds. Any objections?",\n— Cid, FFXIV ',
      '"I struggle to accept being a bug.",\n— Five Pebbles, Rain World',
      '"Hey Vergil, your portal-opening days are over!"\n— Dante, Devil May Cry',
    }
    local function randomQuote()
      local quoteId = math.random(1, #quotes)
      return quotes[quoteId]
    end
    dashboard.section.footer.opts.hl = "DashboardFooter"
    dashboard.section.footer.val = randomQuote()
    alpha.setup(dashboard.config)
  end
}
