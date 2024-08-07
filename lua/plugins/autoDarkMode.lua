local setup, autoDarkMode = pcall(require, "auto-dark-mode")
if not setup then
  return
end

autoDarkMode.setup({
	update_interval = 1000,
	set_dark_mode = function()
		vim.api.nvim_set_option_value('background', 'dark', {})
		vim.cmd('colorscheme melange')
	end,
	set_light_mode = function()
		vim.api.nvim_set_option_value('background', 'light', {})
		vim.cmd('colorscheme tokyonight-day')
	end,
})

