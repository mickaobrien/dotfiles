set nocompatible               " be iMproved
filetype off                   " required!

set ignorecase
set smartcase

set number
colorscheme elflord

 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

 " let Vundle manage Vundle
 " required! 
" Plugin 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
" Plugin 'tpope/vim-fugitive'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 " vim-scripts repos
" Plugin 'L9'
" Plugin 'FuzzyFinder'
 " non github repos
 Plugin 'wincent/Command-T.git'
 Plugin 'nvie/vim-flake8.git'
 Plugin 'tpope/vim-surround.git'
 Plugin 'scrooloose/nerdcommenter'
 Plugin 'ervandew/supertab.git'
 Plugin 'rosenfeld/conque-term'
 Plugin 'tarruda/vim-conque-repl'
 Plugin 'bling/vim-airline'
 Plugin 'tpope/vim-fugitive'
 Plugin 'tpope/vim-rails.git'

 Plugin 'scrooloose/nerdtree'
 Plugin 'pangloss/vim-javascript'

 Plugin 'walm/jshint.vim'
 "Plugin 'vim-scripts/Conque-Shell.git'
 Plugin 'vitalk/vim-simple-todo'

 Plugin 'groenewege/vim-less'

 Plugin 'kchmck/vim-coffee-script'
 Plugin 'digitaltoad/vim-jade'

 "Test mine
 Plugin 'mickaobrien/vim-stackoverflow'

 call vundle#end()             " required

 syntax enable " For vim-coffee-script

 filetype plugin indent on     " required!
 

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

"1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

"spacing for html, css, js
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType less setlocal shiftwidth=2 tabstop=2
autocmd FileType js setlocal shiftwidth=2 tabstop=2
autocmd FileType coffee setlocal shiftwidth=8 tabstop=8 noexpandtab

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" ignore virtualenv directories
set wildignore += "fbandenv/**"

" make j/k behave as expected
:nmap j gj
:nmap k gk

" fix .md syntax highlighting
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.module set filetype=php

" tabs
:nmap <C-S-t> :tabprevious<cr>
:nmap <C-t> :tabnext<cr>

" NERDTree
:nmap <F9> :NERDTreeToggle<cr>

" reload vimrc after changes
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END
