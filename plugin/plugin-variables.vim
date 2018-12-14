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

