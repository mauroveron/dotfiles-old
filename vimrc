call pathogen#infect()
syntax on

" This fixes small delay on terminal when using capital O
set ttimeoutlen=50

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

set wildignore=*.o,*.obj,*.swp,*.bak,*.pyc,*~,build,cache,*/sites/default/files,tmp

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
else
  let g:solarized_termcolors=256
  set t_Co=256
  set background=dark
  colorscheme solarized
  hi CursorLine cterm=standout
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

" Resize splits when the window is resized
au VimResized * :wincmd =

" Cursorline {{{
" Only show cursorline in the current window and in normal mode.

augroup cline
    au!
    au WinLeave,InsertEnter * set nocursorline
    au WinEnter,InsertLeave * set cursorline
augroup END

" }}}

" Don't try to highlight lines longer than 800 characters.
set synmaxcol=800

" Trailing whitespace {{{
" Only shown when not in insert mode so I don't go insane.

augroup trailing
  au!
  au InsertEnter * :set listchars-=trail:⌴
augroup END
" }}}

" Fuck you, help key.
noremap  <F1> <nop>
inoremap <F1> <nop>

" Clean trailing whitespace
nnoremap <leader>w mz:%s/\s\+$//<cr>:let @/=''<cr>`z

" Marks and Quotes
noremap ' `

" Select (charwise) the contents of the current line, excluding indentation.
" Great for pasting Python lines into REPLs.
nnoremap vv ^vg_

" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null

" Don't move on *
nnoremap * *<c-o>

" Easy buffer navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

noremap <leader>v <C-w>v
noremap <leader>t :tabnew<CR>

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Same when jumping around
nnoremap g; g;zz
nnoremap g, g,zz
nnoremap <c-o> <c-o>zz

" Re-select last pasted text
nnoremap gp `[v`]

" Easier to type, and I never use the default behavior.
noremap H ^
noremap L $
vnoremap L g_

set lazyredraw
set ttyfast

" More natural split behavior
set splitbelow
set splitright

" vim:fdm=marker:
