" Vim syntax file
" Filetype: genbank
"
if exists("b:current_syntax")
    finish
endif

"general
syntax region gbkField matchgroup=gbkFieldName start=/^[A-Z]\+/ end=/^\([A-Z]\+\|\/\/\)/me=s-1 contains=gbkSubField fold
syntax match gbkEnd /^\/\//
syntax region gbkSubField matchgroup=gbkSubFieldName start=/^\s\{1,10}[A-Z]\+/ end=/^\s\{0,10}[A-Z]\+/me=s-1 contained fold
syntax match gbkLocus /\(^LOCUS\)\@<=.*/ contained containedin=gbkField
syntax match gbkDef /\(^DEFINITION\)\@<=.*/ contained containedin=gbkField
syntax match gbkAccVer /\(^\(ACCESSION\|VERSION\)\)\@<=.*/ contained containedin=gbkField
syntax match gbkRefNum /\(^REFERENCE\s\+\)\@<=\d\+/ contained containedin=gbkField

"features
syntax region gbkFeatures matchgroup=gbkFieldName start=/^FEATURES/ end=/^[A-Z]\+/me=s-1 fold
syntax match gbkLocQual /Location\/Qualifiers/ contained containedin=gbkFeatures
syntax match gbkFeatureName /^ \{5}\w\+\>.*$/ contained  containedin=gbkFeatures
syntax match gbkQualifiers /\/\w\+=/he=e-1 contained containedin=gbkFeatures
syntax region gbkString start=/"/ skip=/\\"/ end=/"/ contained containedin=gbkFeatures

"contig
syntax region gbkContig matchgroup=gbkFieldName start=/^CONTIG/ end=/^\/\//me=s-1 fold
syntax keyword gbkJoin join contained containedin=gbkContig
syntax keyword gbkComplement complement contained containedin=gbkContig
syntax keyword gbkGap gap contained containedin=gbkContig
syntax match gbkContigRecord /[A-Z0-9.]\+\(:\)\@=/ contained containedin=gbkContig
syntax match gbkContigRecordRange /\(:\)\@<=\d\+\.\.\d\+/ contained containedin=gbkContig


"sequences
syntax region gbkSeq matchgroup=gbkFieldName start=/^ORIGIN/ end=/^\/\//me=s-1 fold
syntax match gbkBaseA /[Aa]\+/ contained containedin=gbkSeq
syntax match gbkBaseT /[Tt]\+/ contained containedin=gbkSeq
syntax match gbkBaseC /[Cc]\+/ contained containedin=gbkSeq
syntax match gbkBaseG /[Gg]\+/ contained containedin=gbkSeq
syntax match gbkBaseN /[Nn]\+/ contained containedin=gbkSeq

"general
highlight gbkFieldName ctermfg=yellow guifg=yellow
highlight gbkEnd ctermfg=red guifg=red
highlight gbkSubFieldName ctermfg=green guifg=green
highlight gbkLocus ctermfg=green guifg=green
highlight gbkDef ctermfg=magenta guifg=magenta
highlight gbkAccVer ctermfg=red guifg=red
highlight gbkRefNum ctermfg=red guifg=red

"features
highlight gbkLocQual ctermfg=magenta guifg=magenta
highlight gbkFeatureName ctermfg=green guifg=green
highlight gbkQualifiers  ctermfg=cyan  guifg=cyan
highlight gbkString ctermfg=magenta guifg=magenta

"contig
highlight gbkJoin ctermfg=green guifg=green
highlight gbkComplement ctermfg=cyan guifg=cyan
highlight gbkGap ctermfg=red guifg=red
highlight gbkContigRecord ctermfg=magenta guifg=magenta
highlight gbkContigRecordRange ctermfg=green guifg=green

"sequences
highlight gbkBaseA ctermfg=green guifg=green
highlight gbkBaseT ctermfg=red guifg=red
highlight gbkBaseC ctermfg=cyan guifg=cyan
highlight gbkBaseG ctermfg=brown guifg=brown
highlight gbkBaseN ctermfg=yellow guifg=yellow


syntax sync match gbkSync grouphere gbkSeq /^ORIGIN/

let b:current_syntax = "genbank"
