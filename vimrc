command -nargs=1 FullSearch call FullSearch(<f-args>)
function! FullSearch(word)
  execute 'vimgrep' '/'.a:word.'/j' 'php_*/*.php' 'php_*/*.inc' 'php_*/*.js' 'php_*/*.css'
  cw
endfunction

syntax on
filetype plugin indent on
set ts=4 sw=4 expandtab
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END
set number
colorscheme mydarkblue
"colorscheme molokai
"colorscheme xcode-default
"colorscheme gruvbox
"colorscheme polar
"colorscheme shirotelin
"colorscheme github
"colorscheme rigel
"colorscheme ChocolateLiquor
"colorscheme fromthehell
"colorscheme magicka
"colorscheme night-owl
"colorscheme eclipse
"colorscheme ice-age
"colorscheme tone
"colorscheme red_alert
"colorscheme red_owl
"packadd! dracula
"colorscheme dracula
"packadd! bluewery
"colorscheme bluewery
"colorscheme bluewery-light
"" For dark
"colorscheme bluewery
"let g:lightline = { 'colorscheme': 'bluewery' }

"" For light
"colorscheme bluewery-light
"let g:lightline = { 'colorscheme': 'bluewery_light' }
"colorscheme blue
set termguicolors
set bg=dark
"set bg=light
set encoding=utf-8
set noswapfile
set nobackup
set noundofile
set ambiwidth=double "全角記号が表示されない件の解消
set ignorecase

set runtimepath+=~/.vim/nerdtree
set runtimepath+=~/.vim/vim-haskell-indent/
"set runtimepath+=~/.vim/haskell-vim/
set runtimepath+=~/.vim/taglist.vim
set runtimepath+=~/.vim/SrcExpl
set runtimepath+=~/.vim/winresizer
set runtimepath+=~/.vim/colors
set tags=.tags,tags;
nnoremap <silent><C-n> :NERDTree<CR>
set hlsearch
set t_Co=256
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=0
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
    cs add cscope.out
  " else add database pointed to by environment 
  elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
  endif
  set csverb
  set cscopequickfix=s-,c-,d-,i-,t-,e-
endif
let NERDTreeWinSize=20
set wildmenu " complement command
set fileencodings=iso-2022-jp,sjis,utf-8
