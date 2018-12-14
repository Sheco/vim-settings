let mapleader = ',' 

" my favorite tabs are 4 spaces
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" javascript standard calls for 2 space indentation levels
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType html setlocal ts=2 sts=2 sw=2

" avoid wordwrapping and show a vertical line at column 80
set wrap
set virtualedit=all
set linebreak
set colorcolumn=80
" hidden buffers, you can switch between files and the changes don't
" have to be written to disk until you're ready to save everything
" you want to use :wa for that
set hidden

set termguicolors
" The following is needed in tmux/screen
" :help xterm-true-color
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" splits
set splitbelow
set splitright

" the default updatetime of 4000 is too long for some tools
" like gitgutter
set updatetime=400

" hide dotfiles in the netrw explorer, show them using gh
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

"let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" the standard linter works fine
let g:ale_linters = {'javascript': ['standard']}
let g:ale_fixers = {'javascript': ['standard'], 'html': ['prettier']}
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'

let g:ale_completion_enabled = 0

let g:flow#enable = 0

"--- autocommands
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

" I like dark color schemes
set background=dark
try
    colorscheme nova
catch
endtry


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
