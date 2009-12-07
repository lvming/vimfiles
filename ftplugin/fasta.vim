" Vim filetype plugin file
" Filetype: fasta

if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

setlocal foldmethod=syntax

" show the base count of the seq under the cursor
nnoremap <unique> <buffer> <script> <LocalLeader>bc :call <SID>BaseCountCurrent()<CR>
" show the base count of the selected area
vnoremap <unique> <buffer> <script> <LocalLeader>bc y:echo <SID>BaseCount(@")<CR>
" show the base count of the seq in the range
command -buffer -range BaseCount <line1>,<line2>yank | echo <SID>BaseCount(@")
" show the base offset of the cursor
nnoremap <unique> <buffer> <script> <LocalLeader>bo :echo "Offset:".<SID>BaseOffset(".")<CR>
" show the base range of the selected area
vnoremap <unique> <buffer> <script> <LocalLeader>br :call <SID>BaseRange("'<","'>")<CR>gv

" return the base count of seq
function s:BaseCount(seq)
    let bases = {'N':0, 'A':0, 'T':0, 'C':0, 'G':0}
    let seq = substitute(a:seq, '\H', '', 'g')	    "remove non-letter
    let bases.N = strlen(seq)
    let bases.A = strlen(substitute(seq, '[^aA]', '', 'g'))
    let bases.T = strlen(substitute(seq, '[^tT]', '', 'g'))
    let bases.C = strlen(substitute(seq, '[^cC]', '', 'g'))
    let bases.G = strlen(substitute(seq, '[^gG]', '', 'g'))
    return bases
endfunction

" return the seq line range under the cursor
" (including the comment line '>...')
function s:SeqLineRange()
    let s = searchpos('^>','bcnW')[0]
    let e = searchpos('^>','nW')[0]
    if s == 0
	return [0, 0]
    endif
    if e == 0
	let e = line("$")
    else
	let e -= 1
    endif
    let e = prevnonblank(e)
    return [s, e]
endfunction

" show seq base count under the cursor
function s:BaseCountCurrent()
    let [s, e] = s:SeqLineRange()
    let bases = s:BaseCount(join(getline(s+1, e)))
    echo bases
endfunction

"return offset of the base given by expr, see line({expr})
function s:BaseOffset(expr)
    let line_begin = s:SeqLineRange()[0]
    let seqs = getline(line_begin+1, a:expr)
    let col = getpos(a:expr)[2]
    let seqs[-1] = strpart(seqs[-1], 0, col)
    let seq = join(seqs)
    return s:BaseCount(seq).N
endfunction

"show range of the selected bases
function s:BaseRange(expr1,expr2) range
    let offset1 = s:BaseOffset(a:expr1)
    let offset2 = s:BaseOffset(a:expr2)
    echo "FROM:" offset1 "TO:" offset2 "LENGTH:" offset2-offset1+1 "\n"
    return [offset1, offset2]
endfunction



