source $HOME/.vim/plugin.vim
set backspace=indent,eol,start

" remove compatibility for vi
set nocompatible

"Activate numbers live by default for vim
set relativenumber
set nu

" clipboard settings
set clipboard^=unnamed,unnamedplus

" set incremental search, so we are not required to press enter when searching
set hlsearch
set incsearch

" Activate Syntax
syntax on

set linespace=4
set guifont=JetBrains\ Mono:h13

let mapleader = "," 

" --------------------- ColorScheme ------------------------------------------

"""" enable 24bit true color
" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

syntax enable

" Always show lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'dark_purple',
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
colorscheme dark_purple

" --------------------- Mappings ----------------------------------------------"
source ~/.vim/mappings/mappings.vim

nmap <Leader>ev :tabedit ~/.vimrc<cr>
nmap <Leader>r :registers<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <Leader>s :vs <cr>
nmap <Leader>t :-
nmap <Leader>b :+

nmap <D-l> <C-w><C-l>
nmap <C-S-e> :NERDTreeToggle<cr>

" --------------------- Blinking cursor fix  ----------------------------------------------"

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set ttimeout
set ttimeoutlen=1
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
set ttyfast

" --------------------- Autocommands  ----------------------------------------------"

augroup autosourcing
	autocmd!
	autocmd BufWritePost lead.vim source %
augroup END
