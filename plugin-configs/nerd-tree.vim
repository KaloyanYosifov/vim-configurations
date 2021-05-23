let NERDTreeQuitOnOpen=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapJumpFirstChild='_'
let NERDTreeMapJumpLastChild='_'
let g:NERDTreeGitStatusUntrackedFilesMode = 'all'

function! NerdTreeToggleFind()
    if exists("g:NERDTree") && g:NERDTree.IsOpen()
        NERDTreeClose
    elseif filereadable(expand('%'))
        NERDTreeFind
    else
        NERDTree
    endif
endfunction
