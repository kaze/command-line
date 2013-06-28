nnoremap <leader>g :set operatorfunc=<SID>AgOperator<cr>g@
vnoremap <leader>g :<c-u>call <SID>AgOperator(visualmode())<cr>

function! s:AgOperator(type)
  let saved_unnamed_register = @@ 
   
  if a:type ==# 'v'
    execute "normal! `<v`>y"
  elseif a:type ==# 'char'
    execute "normal! `[v`]y"
  else
    return
  endif

  silent execute "Ag! -R " . shellescape(@@) . " ."
  copen

  let @@ = saved_unnamed_register
endfunction
