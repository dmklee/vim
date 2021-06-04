let mapleader=","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'djoshea/vim-autoread'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'morhetz/gruvbox'
"Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'preservim/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Bundle 'Yggdroot/indentLine'
Bundle 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:indentLine_char_list = ['|', '¦', '┆', '┊']

set splitbelow

set splitright

"split navigations
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" set proper PEP8 Indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    "\ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

set colorcolumn=80
set tabstop=4
set shiftwidth=4

set encoding=utf-8

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

""python with virtualenv support
"py3 << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
  "project_base_dir = os.environ['VIRTUAL_ENV']
  "activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  "eval(open(activate_this, dict(__file__=activate_this)))
"EOF


let python_highlight_all=1
syntax on

syntax enable
set termguicolors
let g:gruvbox_italic=1
set bg=dark
colorscheme gruvbox
"colorscheme monokai
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14

let NERDTreeIgnore=['\.pyc$', '\~$', '\.egg-info$'] "ignore files in NERDTree

set incsearch
set hlsearch
nnoremap <silent> <CR> :nohlsearch<CR><CR>

autocmd InsertEnter * :setlocal nohlsearch
autocmd InsertLeave * :setlocal hlsearch


set showmatch
set ignorecase
set smartcase

nnoremap ; :

nnoremap <silent> <leader>f  :GFiles<CR>
nnoremap <silent> <leader>F  :Files<CR>
nnoremap <silent> <leader>=  :vertical resize +5<CR>
nnoremap <silent> <leader>-  :vertical resize -5<CR>
nnoremap <silent> <leader>+  :resize +5<CR>
nnoremap <silent> <leader>_  :resize -5<CR>

set noswapfile

set cursorline
set cursorcolumn


" relative numbering
set nu rnu
