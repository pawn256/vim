command -nargs=1 FullSearch call FullSearch(<f-args>)
function! FullSearch(word)
  execute 'vimgrep' '/'.a:word.'/j' 'php_*/*.php' 'php_*/*.inc' 'php_*/*.js' 'php_*/*.css'
  cw
endfunction

syntax on
filetype plugin indent on
set ts=4 sw=4
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END
set number
"colorscheme darkblue
colorscheme molokai
set encoding=utf-8
set noswapfile
set nobackup
set noundofile

set runtimepath+=$VIM\.vim\nerdtree
set runtimepath+=$VIM\.vim\winresizer
set runtimepath+=$VIM\.vim\colors
set tags=.tags,tags;
nnoremap <silent><C-t> :NERDTree<CR>
"set t_Co=256
