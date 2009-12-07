" Vim filetype detection file
" Filetype: bitbake
"
" bitbake .bb .bbclass file

au BufNewFile,BufRead *.{bb,bbclass}
    \   set filetype=sh

