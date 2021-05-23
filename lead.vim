source $HOME/.vim/plugin.vim

" --------------------- Settings ----------------------------------------------"

source $HOME/.vim/settings.vim

" --------------------- Source all plugin config files ----------------------------------------------"
" source every plugin configs
for file in split(glob("~/.vim/plugin-configs/**/*.vim"), '\n')
    execute 'source' file
endfor

" --------------------- Mappings ----------------------------------------------"

for file in split(glob("~/.vim/mappings/**/*.vim"), '\n')
    execute 'source' file
endfor

" --------------------- Custom Commands ----------------------------------------------"

for file in split(glob("~/.vim/commands/**/*.vim"), '\n')
    execute 'source' file
endfor

" --------------------- Vim Project ----------------------------------------------"

let g:project_use_nerdtree = 1
" set rtp+=~/.vim/bundle/vim-project/


" --------------------- Common IDE functions  ----------------------------------------------"

source ~/.vim/common-ide.vim

" --------------------- Workspaces  ----------------------------------------------"

if filereadable(expand("$HOME/.vim/workspaces.vim"))
	source ~/.vim/workspaces.vim
endif

" --------------------- Super Tab  ----------------------------------------------"

let g:SuperTabDefaultCompletionType = "<c-n>"


" --------------------- Autocommands  ----------------------------------------------"

augroup baseAutoCommands
	autocmd!
    autocmd BufEnter * :syntax sync fromstart
    autocmd FocusGained,BufEnter * :checktime
augroup END
