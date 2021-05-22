command! -bang -bar -nargs=* Gpush execute 'Dispatch! -dir=' . fnameescape(FugitiveGitDir()) 'git push' <q-args>
command! -bang -bar -nargs=* Gpull execute 'Dispatch! git pull' <q-args>
