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

" --------------------- Vim Project ----------------------------------------------"

let g:project_use_nerdtree = 1
set rtp+=~/.vim/bundle/vim-project/

" --------------------- Nerd Tree ----------------------------------------------"

let NERDTreeQuitOnOpen=1
let NERDTreeShowLineNumbers=1

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
    " autocmd BufEnter * silent! lcd %:p:h
    autocmd BufEnter * :syntax sync fromstart
augroup END
