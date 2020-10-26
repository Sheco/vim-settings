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
nmap <C-P> :Files<cr>

" Control-B will load the buffexplorer
nmap <C-B> :Buffers<cr>

set nostartofline

" Make page up and page down smarter...  without this, 
" paging in one direction and then going back in the
" other direction leads to having the cursor in a 
" different possition which can be confusing
nnoremap <silent> <PageUp> 1000<C-U>
nnoremap <silent> <PageDown> 1000<C-D>

