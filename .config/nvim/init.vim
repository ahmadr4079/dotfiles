set clipboard+=unnamedplus

:tnoremap <Esc> <C-\><C-n>

set encoding=utf-8

set shiftwidth=4
set termbidi

syntax enable

set number

"highlight mathing bracket or () when a new one is inserted
set showmatch

"detect specific actions for specific filetype
filetype on
filetype indent on
filetype plugin on


"Use mouse
set mouse=a

"Status line
set statusline=

"set status line
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset



" More natural splits
set splitbelow
set splitright


" Search stuff
set hlsearch            " Highlight search results.
set ignorecase          " Make searching case insensitie.
set smartcase           " ... unless the query has capital letters.
set incsearch           " Incremental search.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).


" Use C-L to clear search highlights
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>


call plug#begin('~/.config/nvim/plugged')
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'jmcantrell/vim-virtualenv'
Plug 'tpope/vim-commentary'
Plug 'morhetz/gruvbox'
Plug 'lepture/vim-jinja'
Plug 'davidhalter/jedi-vim'
Plug 'Yggdroot/indentLine'
Plug 'dense-analysis/ale'
call plug#end()


"" NERDTREE 
"Map F3 to toggle NERDTree
nnoremap <F3> :NERDTreeTabsToggle<CR>


"Airline themes
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

syntax on

set background=dark
colorscheme gruvbox
set notermguicolors

:let g:NERDTreeWinSize=50

let g:ale_fixers = {'python': ['autopep8', 'black', 'isort']}
let g:ale_linters = {'python': ['pylint']}
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1

" enable 256 colors
set t_Co=256
set t_ut=
