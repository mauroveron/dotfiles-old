call pathogen#infect()
syntax on

" gui tweaks {{{
if has("gui_running")
  set guitablabel=%n\ %t\ %m
  set showtabline=2
  set go -=T  " no toolbar
  set go -=m  " no menu
  set go -=r  " no scrollbars
  if version >= 703
    set colorcolumn=80
  endif

  " macvim tweaks {{{
  if has("gui_macvim")
    set clipboard=unnamed  "export vim clipboard to OSX
  endif
  " }}}
endif
" }}}

" general editor options {{{
let mapleader=','
set modeline
set noswapfile

set pastetoggle=<F3>

set hidden

set foldmethod=indent
set encoding=utf-8

" search
set ignorecase
set smartcase
set incsearch
set hls
set gdefault     "default to globl search & replace

set wildmode=longest,list
set showmatch
set showcmd
set shortmess=at

set scrolloff=3

set wildignore=*.o,*.obj,*.swp,*.bak,*.pyc,*~,build,cache,*/sites/default/files

" move to the next editor line for wrapped lines
nnoremap j gj
nnoremap k gk

filetype plugin indent on
" fix for vim setting ft=modula2 on *.md files
au BufNewFile,BufReadPost *.md setl ft=markdown tw=80
"}}}

" look and feel {{{
try
  colorscheme fruit
catch
  colorscheme default
endtry
set listchars=tab:▸\ ,eol:¬,trail:·
set cursorline
set nu
set title " show filename in titlebar / terminal
" }}}

" general editing tweaks {{{
set backspace=indent,eol,start        " allow backspacing over autoindent, linke breaks and start of insert

set autoindent

" default indentation is two spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
" }}}

" auto-completion {{{
set completeopt=menuone,preview
" }}}

" helpful leader shortcuts {{{
map <leader>q :q<cr>
map <leader>d :bd<cr>
map <leader>ca :1,300bd<cr>
" }}}

" vim:fdm=marker:
