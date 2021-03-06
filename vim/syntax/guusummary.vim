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

syntax region guuOption oneline matchgroup=Comment concealends
  \ start='\\o|' end='|o\\' contains=@NoSpell,guuArgument
highlight guuOption ctermfg=Magenta
nnoremap <buffer> <LocalLeader>o a\o\|\|o\<++><ESC>6hi

syntax region guuString oneline matchgroup=Comment concealends
  \ start='\\s|' end='|s\\' contains=@NoSpell,guuArgument
highlight guuString ctermfg=Yellow
nnoremap <buffer> <LocalLeader>s a\s\|\|s\<++><ESC>6hi

syntax region guuItem oneline matchgroup=Comment concealends
  \ start='\\i|' end='|i\\' contains=@NoSpell,guuArgument
highlight guuItem ctermfg=Green
nnoremap <buffer> <LocalLeader>i a\i\|\|i\<++><ESC>6hi

syntax region guuCommand oneline matchgroup=Comment concealends
  \ start='\\c|' end='|c\\'
  \ contains=@NoSpell,guuCommandArgument,guuSpecialArgument
highlight guuCommand ctermbg=Yellow ctermfg=Black
nnoremap <buffer> <LocalLeader>c a\c\|\|c\<++><ESC>6hi
syntax region guuCommandArgument oneline matchgroup=Comment concealends
  \ contained start='\\a|' end='|a\\' contains=@NoSpell
highlight guuCommandArgument ctermbg=Yellow ctermfg=Red
syntax region guuSpecialArgument oneline matchgroup=Comment concealends
  \ contained start='\\s|' end='|s\\' contains=@NoSpell
highlight guuSpecialArgument ctermbg=Yellow ctermfg=Blue
nnoremap <Left> a\c\|\s\|<C->\|s\\|c\<++><ESC>10hi
