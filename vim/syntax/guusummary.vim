" Option

setlocal tags=./guutags
setlocal conceallevel=3

" Highlight

syntax region guuTag oneline matchgroup=Comment concealends conceal
  \ start=/\\tag|/ end=/|tag\\/ contains=@NoSpell
highlight guuTag ctermfg=DarkMagenta

syntax region guuArgument oneline matchgroup=Comment concealends
  \ start='\\a|' end='|a\\' contains=@NoSpell
highlight guuArgument ctermfg=Red
nnoremap <buffer> <LocalLeader>a a\a\|\|a\<++><ESC>6hi
