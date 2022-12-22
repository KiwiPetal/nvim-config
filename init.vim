lua require('plugins')

set nocompatible
set scrolloff=6
set showmatch
set ignorecase
set mouse=v
set hlsearch
set incsearch
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set autoindent
set number
set relativenumber
set wildmode=longest,list
set cc=80
filetype plugin indent on
syntax on
set mouse=
filetype plugin on
set cursorline
set ttyfast
set linebreak
set wrap
set clipboard+=unnamedplus
set showbreak=>>>
set foldmethod=indent

" MAPPINGS
map <F2> :NvimTreeToggle <CR>
map <F3> :CccPick <CR>
map ` <C-W>w
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
"command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
"vmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

" VIM-PLUG
call plug#begin()
Plug 'https://github.com/ryanoasis/vim-devicons'
set encoding=UTF-8
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'fladson/vim-kitty'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'
call plug#end()

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodeDefaultSymbol = ''

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['nerdtree'] = ''
let g:airline_powerline_fonts = 1
let g:airline_theme = "murmur"
let g:airline_extensions = []
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_z = "%p%% | %l/%L | Col:%c"
let g:airline_section_b = '%{strftime("%-I:%M %p")}'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Powerline symbols
let g:airline_left_sep = "\uE0B4"
let g:airline_left_alt_sep = "\uE0B5"
let g:airline_right_sep = "\uE0B6"
let g:airline_right_alt_sep = "\uE0B7"
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

" EXEC
colorscheme tokyonight-night
