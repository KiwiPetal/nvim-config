-- Reserve a space in the gutter
vim.opt.signcolumn = 'yes'

local null_ls = require("null-ls")

require("mason").setup()

local capabilities = {
  textDocument = {
    foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true
    }
  }
}
capabilities = require('blink.cmp').get_lsp_capabilities(capabilities)

require("mason-lspconfig").setup({
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({
        capabilities = capabilities
      })
    end,
  },
})

-- cmp.setup({
--   completion = {
--     completeopt = "menu,menuone,preview,noselect",
--   },
--   snippet = {
--     expand = function(args)
--       vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
--     end,
--   },
--   mapping = cmp.mapping.preset.insert({
--     ['<C-b>'] = cmp.mapping.scroll_docs(-4),
--     ['<C-f>'] = cmp.mapping.scroll_docs(4),
--     ['<C-Space>'] = cmp.mapping.complete(),
--     ['<C-e>'] = cmp.mapping.abort(),
--     ['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
--   }),
--   sources = cmp.config.sources({
--     { name = 'nvim_lsp' },
--     { name = 'luasnip', option = { use_show_condition = false, show_autosnippets = true } }, -- For luasnip users.
--   }, {
--     { name = 'buffer' },
--   }),
--   experimental = {
--     ghost_text = true
--   }
-- })

-- local cmp_autopairs = require('nvim-autopairs.completion.cmp')
-- cmp.event:on(
--   'confirm_done',
--   cmp_autopairs.on_confirm_done()
-- )
null_ls.setup()

require('mason-null-ls').setup({
  handlers = {
    function(source_name, methods)
      require('mason-null-ls').default_setup(source_name, methods)
    end
  },
})
