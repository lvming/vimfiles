" Vim syntax file
" Filetype: sedona
"
if exists("b:current_syntax")
    finish
endif
let b:current_syntax = "sedona"

syntax keyword sedonaKeyword abstract class extends static const inline define public internal protected private property virtual return final native override
syntax keyword sedonaType void bool byte short int long float double Str Buf
syntax keyword sedonaConstant null true false
syntax keyword sedonaStatement if else while do for foreach break continue goto switch case default assert this

syntax match sedonaComment /\/\/.*$/
syntax match sedonaDocComment /\*\*.*$/
syntax match sedonaAnnotation /@\w*/
syntax match sedonaString /".*"/

hi link sedonaKeyword Keyword
hi link sedonaType Type
hi link sedonaConstant Constant
hi link sedonaStatement Statement
hi link sedonaComment Comment
hi link sedonaDocComment Comment
hi link sedonaAnnotation PreProc
hi link sedonaString String

