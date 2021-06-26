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

let g:coc_user_config = '~/.vim/coc-settings.json'

" Coc extensions
let g:coc_global_extensions = [
    \ 'coc-css', 
    \ 'coc-html',
    \ 'coc-json', 
    \ 'coc-yaml', 
    \ 'coc-sql', 
    \ 'coc-db',
    \ 'coc-pyright',
    \ 'coc-phpactor',
    \ 'coc-phpls',
    \ 'coc-vetur',
    \ 'coc-blade-formatter',
    \ 'coc-styled-components',
    \ 'coc-sh',
    \ 'coc-rls',
    \ 'coc-prettier',
    \]

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

nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
" Remap for rename current word
nmap <leader>vre <Plug>(coc-rename)
nmap <leader>cac <Plug>(coc-codeaction-selected)<CR>
nmap <leader>cag <Plug>(coc-codeaction)

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" Use K for show documentation in preview window
nmap <silent> <Leader>dc :call <SID>show_documentation()<CR>

let g:LanguageClient_serverCommands = {
    \ 'vue': ['vls']
    \ }
