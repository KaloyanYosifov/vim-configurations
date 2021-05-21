command! -bang -bar -nargs=* Gpush execute 'Dispatch<bang> -dir=' . fnameescape(FugitiveGitDir()) 'git push' <q-args>
command! -bang -bar -nargs=* Gpull execute 'Dispatch<bang> -dir=' . fnameescape(FugitiveGitDir()) 'git pull' <q-args>
