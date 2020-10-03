:tnoremap <Esc> <C-\><C-n>

set encoding=utf-8

"set tab to 4 spaces
set shiftwidth=4
set termbidi

"enable syntax hilighting
syntax enable

"set line number
set number

"highlight mathing bracket or () when a new one is inserted
set showmatch

"detect specific actions for specific filetype
filetype on
filetype indent on
filetype plugin on

"use mouse
set mouse=a

"more natural splits
set splitbelow
set splitright

"search stuff
set hlsearch            " Highlight search results.
set ignorecase          " Make searching case insensitie.
set smartcase           " ... unless the query has capital letters.
set incsearch           " Incremental search.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

"use C-L to clear search highlights
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
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'davidhalter/jedi-vim'
"Plug 'ycm-core/YouCompleteMe'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/indentLine'
Plug 'dense-analysis/ale'
call plug#end()

"NERDTree
:let g:NERDTreeWinSize=50
nnoremap <F3> :NERDTreeTabsToggle<CR>

"airline themes
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

"ale
let g:ale_fixers = {'python': ['autopep8', 'black', 'isort']}
let g:ale_linters = {'python': ['pylint']}
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1

"set color schema
set background=dark
colorscheme gruvbox
"set notermguicolors

" enable 256 colors
set t_Co=256
set t_ut=
