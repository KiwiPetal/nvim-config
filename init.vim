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
set clipboard=unnamedplus
filetype plugin on
set cursorline
set ttyfast
set linebreak
set wrap
set showbreak=>>>

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
