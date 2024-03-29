set backspace=indent,eol,start
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent
set shiftround
set encoding=UTF-8
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpeg
" set tags=./tags,tags;$HOME

" remove compatibility for vi
set nocompatible
set noswapfile

"Activate numbers live by default for vim
set relativenumber
set nu

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

"Set scroll offset
set scrolloff=999

" clipboard settings
set clipboard^=unnamed,unnamedplus

" set incremental search, so we are not required to press enter when searching
set hlsearch
set incsearch

" Activate Syntax
syntax on

set linespace=4
set guifont=JetBrains\ Mono\ Regular:h12

let mapleader = ","

set autowriteall

" TextEdit might fail if hidden is not set.
set hidden

" for vertical pane in git diff tool
if &diff
    set diffopt-=internal
    set diffopt+=vertical
endif

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=750

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" --------------------- ColorScheme ------------------------------------------
"""" enable 24bit true color
" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif


syntax enable

set cursorline

" Always show lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             ['readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'filetype' ],
      \              [ 'gitbranch'] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1

colorscheme one
set background=light
