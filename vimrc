call pathogen#infect()
syntax on

" gui tweaks {{{
if has("gui_running")
  set guitablabel=%n\ %t\ %m
  set showtabline=2
  set go -=T  " no toolbar
  set go -=m  " no menu
  set go -=r  " no scrollbars
  try
    set guifont=Droid\ Sans\ Mono\ 9
  catch
  endtry

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

set statusline=%<%2*%f%h%1*%m%2*%r%h%w%y\ %*%{&ff}\ %=\ %{fugitive#statusline()}\ col:%c%V\ asc:%B\ pos:%o\ lin:%l\,%L\ %P
set laststatus=2

set pastetoggle=<F3>

set hidden

set foldmethod=marker
set foldlevel=99
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

" Use Perl's regex on searches
nnoremap / /\v
vnoremap / /\v

set nowrap "do not wrap by default
" move to the next editor line for wrapped lines
nnoremap j gj
nnoremap k gk

filetype plugin indent on
" fix for vim setting ft=modula2 on *.md files
au BufNewFile,BufReadPost *.md setl ft=markdown tw=80
"}}}

" look and feel {{{
if has("gui_running")
  try
    colorscheme gravity
    set background=light
  catch
    colorscheme default
  endtry
endif
set listchars=tab:▸\ ,eol:¬,trail:·
set cursorline
set nu
set title " show filename in titlebar / terminal
" }}}

" general editing tweaks {{{
set backspace=indent,eol,start        " allow backspacing over autoindent, linke breaks and start of insert
set nowrap

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

map <leader>f :NERDTree<cr>
map <leader><space> :noh<cr>
map <leader>l :set list!<cr>
map <leader>o :TagbarToggle<cr>

" from vimcasts.org/e/14
" edit file taking the path to the current active buffer into account.
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>
" }}}

" other mappings {{{
" use Q to format paragraph
vmap Q gq
nmap Q gqap

nmap <F2> :CommandTFlush<CR>
nmap <F4> :Gst<CR>
nmap <F5> :Gdiff<CR>
" }}}

"autocmd vimenter * if !argc() | NERDTree | endif

autocmd BufNewFile,BufRead,BufEnter TODO.md setf todo

" vim:fdm=marker:
