" File: randomhelp.vim
"
" show random help when vim starts

if exists("loaded_randomhelp")
    finish
endif
let g:loaded_randomhelp = 1

if exists("RandomHelp_max_argc")
    let s:max_argc = RandomHelp_max_argc
else
    let s:max_argc = 1
endif

command RandomHelp silent! call RandomHelp(999)

augroup RandomHelp
    autocmd! VimEnter * call RandomHelp(s:max_argc)
augroup end

function s:Random(n)
    let us = reltime()[1]
    return us%a:n + 1
endfun

function RandomHelp(max_argc)
    if argc() > a:max_argc
	return
    endif
    silent! help index.txt
    let numlines = line('$')
    let rn = s:Random(numlines)
    call cursor(rn,1)
    call search('^|','cw')
    exe "normal \<C-]>"
    map <buffer> <Space> :close<CR>
    map <buffer> <LeftMouse> :close<CR>
    echo "Press SPACE to close RandomHelp"
endfun




