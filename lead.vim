source $HOME/.vim/plugin.vim
set backspace=indent,eol,start
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent

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

set autowriteall

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

" --------------------- Vim Project ----------------------------------------------"

let g:project_use_nerdtree = 1
set rtp+=~/.vim/bundle/vim-project/

" --------------------- Import php files ----------------------------------------------"

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>i <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>i :call PhpInsertUse()<CR>

" --------------------- Nerd Tree ----------------------------------------------"

let NERDTreeQuitOnOpen=1

" --------------------- CTRLP plugin  ----------------------------------------------"

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = 'nodue_modules\DS_Store\git'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode = 'ca'

" --------------------- Autocommands  ----------------------------------------------"

augroup autosourcing
	autocmd!
	autocmd BufWritePost lead.vim source %
augroup END

" --------------------- Common IDE functions  ----------------------------------------------"

source ~/.vim/common-ide.vim

" --------------------- Workspaces  ----------------------------------------------"

if filereadable(expand("~/.vim/workspaces.vim"))
	source ~/.vim/workspaces.vim
endif

" --------------------- vim gutentags  ----------------------------------------------"
" Documentation -> https://www.reddit.com/r/vim/comments/d77t6j/guide_how_to_setup_ctags_with_gutentags_properly/

let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
let g:gutentags_ctags_extra_args = [
      \ '--regex-php=/^[ \t]*trait[ \t]+([a-z0_9_]+)/\1/t,traits/i',
      \ ]
