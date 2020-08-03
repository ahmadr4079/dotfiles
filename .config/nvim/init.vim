set clipboard+=unnamedplus

:tnoremap <Esc> <C-\><C-n>

set encoding=utf-8

set shiftwidth=4
"set expandtab

syntax enable

"colorscheme default
"set background=dark

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
"
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>


call plug#begin('~/.config/nvim/plugged')
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'luochen1990/rainbow'
Plug 'vim-syntastic/syntastic'
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
"Plug 'jmcantrell/vim-virtualenv'
call plug#end()


"" NERDTREE 
"Map F3 to toggle NERDTree
nnoremap <F3> :NERDTreeTabsToggle<CR>


"Airline themes
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'


"Rainbow
"let g:rainbow_active = 1


let python_highlight_all=1
syntax on


if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif


