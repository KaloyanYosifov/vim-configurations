" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
command! -nargs=0 Prettier :CocCommand prettier.formatFile

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
    \]

inoremap <silent><expr> <c-space> coc#refresh()
