function! AddTag(name)
  execute "normal A \\tag|".a:name."|tag\\"
  tabedit guutags
  execute "normal o".a:name."\tguusummary\t/\\\\tag|".a:name."|tag\\\\/"
  sort
  silent! write
  silent! execute "/^".a:name."/"
  normal 1gtgg
  silent! execute "tag ".a:name
  normal zz
  return
endfunction
command! -nargs=1 T call AddTag("<args>")

nnoremap <buffer> <SPACE> :tabonly<CR>

