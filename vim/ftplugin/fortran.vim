vnoremap <buffer> <BS> :s/^/!<CR><C-O>
nnoremap <buffer> <BS> :s/^/!<CR><C-O>
vnoremap <buffer> <SPACE> :s/^\s*\zs!//e<CR><C-O>
nnoremap <buffer> <SPACE> :s/^\s*\zs!//e<CR><C-O>

inoremap <buffer> IMP implicit none
inoremap <buffer> DOU double precision
inoremap <buffer> DIM dimension()<++><C-O>4h
inoremap <buffer> WRI write(*,*)<SPACE>
inoremap <buffer> IIN intent(in)<SPACE>
inoremap <buffer> IOU intent(out)<SPACE>
inoremap <buffer> IIO intent(inout)<SPACE>

setlocal foldmethod=marker
