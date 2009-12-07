" Vim filetype detection file
" Filetype: genbank
"
" genbank dna sequence file format

au BufNewFile,BufRead *.{genbank,gbk}
    \   set filetype=genbank
au BufNewFile,BufRead *
    \   if (getline(1) =~ "^LOCUS") |
    \       set filetype=genbank  |
    \   endif
