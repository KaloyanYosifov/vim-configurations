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

" remap tag finder
noremap <C-b> <C-]>
