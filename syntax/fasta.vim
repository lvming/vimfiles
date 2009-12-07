" Vim syntax file
" Filetype: fasta
"
if exists("b:current_syntax")
    finish
endif

syntax match fastaA /[Aa]\+/ contained
syntax match fastaT /[Tt]\+/ contained
syntax match fastaU /[Uu]\+/ contained
syntax match fastaC /[Cc]\+/ contained
syntax match fastaG /[Gg]\+/ contained
syntax match fastaN /[Nn]\+/ contained
syntax cluster fastaBase contains=fastaA,fastaT,fastaU,fastaC,fastaG,fastaN
highlight fastaA ctermfg=green guifg=green
highlight fastaT ctermfg=red guifg=red
highlight fastaU ctermfg=magenta guifg=magenta
highlight fastaC ctermfg=cyan guifg=cyan
highlight fastaG ctermfg=brown guifg=brown
highlight fastaN ctermfg=yellow guifg=yellow

syntax match fastaTitleMarker /^>/ nextgroup=fastaTitle
syntax match fastaTitle /.*$/ contained nextgroup=fastaSeq skipnl
syntax region fastaSeq start=/[^>]/ end=/>/me=s-1 fold transparent contained contains=@fastaBase
highlight fastaTitleMarker ctermfg=red guifg=red
highlight fastaTitle ctermfg=blue guifg=blue

syntax sync match fastaSync grouphere fastaSeq /^>.*/

let b:current_syntax = "fasta"
