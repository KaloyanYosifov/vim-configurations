source $HOME/.vim/plugin.vim

" allow for backspace
set backspace=indent,eol,start

"Activate numbers live by default for vim
set nu

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
nmap <D-l> <C-w><C-l>
nmap <C-S-e> :NERDTreeToggle<cr>

" --------------------- Autocommands  ----------------------------------------------"

augroup autosourcing
	autocmd!
	autocmd BufWritePost lead.vim source %
augroup END
