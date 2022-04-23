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
Plugin 'nvie/vim-flake8'
Plugin 'preservim/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'dense-analysis/ale'
Bundle 'Yggdroot/indentLine'
Bundle 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:indentLine_char_list = ['|', '¦', '┆', '┊']

set splitbelow

set splitright

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

let g:ale_linters = {
      \   'python': ['flake8', 'pylint'],
      \   'javascript': ['eslint'],
      \}
let g:ale_fixers = {
			\	'*': ['remove_trailing_lines', 'trim_whitespace'],
			\}
nnoremap <silent> <leader>a :ALEFix<CR>
nnoremap <silent> <leader>q :ALEToggle<CR>

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

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

syntax enable
set termguicolors
let g:gruvbox_italic=1
set bg=dark
colorscheme gruvbox

"ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$', '\.egg-info$', 'venv', '__pycache__']

set incsearch
set hlsearch
nnoremap <silent> <CR> :nohlsearch<CR><CR>

autocmd InsertEnter * :setlocal nohlsearch
autocmd InsertLeave * :setlocal hlsearch


set showmatch
set ignorecase
set smartcase

nnoremap ; :

nnoremap <silent> <leader>F  :GFiles<CR>
nnoremap <silent> <leader>f  :Files<CR>
nnoremap <silent> <leader>=  :vertical resize +5<CR>
nnoremap <silent> <leader>-  :vertical resize -5<CR>
nnoremap <silent> <leader>+  :resize +5<CR>
nnoremap <silent> <leader>_  :resize -5<CR>

set noswapfile

set cursorline
set cursorcolumn

" relative numbering
set nu rnu
