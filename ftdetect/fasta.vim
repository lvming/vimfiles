" Vim filetype detection file
" Filetype: fasta
"
" fasta dna sequence file format

au BufNewFile,BufRead *.{fasta,seq}
    \   set filetype=fasta

au BufNewFile,BufRead *
    \   if (getline(1)=~"^>")   |
    \       set filetype=fasta  |
    \   endif
