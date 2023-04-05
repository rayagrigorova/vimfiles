function! winmove#Delete()
  call winmove#Yank()
  quit
endfunction

function! winmove#Yank()
  call setreg(v:register,expand('%:p')) 
endfunction

function! winmove#Paste(modifier)
  let path = getreg(v:register)
  if !filereadable(path)
    return 
  endif 

  execute a:modifier .. ' split ' .. path
endfunction

