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

" split screen vertically
nmap <Leader>s :vs <cr>

" move to top line using relative numbers
nmap <Leader>t :-

" move to bottom line using relative numbers
nmap <Leader>b :+

nmap <Leader>sd :NERDTreeToggle<cr>

" --------------------- Moving lines mapping ----------------------------------------------"
if  has('macunix')
	" this is mac specific mapping for <A-j>
	nnoremap ∆ :m +1<cr>

	" this is mac specific mapping for <A-k>
	nnoremap ˚ :m -2<cr>

	inoremap ∆ <Esc>:m .+1<CR>==gi
	inoremap ˚ <Esc>:m .-2<CR>==gi

	vnoremap ∆ :m '>+1<CR>gv=gv
	vnoremap ˚ :m '<-2<CR>gv=gv
else
	" this is mac specific mapping for <A-j>
	nnoremap <A-j> :m +1<cr>

	" this is mac specific mapping for <A-k>
	nnoremap <A-k> :m -2<cr>

	inoremap <A-j> <Esc>:m .+1<CR>==gi
	inoremap <A-k> <Esc>:m .-2<CR>==gi

	vnoremap <A-j> :m '>+1<CR>gv=gv
	vnoremap <A-k> :m '<-2<CR>gv=gv
endif

" --------------------- CTRLP plugin  ----------------------------------------------"

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>i <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>i :call PhpInsertUse()<CR>

" --------------------- CTRLP plugin  ----------------------------------------------"

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
