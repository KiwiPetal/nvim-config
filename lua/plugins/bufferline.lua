return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  keys = {
    { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin" },
    { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
    { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
    { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" },
    { "<leader>bq", "<Cmd>BufferLinePickClose<CR>", desc = "Interactive Buffer Deletion" },
    { "<leader>bb", "<Cmd>BufferLinePick<CR>", desc = "Interactive Buffer Deletion" },
    { "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    { "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    { "[B", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
    { "]B", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
  },
  config = function()
    local bufferline = require("bufferline")
    bufferline.setup({
      highlights = {
        fill = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "Normal" },
        },
      },
      options = {
        show_buffer_close_icons = false,
        separator_style = "thick",
        offsets = {
          {
            filetype = "NvimTree",
            text = "Directory Tree",
            highlight = "Directory",
            text_align = "center",
          },
        },
        show_close_icon = false,
      }
    })
  end
}
