" vim: fdm=marker sts=2 sw=2
" Usage:
"   Remove ~/.vimrc OR source this file in ~/.vimrc

" GUI {{{
syntax on
colorscheme torte
set laststatus=2
set statusline=
set statusline+=[#%n] "buffer number
set statusline+=[%5.20t] "file name (tail)
set statusline+=%m "modified flag
set statusline+=%< "truncate here
set statusline+=%r "readonly flag
set statusline+=%h "help flag
set statusline+=[%{&ff}] "fileformat
set statusline+=[%{&fileencoding}] "fileencoding
set statusline+=%y "filetype
set statusline+=%{FugitiveStatusline()}
set statusline+=%= "aligning separator
" set statusline+=[%02Bh] "char hex value
set statusline+=[%l,%c%V] "line num and column num
set statusline+=[%P] "percentage
" }}}

" Encoding & Formatting {{{
set fileformats=unix,dos
set fileencodings=utf-8,chinese,latin1
" }}}

" Misc {{{
set incsearch
set hlsearch
set showcmd
set nobackup
set autoindent
set smartindent
set noerrorbells
set novisualbell
set modeline
set cursorline
set backspace=2
" }}}

" Plugin Management {{{
" plug begin
if has('win32')
  call plug#begin('~/vimfiles/plugged')
else
  call plug#begin('~/.vim/plugged')
endif  

Plug 'editorconfig/editorconfig-vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/taglist.vim'

" Initialize plugin system
call plug#end()
" }}}
