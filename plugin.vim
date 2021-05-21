set nocompatible              " be iMproved, required
filetype off                  " required

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin("~/.vim/plugged")

" navigation
Plug 'andymass/vim-matchup' " Match more stuff with % (html tag, LaTeX...)
Plug 'ervandew/supertab'

" php
Plug 'stephpy/vim-php-cs-fixer', {'for': 'php'}
Plug 'adoy/vim-php-refactoring-toolbox', {'for': 'php'}
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install --no-dev -o'}
Plug 'tobyS/vmustache' | Plug 'tobyS/pdv', {'for': 'php'} " php doc autocompletion 

" go
Plug 'fatih/vim-go', {'for': 'go'} " general plugin
Plug 'godoctor/godoctor.vim', {'for': 'go'} " refactoring
Plug 'sebdah/vim-delve', {'for': 'go'} " debugger

" databases
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'

" vue
Plug 'posva/vim-vue', {'for': 'vue'}

" git
Plug 'tpope/vim-fugitive' | Plug 'mhinz/vim-signify' " wrapper for git and display git diff in the left gutter
Plug 'junegunn/gv.vim' " Display commits for project / file

" color schemes
Plug 'NLKNguyen/papercolor-theme'

" other
Plug 'chrisbra/csv.vim'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-highlightedyank'
Plug 'flazz/vim-colorschemes'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'shapeoflambda/dark-purple.vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'frazrepo/vim-rainbow'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'wincent/terminus'
Plug 'KaloyanYosifov/vim-project'
Plug 'neoclide/coc.nvim'

" All of your Plugins must be added before the following line
call plug#end()
filetype plugin indent on    " required
