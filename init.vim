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
set cc=0
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
set encoding=UTF-8
set foldmethod=marker

" MAPPINGS
" Removing <C-Navigation>
map <C-H> TmuxNavigateLeft <CR>
map <C-J> TmuxNavigateDown <CR>
map <C-K> TmuxNavigateUp <CR>
map <C-L> TmuxNavigateRight <CR>

" Keybinds
map <silent> <F2> :NvimTreeToggle <CR>
map <silent> <F3> :CccPick <CR>
map ` <C-W>w
" map <C-F> :Telescope live_grep <CR>
map <silent> <C-F> :Farf <CR>
map <silent> <C-A> :Farr <CR>
map <silent> <C-G> :Neogit <CR>
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
nmap <silent> gd <Plug>(coc-definition)
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" VIM-PLUG
" call plug#begin()
" call plug#end()

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodeDefaultSymbol = ''

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['nerdtree'] = ''
let g:airline_powerline_fonts = 1
let g:airline_theme = "catppuccin"
let g:airline_extensions = []
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_z = "%p%% | %l/%L | Col:%c"
let g:airline_section_b = '%{strftime("%-I:%M %p")}'
let g:far#enable_undo=1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Powerline symbols
let g:airline_left_sep = ""
let g:airline_left_alt_sep = ""
let g:airline_right_sep = ""
let g:airline_right_alt_sep = ""
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

" EXEC
" colorscheme tokyonight-night
colorscheme catppuccin
