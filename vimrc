set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree' " file tree structure
Plugin 'vim-airline/vim-airline' " status bar
Plugin 'vim-airline/vim-airline-themes'
Plugin 'valloric/youcompleteme' "auto complete
Plugin 'klen/python-mode'

call vundle#end()            " required
filetype plugin indent on    " required
" color dracula

colorscheme onehalfdark      " set color  theme
let g:airline_theme='onehalfdark'

set nu

" set NERD Tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

let g:pymode_python = 'python3' " set syntax checking
