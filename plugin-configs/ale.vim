let g:ale_php_php_executable = 'php'
let g:ale_php_php_cs_fixer_executable='./vendor/bin/php-cs-fixer'
let g:ale_sign_column_always = 1
let g:ale_fixers = {
        \ '*': ['remove_trailing_lines', 'trim_whitespace'],
        \ 'php': ['php_cs_fixer'],
        \ 'rust': ["rustfmt"],
        \ }
let g:ale_fix_on_save=1
let g:ale_linters = { 'javascript': ['eslint'], 'graphql': ['gqlint'], 'rust': ['rls'] }
let g:ale_linters_explicit = 1
