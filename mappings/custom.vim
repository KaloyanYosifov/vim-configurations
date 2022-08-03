inoremap jk <Esc>

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

" Old without COC Popup menu navigating
" inoremap <expr> <C-j> pumvisible() ? "\<C-N>" : "\<C-j>"
" inoremap <expr> <C-k> pumvisible() ? "\<C-P>" : "\<C-k>"

" Window switching
noremap <S-j> :tabprev<cr>
noremap <S-k> :tabnext<cr>

" FZF Ctrlp for projects
command! Ctrlp execute (exists("*fugitive#head") && len(fugitive#head())) ? ':GFiles --exclude-standard --others --cached' : 'Files'

noremap <C-P> :Ctrlp<cr>
nnoremap <silent> <leader>; :BLines<CR>

nnoremap <silent> <leader>f :Ag<CR>
