nnoremap <c-w>d :call winmove#Delete()<cr>
nnoremap <c-w>y :call winmove#Yank()<cr>

nnoremap <c-w>p :call winmove#Paste('rightbelow')<cr>
nnoremap <c-w>P :call winmove#Paste('leftabove')<cr>
nnoremap <c-w>vp :call winmove#Paste('rightbelow vertical')<cr>
nnoremap <c-w>vP :call winmove#Paste('leftabove vertical')<cr>

