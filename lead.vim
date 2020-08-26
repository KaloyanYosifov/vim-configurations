source $HOME/.vim/plugin.vim

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

" --------------------- Mappings ----------------------------------------------"

nmap <Leader>ev :tabedit ~/.vimrc<cr>
nmap <Leader><space> :nohlsearch<cr>

" --------------------- Autocommands  ----------------------------------------------"

augroup autosourcing
	autocmd!
	autocmd BufWritePost lead.vim source %
augroup END
