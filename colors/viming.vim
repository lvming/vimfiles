" Vim color file
" Maintainer: triobird
" Last Change: 2009-02-20
" grey on black

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "viming"

" Normal
hi Normal ctermfg=White ctermbg=Black
hi Normal guifg=White   guibg=Black
" Search
hi Search ctermfg=Black     ctermbg=Red
hi Search guibg=Black       guibg=Red
" Visual
hi Visual cterm=reverse
hi Visual guibg=Grey30
" Cursor
hi Cursor ctermfg=White ctermbg=Green
hi Cursor guifg=White guibg=Green
" CursorLine
hi CursorLine cterm=NONE
hi CursorLine guibg=Grey15
" CursorColumn
hi! link CursorColumn CursorLine
" Special
hi Special ctermfg=Brown
hi Special guifg=Orange
" Comment
hi Comment ctermfg=Blue
hi Comment guifg=#0080FF
" StatusLineNC
hi StatusLineNC ctermfg=Blue ctermbg=White cterm=reverse
hi StatusLineNC guifg=Blue guibg=White gui=reverse
" StatusLine
hi StatusLine ctermfg=DarkRed ctermbg=White cterm=reverse
hi StatusLine guifg=DarkRed guibg=White gui=reverse
" Statement
hi Statement ctermfg=Yellow
hi Statement guifg=Yellow gui=NONE
" Type
hi Type cterm=NONE
hi Type gui=NONE
" PreProc
hi PreProc ctermfg=Magenta ctermbg=Black
hi PreProc guifg=Magenta guibg=Black
" VertSplit
hi VertSplit ctermfg=Blue ctermbg=White
hi VertSplit guifg=Blue guibg=White
" Folded
hi Folded ctermfg=Cyan ctermbg=Black
hi Folded guifg=Cyan guibg=Grey20
" FoldColumn
hi FoldColumn ctermbg=Black
hi FoldColumn guibg=Grey20
" LineNr
hi LineNr ctermfg=Brown
hi LineNr guifg=Brown
" User
hi User1 ctermfg=Green ctermbg=DarkBlue
hi User1 guifg=Green guibg=DarkBlue
hi User2 ctermfg=Yellow ctermbg=DarkBlue
hi User2 guifg=Yellow guibg=DarkBlue
