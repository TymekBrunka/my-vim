" from https://github.com/tonybanters/vim/blob/master/plugins.vim
" plugins.vim - Dead simple plugin manager
" Just source this file in your vimrc
let s:plugin_dir = expand(g:config_dir . 'plugins')

" Install a plugin if it doesn't exist
function! s:ensure(repo)
    let name = split(a:repo, '/')[-1]
    let path = s:plugin_dir . '/' . name
  
    if !isdirectory(path)
        if !isdirectory(s:plugin_dir)
            call mkdir(s:plugin_dir, 'p')
        endif
        execute '!git clone --depth=1 https://github.com/' . a:repo . ' ' . shellescape(path)
    endif
  
    execute 'set runtimepath+=' . fnameescape(path)
endfunction

call s:ensure('ojroques/vim-oscyank')
call s:ensure('tpope/vim-commentary')
call s:ensure('preservim/nerdtree')

call s:ensure('joshdick/onedark.vim')
call s:ensure('vim-airline/vim-airline')
call Sourcec('airline_onedark.vim')
call Sourcec('airline.vim')

call s:ensure('mg979/vim-visual-multi')
call s:ensure('/jiangmiao/auto-pairs')
call s:ensure('jeetsukumaran/vim-buffergator')
call s:ensure('junegunn/fzf')
call s:ensure('junegunn/fzf.vim')

call s:ensure('nathanaelkane/vim-indent-guides')
call s:ensure('sheerun/vim-polyglot')
" " won't source with glorified git wrapper so i have to do it myself
" call Sourcec('plugins/vim-indent-guides/autoload/color_helper.vim')
" call Sourcec('plugins/vim-indent-guides/autoload/indent_guides.vim')
" call Sourcec('plugins/vim-indent-guides/plugin/indent_guides.vim')
" 
" let g:indent_guides_guide_size=1
" let g:indent_guides_start_level=2
" IndentGuidesEnable

call s:ensure('neoclide/coc.nvim --branch=release')
call Sourcec("coc.vim")
