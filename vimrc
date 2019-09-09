" Usage:
"   Remove ~/.vimrc OR source this file in ~/.vimrc

colorscheme torte

" plug begin
if has('win32')
  call plug#begin('~/vimfiles/plugged')
else
  call plug#begin('~/.vim/plugged')
endif  

Plug 'jlanzarotta/bufexplorer'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/taglist.vim'

" Initialize plugin system
call plug#end()
