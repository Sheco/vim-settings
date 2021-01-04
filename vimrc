packadd vim-polyglot

let g:coc_disable_startup_warning = 1

:set directory=~/.vim/swapfiles//

set number
nnoremap <Leader>2 :set number!<CR>:call ToggleSignColumn()<CR>

" Toggle signcolumn. Works only on vim>=8.0 or NeoVim
function! ToggleSignColumn()
    if !exists("b:signcolumn_on") || b:signcolumn_on
        set signcolumn=no
        let b:signcolumn_on=0
    else
        set signcolumn=auto
        let b:signcolumn_on=1
    endif
endfunction
