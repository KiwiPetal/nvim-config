local keymap = vim.keymap

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "<leader>q", ":q<CR>")
keymap.set("n", "<leader>fq", ":q!<CR>")
keymap.set("n", "<leader>wq", ":wq<CR>")
keymap.set("n", "<leader>ww", ":w<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- Double the scroll distance
keymap.set("n", "<C-e>", '2<C-e>')
keymap.set("n", "<C-y>", '2<C-y>')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v")        -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s")        -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=")        -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>")    -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>")   -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>t]", ":tabn<CR>")     --  go to next tab
keymap.set("n", "<leader>t[", ":tabp<CR>")     --  go to previous tab

-- Plugins
-- LSP
keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
keymap.set("n","gr","<cmd>lua vim.lsp.buf.references()<CR>")
keymap.set("n","gs","<cmd>lua vim.lsp.buf.signature_help()<CR>")
keymap.set("n","gi","<cmd>lua vim.lsp.buf.implementation()<CR>")
keymap.set("n","gt","<cmd>lua vim.lsp.buf.type_definition()<CR>")
keymap.set("n","<leader>rr","<cmd>lua vim.lsp.buf.rename()<CR>")
keymap.set({ "n", "v" }, "<leader>f", ":lua vim.lsp.buf.format()<CR>")
keymap.set({ "n", "v" }, "ga", "<cmd>lua vim.lsp.buf.code_action()<CR>")
keymap.set("n","<leader>e","<cmd>lua vim.diagnostic.open_float()<CR>")

-- Lazy
keymap.set("n", "<leader>L", ":Lazy<CR>")

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>tr", "<cmd>NvimTreeToggle<CR>", { silent = true })

-- CCC
keymap.set("n", "<leader>cc", "<cmd>CccPick<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")       -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")        -- find string in current working directory as you type
keymap.set("n", "<leader>fw", "<cmd>Telescope grep_string<cr>")      -- find string under cursor in current working directory
keymap.set("n", "<leader>fc", "<cmd>Telescope git_status<cr>")       -- list git status
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")          -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")        -- list available help tags

keymap.set("n", "<leader>ft", "<cmd>Telescope file_browser<CR><cr>") -- telescope file tree

-- Spectre
keymap.set('n', '<leader><C-S>', '<cmd>lua require("spectre").toggle()<CR>', {
  desc = "Toggle Spectre"
})
keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
  desc = "Search current word"
})
keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
  desc = "Search current word"
})
keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
  desc = "Search on current file"
})

-- Far
keymap.set("n", "<leader><C-F>", ":Farf<CR>")
keymap.set("n", "<leader><C-A>", ":Farr<CR>")

-- Lazygit
keymap.set("n", "<leader>lg", ":LazyGit<CR>")

-- Neogit
keymap.set("n", "<leader>ng", ":Neogit<CR>")

-- Null-ls

-- Codeium completion
-- MACOS keymaps
keymap.set('i', '<M-e>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
keymap.set('i', '<M-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
keymap.set('i', '<M-]>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
keymap.set('i', '<M-[>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
-- WINDOWS keymaps
keymap.set('i', '<D-e>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
keymap.set('i', '<D-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
keymap.set('i', '<D-]>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
keymap.set('i', '<D-[>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })

-- Goto-preview
vim.keymap.set("n", "gp", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", {noremap=true})
vim.keymap.set("n", "gT", "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", {noremap=true})
vim.keymap.set("n", "gI", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", {noremap=true})
vim.keymap.set("n", "gD", "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>", {noremap=true})
vim.keymap.set("n", "gX", "<cmd>lua require('goto-preview').close_all_win()<CR>", {noremap=true})
vim.keymap.set("n", "gR", "<cmd>lua require('goto-preview').goto_preview_references()<CR>", {noremap=true})
