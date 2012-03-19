syntax on

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
set shiftwidth=4
set softtabstop=4
set tabstop=8
set smarttab

if has('autocmd')
  filetype plugin indent on
  au BufRead,BufNewFile *.js,*.rb,*.rhtml set shiftwidth=2
  au BufRead,BufNewFile *.js,*.rb,*.rhtml set softtabstop=2
endif

call pathogen#infect()

colorscheme solarized
