set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'ervandew/supertab'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'machakann/vim-highlightedyank'
Plugin 'flazz/vim-colorschemes'
Plugin 'Rigellute/shades-of-purple.vim'
Plugin 'shapeoflambda/dark-purple.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'fatih/vim-go'
Plugin 'preservim/nerdtree'
Plugin 'frazrepo/vim-rainbow'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'wincent/terminus'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'KaloyanYosifov/vim-project'
Plugin 'neoclide/coc.nvim'
Plugin 'rakr/vim-one'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
