let mapleader = ',' 

" my favorite tabs are 4 spaces
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

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
