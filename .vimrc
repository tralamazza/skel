syntax on

set t_Co=16

set nocompatible
set ruler
set bg=dark
set mouse=a
set number

if has('statusline')
  set laststatus=2  " always show
  set statusline=%<\ %n:%f\ %m%r%y\ %{fugitive#statusline()}%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
endif

set nowrap
set wildmenu
set noerrorbells
set foldenable
set cursorline
set cursorcolumn
set colorcolumn=80

set showcmd
set showmatch
set showmode

set spell

set ignorecase
set smartcase
set hlsearch
set incsearch

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=4
set smarttab

call pathogen#infect()

if has('autocmd')
  filetype plugin indent on
  au BufRead,BufNewFile *.hb.html set filetype=handlebars
endif

colorscheme solarized
