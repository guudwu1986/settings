" Highlight

syntax region guuTag oneline matchgroup=Comment concealends conceal
  \ start=/\\tag|/ end=/|tag\\/ contains=@NoSpell
highlight guuTag ctermfg=DarkMagenta
