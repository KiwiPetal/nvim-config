lua require('plugins')

set nocompatible            " disable compatibility to old-time vi
set scrolloff=6
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber          " relative numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=                  " enable mouse click
set clipboard=unnamedplus   " using system clipboard
" set guifont=DejaVu_Sans_Mono_for_Powerline
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim

" MAPPINGS
map <F2> :NvimTreeToggle <CR>
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
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
call plug#end()

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodeDefaultSymbol = ''

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['nerdtree'] = ''
let g:airline_powerline_fonts = 1
let g:airline_theme = "violet"
let g:airline_extensions = []
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_z = "%p%% | %l/%L | Col:%c"

" EXEC
colorscheme tokyonight-night
