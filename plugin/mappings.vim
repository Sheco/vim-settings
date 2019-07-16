" In my environment, Shift-arrows are reserved to switch between
" tmux tabs, so shift-h and shift-l are then used to switch between 
" vim buffers
nmap <S-H> :bp<cr>
nmap <S-L> :bn<cr>

" ,, will jump to the previous window
nmap <Leader>, <C-W><C-W>
" ,c will close the current window
nmap <Leader>c <C-W>c

" Control-P will load the fuzzy file finder
nmap <C-P> :FZF<cr>

" Control-B will load the buffexplorer
nmap <C-B> <Leader>be

set nostartofline
nnoremap <silent> <PageUp> 1000<C-U>
nnoremap <silent> <PageDown> 1000<C-D>


" <leader>u removes marks, useful when you want to copy text
" but there are marks on the left side
noremap <silent> <leader>u :sign unplace *<CR>

nmap - <Leader>f<CR>
