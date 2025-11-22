let mapleader = " "

" Substitute word under cursor on line
" from https://github.com/tonybanters/vim/blob/master/keybinds.vim
nnoremap <leader>s :s/\<<C-r><C-w>\>//gI<Left><Left><Left>

" Reload vimrc (adjust path as needed)
nnoremap <leader>rl :call Sourcec("init.vim")<CR>

function! g:MyCmakeGeneratingFunc()
    call system("cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=on --preset conan-release")
    execute "vs"
    execute "e build/build/Release/compile_commands.json"
    execute "w compile_commands.json"
    execute "q"
    call system("cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=on .")
endfunction

nnoremap <leader><leader>c :call g:MyCmakeGeneratingFunc()<CR>
