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

" GraphQL
Plug 'jparise/vim-graphql'

" Docker
Plug 'ekalinin/Dockerfile.vim'

" javascript
Plug 'pangloss/vim-javascript', {'for': ['javascript', 'typescript', 'vue']}
Plug 'MaxMEllon/vim-jsx-pretty', {'for': ['javascript', 'typescript']}
Plug 'styled-components/vim-styled-components', {'for': ['javascript', 'typescript']}

" typescript
Plug 'leafgarland/typescript-vim', {'for': ['typescript', 'typescriptreact']}

" Python
Plug 'vim-python/python-syntax', {'for': 'python'}

" Rust
Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'cespare/vim-toml', { 'for': 'toml' }

" Haskell
Plug 'neovimhaskell/haskell-vim', {'for': 'haskell'}

" go
Plug 'fatih/vim-go', {'for': 'go'} " general plugin
Plug 'godoctor/godoctor.vim', {'for': 'go'} " refactoring
Plug 'sebdah/vim-delve', {'for': 'go'} " debugger

" databases
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'

" html
Plug 'alvan/vim-closetag', {'for': ['vue',  'javascript', 'typescript', 'html', 'php']}

" vue
Plug 'posva/vim-vue', {'for': 'vue'}

" git
Plug 'tpope/vim-fugitive' | Plug 'mhinz/vim-signify' " wrapper for git and display git diff in the left gutter
Plug 'Xuyuanp/nerdtree-git-plugin'

" color schemes
Plug 'kaicataldo/material.vim'

" style
Plug 'Yggdroot/indentLine'

" Terminal
Plug 'KaloyanYosifov/toggleterm.nvim'"

" Jenkinsfile
Plug 'martinda/Jenkinsfile-vim-syntax'

" Arduino
Plug 'sudar/vim-arduino-syntax'

" other
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chrisbra/csv.vim'
" Plug 'SirVer/ultisnips'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-highlightedyank'
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
Plug 'wakatime/vim-wakatime'

" All of your Plugins must be added before the following line
call plug#end()
filetype plugin indent on    " required
