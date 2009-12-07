" Vim filetype plugin file
" Filetype: genbank

if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

setlocal foldmethod=syntax

nnoremap <silent> <script> <LocalLeader>f :setlocal foldmethod=syntax<CR>:setlocal foldenable<CR>
