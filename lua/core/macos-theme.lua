-- Time in milliseconds
local interval = 30000
local function run_periodically()
  local function job()
    local theme = vim.fn.system('defaults read -g AppleInterfaceStyle')

    if theme == 'Dark\n' then
      vim.opt.background = 'dark'
    else
      vim.opt.background = 'light'
    vim.defer_fn(job, interval)
    end
  end

  job()
end

-- Start the periodic task
vim.api.nvim_create_autocmd("VimEnter", {
  callback = run_periodically,
})
