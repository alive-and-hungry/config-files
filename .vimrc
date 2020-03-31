" display line numbers
set number

" use vi improved
set nocompatible

set encoding=utf-8

" map leader to <space>
let mapleader = " "
" use leader L to facilitate buffer selection
nnoremap <leader>l :ls<CR>:b<space>

" splits navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Add PEP 8 indentation
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Mark unnecessary whitespace
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


" ?? unknown Vundle requirement
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all plugins here 
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Townk/vim-autoclose'
" color schemes
Plugin 'jaredgorski/spacecamp'
Plugin 'skielbasa/vim-material-monokai'
Plugin 'haishanh/night-owl.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'kyoz/purify' 
Plugin 'gilgigilgil/anderson.vim'
Plugin 'danilo-augusto/vim-afterglow'

" All Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let python_highlight_all=1
syntax on

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF

" keep the colorscheme at the end
"set t_Co=256
"colorscheme onedark
