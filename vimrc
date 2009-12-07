""""""""""""""""""""""""""""""""""""""""""""""""""
"   $Id: vimrc 82 2009-12-07 00:34:56Z triobird $
"
"   usage:
"	source this script in $MYVIMRC
"
""""""""""""""""""""""""""""""""""""""""""""""""""

" "=============================================="
" global menus and mappings
" "----------------------------------------------"

" <C-S> save
noremap <unique> <C-S> :w<CR>
inoremap <unique> <C-S> <ESC><ESC>:w<CR>a
" <C-Q> close
noremap <unique> <C-Q> :close<CR>
" v_<C-X> del into clipboard - cut
vnoremap <unique> <C-X> "+x
" v_<C-Y> yank into clipboard - copy
vnoremap <unique> <C-Y> "+y
" <C-P> put from clipboard - paste
noremap <unique> <C-P> "+gp
" toggle taglist <F11>
noremap <unique> <F11> :TlistToggle<CR>
" toggle project <F12>
" mapped in plugin - project
" toggle spell <C-F2>
noremap <unique> <silent> <C-F2> :if &spell<Bar>set nospell<Bar>echo 'spell off'<Bar>else<Bar>set spell<Bar>echo 'spell on'<Bar>endif<CR>
" toggle number <C-F3>
noremap <unique> <silent> <C-F3> :if &number<Bar>set nonumber<Bar>echo 'number off'<Bar>else<Bar>set number<Bar>echo 'number on'<Bar>endif<CR>
" toggle toolbar <C-F4>
noremap <unique> <silent> <C-F4> :if &guioptions =~# 'T'<Bar>set guioptions-=T<Bar>else<Bar>set guioptions+=T<Bar>endif<CR>

" "=============================================="
" fonts and appearance
" "----------------------------------------------"
colorscheme viming
if has('x11')
    set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
    set printfont=Bitstream\ Vera\ Sans\ Mono\ 10
endif

" guioptions
set guioptions-=L

" set statusline
set laststatus=2
set statusline=
set statusline+=[#%n] "buffer number
set statusline+=%1*[%5.20t]%*  "file name (tail)
set statusline+=%2*%m%*   "modified flag
set statusline+=%<    "truncate here
set statusline+=%r        "readonly flag
"set statusline+=%h        "help flag
set statusline+=[%{&ff}]  "fileformat
set statusline+=[%{&fileencoding}] "fileencoding
set statusline+=%y      "filetype
set statusline+=%=      "aligning separator
set statusline+=[%02Bh]  "char hex value
set statusline+=[%l,%c%V] "line num and column num
set statusline+=[%P]      "percentage

" "=============================================="
" i18n & l10n
" "----------------------------------------------"
" language messages C
set nospell
set spelllang=en,zh
set fileencodings=ucs-bom,utf8,chinese,taiwan,latin1

" "=============================================="
" format
" "----------------------------------------------"
set tabstop=8
set softtabstop=4
set shiftwidth=4
set textwidth=75
set formatoptions-=tc
set formatoptions+=mB
set fileformats=unix,dos

" "=============================================="
" other options
" "----------------------------------------------"
syntax on
set incsearch
set hlsearch
set showcmd
set nobackup
set autoindent
set smartindent
set noerrorbells
set novisualbell
set modeline
set nofoldenable
set cursorline
set backspace=2
set foldcolumn=1
set timeoutlen=3000
"set autochdir

" "=============================================="
" filetype ALL
" "----------------------------------------------"
filetype plugin on
filetype indent on

" "=============================================="
" filetype python
" "----------------------------------------------"
let python_highlight_all = 1
" set tab settings for python
autocmd FileType python
    \   setlocal tabstop=8      |
    \   setlocal softtabstop=4  |
    \   setlocal shiftwidth=4   |
    \   setlocal expandtab
" set makeprg
autocmd FileType python
    \   setlocal makeprg=python\ %
" new file template
autocmd BufNewFile *.py exe "normal a#!/usr/bin/env python\<CR># -*- coding: utf8 -*-\<CR>"

" "=============================================="
" filetype html xml xhtml
" "----------------------------------------------"
autocmd FileType html
    \	setlocal softtabstop=2	|
    \	setlocal shiftwidth=2
autocmd FileType xml
    \	setlocal softtabstop=2	|
    \	setlocal shiftwidth=2
autocmd FileType xhtml
    \	setlocal softtabstop=2	|
    \	setlocal shiftwidth=2

" "=============================================="
" filetype tex
" "----------------------------------------------"
let g:tex_flavor = 'latex'
let g:tex_fold_enabled = 1
autocmd FileType tex
    \	setlocal spell |
    \	setlocal softtabstop=2 |
    \	setlocal shiftwidth=2  |
    \   setlocal foldlevel=1

" "=============================================="
" plugin - bufexplorer
" "----------------------------------------------"
noremap <unique> <silent> <C-F12> :BufExplorer<CR>
menu &Plugin.&BufExplorer<Tab><C-F12> <C-F12>

" "=============================================="
" plugin - calendar
" "----------------------------------------------"
noremenu &Plugin.&Calendar :Calendar<CR>

" "=============================================="
" plugin - latexsuite
" "----------------------------------------------"
set grepprg=grep\ -nH\ $*
let g:Tex_SmartKeyQuote=0
let g:Tex_DefaultTargetFormat="pdf"
let g:Tex_MultipleCompileFormats="dvi,pdf"
let g:Tex_ViewRule_dvi="xdg-open"
let g:Tex_ViewRule_ps="xdg-open"
let g:Tex_ViewRule_pdf="xdg-open"
let g:Tex_UseMakefile=0
let g:Tex_Menus=0
let g:Tex_AutoFolding=0

" "=============================================="
" plugin - project
" "----------------------------------------------"
let g:proj_flags="gimsStT"
menu &Plugin.&Project<Tab><F12>  <F12>
if has('x11')
    let g:proj_run1="silent !xdg-open %F"
endif

" "=============================================="
" plugin - taglist
" "----------------------------------------------"
let Tlist_Show_Menu=1
if !has('gui')
    let Tlist_Inc_Winwidth=0
endif
" toggle taglist menu
menu T&ags.&TlistToggle<Tab><F11> <F11><CR>

" "=============================================="
" plugin - others
" "----------------------------------------------"
let g:loaded_randomhelp = 1
