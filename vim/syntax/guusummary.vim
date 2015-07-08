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

syntax region guuString oneline matchgroup=Comment concealends
  \ start='\\s|' end='|s\\' contains=@NoSpell,guuArgument
highlight guuString ctermfg=Yellow
nnoremap <buffer> <LocalLeader>s a\s\|\|s\<++><ESC>6hi
