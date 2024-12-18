local keymap = vim.keymap

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "<leader>q", ":q<CR>")
keymap.set("n", "<leader>fq", ":q!<CR>")
keymap.set("n", "<leader>wq", ":wq<CR>")
keymap.set("n", "<leader>ww", ":w<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- Plugins
-- Lazy
keymap.set("n", "<leader>L", ":Lazy<CR>")
-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")
-- nvim-tree
keymap.set("n", "<leader><F2>", ":NvimTreeToggle<CR>")
-- CCC
keymap.set("n", "<F3>", ":CccPick<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

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

-- Null-ls formatter
keymap.set("n", "<leader>f", ":lua vim.lsp.buf.format()<CR>")
keymap.set("v", "<leader>f", ":lua vim.lsp.buf.format()<CR>")
-- keymap.set("v", "<leader>f", "<Plug>(prettier-format)")
