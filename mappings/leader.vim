nnoremap <Leader>ev :tabedit ~/.vim/lead.vim<cr>
nnoremap <Leader>r :registers<cr>
nnoremap <Leader><space> :nohlsearch<cr>

" split screen vertically
nnoremap <Leader>vs :vs <cr>
nnoremap <Leader>w <C-w><C-w>

" move to top line using relative numbers
nnoremap <Leader>t :-

" move to bottom line using relative numbers
nnoremap <Leader>b :+

nnoremap <Leader>nd :call NerdTreeToggleFind()<cr>

noremap <Leader>sv :source ~/.vimrc<cr>

noremap <Leader>co :%bd\|e#<cr>
