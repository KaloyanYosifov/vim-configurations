function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

augroup coc
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Use `:Format` for format current buffer
command! -nargs=0 Format :call CocAction('format')

" Coc extensions
let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-css', 
    \ 'coc-html',
    \ 'coc-json', 
    \ 'coc-yaml', 
    \ 'coc-godot', 
    \ 'coc-sql', 
    \ 'coc-db',
    \ 'coc-pyright',
    \ 'coc-phpactor',
    \ 'coc-phpls',
    \ 'coc-vetur',
    \ 'coc-blade-formatter',
    \]

inoremap <silent><expr> <c-space> coc#refresh()

" Important mappings

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

nnoremap <silent><Leader>d <Plug>(coc-definition)
" Remap for rename current word
noremap <leader>vre <Plug>(coc-rename)
noremap <leader>cac  <Plug>(coc-codeaction)

nnoremap <leader>cpr :CocSearch <C-R>=expand("<cword>")<CR><CR>

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <C-s> <Plug>(coc-snippets-expand)
" Use <c-space> for trigger completion.
inoremap <silent><expr> <A-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
