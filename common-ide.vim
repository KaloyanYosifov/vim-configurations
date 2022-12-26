function! Laravel(...) abort
    let g:ultisnips_php_scalar_types = 1

    " standard phpcs config
    let g:neomake_php_phpcs_args_standard = 'PSR-1'

    " php cs fixer
    let g:php_cs_fixer_php_path = "php"

    let g:php_cs_fixer_verbose = 1

    let g:gutentags_ctags_extra_args = ['--PHP-kinds=cfi', '--regex-php="/^[ \t]*trait[ \t]+([a-z0_9_]+)/\1/t,traits/i"', '-R']

    autocmd FileType php nnoremap <leader>g :silent :call PhpCsFixerFixFile()<CR>
endfunction
