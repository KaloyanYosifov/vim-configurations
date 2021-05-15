set nocompatible              " be iMproved, required
filetype off                  " required

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin("~/.vim/plugged")

" let Vundle manage Vundle, required
Plug 'ervandew/supertab'
Plug 'VundleVim/Vundle.vim'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-highlightedyank'
Plug 'flazz/vim-colorschemes'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'shapeoflambda/dark-purple.vim'
Plug 'itchyny/lightline.vim'
Plug 'fatih/vim-go'
Plug 'preservim/nerdtree'
Plug 'frazrepo/vim-rainbow'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'wincent/terminus'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'KaloyanYosifov/vim-project'
Plug 'neoclide/coc.nvim'
Plug 'rakr/vim-one'

" All of your Plugins must be added before the following line
call plug#end()
filetype plugin indent on    " required
