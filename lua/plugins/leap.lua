return {
  "ggandor/leap.nvim",
  opts = function()
    require('leap').create_default_mappings()
    vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
    vim.api.nvim_set_hl(0, 'LeapMatch', {
      fg = 'white',
      bold = true,
      nocombine = true,
    })
    -- Deprecated option. Try it without this setting first, you might find
    -- you don't even miss it.
    -- require('leap').opts.highlight_unlabeled_phase_one_targets = true
  end
}
