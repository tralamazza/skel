syntax on
filetype plugin indent on
set nocompatible
set ruler
set bg=dark
set mouse=a
set number
set laststatus=2
set nowrap
set wildmenu
set noerrorbells
set foldenable
set showcmd
set showmatch

set ignorecase
set smartcase
set hlsearch
set incsearch

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8
set smarttab

au BufRead,BufNewFile *.js,*.rb,*.rhtml set shiftwidth=2
au BufRead,BufNewFile *.js,*.rb,*.rhtml set softtabstop=2

" call pahogen
call pathogen#infect()
colorscheme solarized
