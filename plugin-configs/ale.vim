let g:ale_sign_column_always = 1
let g:ale_fixers = {
        \ '*': ['remove_trailing_lines', 'trim_whitespace'],
        \ 'javascript': ['eslint'],
        \ 'rust': ["rustfmt"],
        \ }
let g:ale_fix_on_save=1
let g:ale_linters = { 'javascript': ['eslint'], 'graphql': ['gqlint'], 'rust': ['rust-analyzer'] }
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_linters_explicit = 1
