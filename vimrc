set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
" Plugin 'scrooloose/nerdtree' " file tree structure
Plugin 'vim-airline/vim-airline' " status bar
Plugin 'vim-airline/vim-airline-themes'
Plugin 'klen/python-mode'
Plugin 'alpertuna/vim-header'
" Plugin 'valloric/youcompleteme' "auto complete

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme onehalfdark      " set color  theme
let g:airline_theme='onehalfdark'

" set NERD Tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>

let g:pymode_python = 'python3' " set syntax checking

" Airline
set laststatus=2    " 始终显示状态栏
let g:airline#extensions#tabline#enabled=1    " 开启 tab 栏

" disable welcom message
set shortmess=I

set number " 显示行号
" set relativenumber " 显示相对行号（这个非常重要，慢慢体会）
set hlsearch " 搜索结果高亮
set autoindent " 自动缩进
set smartindent " 智能缩进
set tabstop=4 " 设置 tab 制表符所占宽度为 4
set softtabstop=4 " 设置按 tab 时缩进的宽度为 4
set shiftwidth=4 " 设置自动缩进宽度为 4
set expandtab " 缩进时将 tab 制表符转换为空格
filetype on " 开启文件类型检测
syntax on " 开启语法高亮

" File header
let g:header_field_author = 'Shuailong'
let g:header_field_author_email = 'liangshuailong@gmail.com'
let g:header_field_timestamp_format = '%Y-%m-%d %H:%M:%S'
let g:header_auto_add_header = 0
