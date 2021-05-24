let g:ale_php_php_executable = 'php'
let g:ale_php_php_cs_fixer_executable='./vendor/bin/php-cs-fixer'
let g:ale_fixers = {'php': ['php_cs_fixer']}
let g:ale_fix_on_save=1
let g:ale_linters = { 'javascript': ['eslint'], 'graphql': ['gqlint'] }
let g:ale_linters_explicit = 1
