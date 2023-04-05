"set grepprg=rg\ --vimgrep\ --hidden
"set grepformat=%f:%l:%c:%m

" ripgrep

scriptversion 4

function! grep#Run(count, query)
  let query = a:query
  let count = a:count

  if count > 0
    let query = s:GetMotion('gv')
  elseif query == ''
    let query = expand('<cword>')
  endif

  exe 'grep '.. shellescape(query)
  copen
endfunction


function s:GetMotion(motion)
    let saved_register = getreg('a')
    defer setreg('a', saved_register)

    exe 'normal! ' .. a:motion .. '"ay"
    return = @a
endfunction
