" --------------------- Settings ----------------------------------------------"

source ~/.vim/settings.vim

" --------------------- Mappings ----------------------------------------------"

source ~/.vim/mappings/leader.vim
source ~/.vim/mappings/custom.vim

set surround
set multiple-cursors
set commentary
set highlightedyank
set ReplaceWithRegister

let g:highlightedyank_highlight_color = "rgba(160, 160, 160, 155)"

" multiple cursor plugin remap
map <C-n> <A-n>
map <C-x> <A-x>
map <C-p> <A-p>

" --------------------- IDEA Specific ----------------------------------------------"

nmap <leader>f :action FindInPath<CR>
nmap <leader>vrf :action RenameFile<CR>
nmap <leader>vre :action RenameElement<CR>
nmap <leader>cac :action ShowIntentionActions<CR>
