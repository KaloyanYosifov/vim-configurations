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
  autocmd BufWrite *.hs,*.lhs,*.haskell call CocAction('format')
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
    \ 'coc-vetur',
    \ 'coc-blade-formatter',
    \ 'coc-styled-components',
    \ 'coc-sh',
    \ 'coc-rls',
    \ 'coc-rust-analyzer',
    \ 'coc-prettier',
    \ 'coc-go',
    \ 'coc-docker',
    \ 'coc-sumneko-lua',
    \]

" Important mappings

let g:coc_snippet_next = ""
let g:coc_snippet_prev = ""

" custom coc popup navigation
inoremap <silent><expr> <c-j> coc#pum#visible() ? coc#pum#next(1) : coc#jumpable() ? "\<c-r>=coc#rpc#request('snippetNext', [])<cr>" : "\<c-j>"
inoremap <silent><expr> <c-k> coc#pum#visible() ? coc#pum#prev(1) : coc#jumpable() ? "\<c-r>=coc#rpc#request('snippetPrev', [])<cr>" : "\<c-k>"

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <tab and CR for autocompletion> for confirm completion, `<C-g>u` means break undo chain at current position.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "<C-I>"

nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
" Remap for rename current word
nmap <leader>vre <Plug>(coc-rename)
nmap <leader>cac <Plug>(coc-codeaction-selected)<CR>
nmap <leader>cag <Plug>(coc-codeaction)

" Use K for show documentation in preview window
nmap <silent> <Leader>dc :call <SID>show_documentation()<CR>

let g:LanguageClient_serverCommands = {
    \ 'vue': ['vls']
    \ }

" fix popup colors for seoul256-light colorscheme
" Found coc highlighting names with :h coc-highlights
highlight CocHintFloat ctermfg=DarkGreen guifg=#038253
highlight CocInfoFloat ctermfg=Magenta guifg=#3d05e1
