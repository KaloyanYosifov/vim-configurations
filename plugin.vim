set nocompatible              " be iMproved, required
filetype off                  " required

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin("~/.vim/plugged")

" Linting
Plug 'dense-analysis/ale'

" navigation
Plug 'andymass/vim-matchup' " Match more stuff with % (html tag, LaTeX...)
Plug 'ervandew/supertab'

" php
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'tobyS/vmustache' | Plug 'tobyS/pdv', {'for': 'php'} " php doc autocompletion 

" javascript
Plug 'pangloss/vim-javascript', {'for': ['javascript', 'jsx', 'vue']}
Plug 'MaxMEllon/vim-jsx-pretty', {'for': ['javascript', 'jsx']}

" go
Plug 'fatih/vim-go', {'for': 'go'} " general plugin
Plug 'godoctor/godoctor.vim', {'for': 'go'} " refactoring
Plug 'sebdah/vim-delve', {'for': 'go'} " debugger

" databases
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'

" html
Plug 'alvan/vim-closetag', {'for': ['vue',  'javascript', 'jsx', 'html', 'php']}

" blade
Plug 'jwalton512/vim-blade', {'for': 'php'}
Plug 'yaegassy/coc-blade-formatter', {'for': 'php', 'do': 'yarn install --frozen-lockfile',}

" vue
Plug 'posva/vim-vue', {'for': 'vue'}

" git
Plug 'tpope/vim-fugitive' | Plug 'mhinz/vim-signify' " wrapper for git and display git diff in the left gutter
Plug 'Xuyuanp/nerdtree-git-plugin'

" color schemes
Plug 'NLKNguyen/papercolor-theme'

" other
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
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
Plug 'wincent/terminus'
Plug 'KaloyanYosifov/vim-project'
Plug 'neoclide/coc.nvim'
Plug 'tpope/vim-dispatch'
Plug 'airblade/vim-rooter'
Plug 'editorconfig/editorconfig-vim'

" All of your Plugins must be added before the following line
call plug#end()
filetype plugin indent on    " required
