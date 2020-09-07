function! Laravel(...) abort
    let g:ultisnips_php_scalar_types = 1

    " standard phpcs config
    let g:neomake_php_phpcs_args_standard = 'PSR-1'

    " php cs fixer 
    let g:php_cs_fixer_php_path = "php"

    let g:php_cs_fixer_verbose = 1

    autocmd FileType php nnoremap <leader>g :silent :call PhpCsFixerFixFile()<CR>
endfunction
