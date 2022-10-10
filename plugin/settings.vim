"let mapleader = ',' 

" my favorite tabs are 4 spaces
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

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

"--- autocommands
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

" I like dark color schemes
let g:airline_theme = 'codedark'
set background=dark
colorscheme codedark

" vim-svelte
let g:svelte_indent_script = 0
let g:svelte_indent_style = 0
let g:svelte_preprocessors = ['typescript']
