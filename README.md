# vim config that just works
works on flash drive too

clone this repo wherever you want, for example `~/.config/vim/`
and change/add your `.vimrc` to
```vim
let g:config_dir = "~/.config/vim/"
let g:flash_drive_config = 0

function! g:Sourcec(file)
    execute 'source ' . g:config_dir . a:file
endfunction

call Sourcec("init.vim")
```
where `~/.config/vim` is directory where you cloned the repository (ignore plugins folder, forgot to put gitignore before pushing)
