source $HOME/.vim/plugin.vim
set backspace=indent,eol,start
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent
set shiftround
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
set guifont=JetBrains\ Mono\ Regular

let mapleader = "," 

set autowriteall

" TextEdit might fail if hidden is not set.
set hidden

" for vertical pane in git diff tool
set diffopt+=vertical

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" --------------------- Source all plugin config files ----------------------------------------------"
" source every plugin configs
for file in split(glob("~/.vim/plugin-configs/**/*.vim"), '\n')
    execute 'source' file
endfor


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
      \ 'colorscheme': 'PaperColor',
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
set background=light
colorscheme PaperColor

" --------------------- Mappings ----------------------------------------------"

source ~/.vim/mappings/mappings.vim

" --------------------- Vim Project ----------------------------------------------"

let g:project_use_nerdtree = 1
set rtp+=~/.vim/bundle/vim-project/

" --------------------- Nerd Tree ----------------------------------------------"

let NERDTreeQuitOnOpen=1
let NERDTreeShowLineNumbers=1

" --------------------- Common IDE functions  ----------------------------------------------"

source ~/.vim/common-ide.vim

" --------------------- Workspaces  ----------------------------------------------"

if filereadable(expand("~/.vim/workspaces.vim"))
	source ~/.vim/workspaces.vim
endif


" --------------------- Super Tab  ----------------------------------------------"

let g:SuperTabDefaultCompletionType = "<c-n>"


" --------------------- Autocommands  ----------------------------------------------"

augroup autosourcing
	autocmd!
	autocmd BufWritePost lead.vim source %
augroup END

