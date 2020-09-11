source $HOME/.vim/plugin.vim
set backspace=indent,eol,start
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent
set tags=./tags,tags;$HOME

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

" TextEdit might fail if hidden is not set.
set hidden

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
let NERDTreeShowLineNumbers=1

" --------------------- CTRLP plugin  ----------------------------------------------"

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = 'nodue_modules\DS_Store\git'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" let g:ctrlp_working_path_mode = 'ca'
let g:ctrlp_max_files = 100000
let g:ctrlp_working_path_mode = ''

if has("gui_macvim")
	let g:ctrlp_map = '<D-p>'
	let g:ctrlp_cmd = 'CtrlP'
endif

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

" --------------------- Conquer of completion ----------------------------------------------"

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
