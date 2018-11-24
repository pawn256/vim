syntax on
set ts=4 sw=4
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
set tags=./tags
nnoremap <silent><C-t> :NERDTree<CR>
set t_Co=256
