" display line numbers
set number

" use vi improved
set nocompatible

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
" ...

" All Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
