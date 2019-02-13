" Install Vim Plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fsLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  autocmd VimEnter * PlugInstall --sync
endif

call plug#begin('~/.vim/plugged')
Plug 'Sheco/vim-settings'

" tpope's vinegar improves the vim file manager
" the most common shortcut is - you can use it to jump back
" to the current file's directory and then parent directories
Plug 'tpope/vim-vinegar'

" tpope's sensible introduces simple defaults
Plug 'tpope/vim-sensible'

" tpope's eunuch introduces handy commands, for example:
" :SudoWrite when you edited a file as a regular user and want to write to it
Plug 'tpope/vim-eunuch'

" tpope's surround, very handy to change blocks of text, please read
" https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" tpope's fugitive makes it easy to work with git repositories
" :Gwrite is git add %
" :Gread is git checkout % (revert changes)
" :Gblame shows the git blame
" :Gstatus is git status
"   you can press - to stage/unstage a file
"   you can press p to stage/unstage (patch) a file
" :Gcommit opens a buffer to write the commit message
" all this is handy, but sometimes I prefer to use "tig"
Plug 'tpope/vim-fugitive'

" vim-signature adds a new column on the left side with marks for each lie
" for example, in this line, in command mode:
" ma toggle Mark "a"
" dma remove mark "a"
" 'a to jump to mark "a"
" m- to remove the current line's marks
" more info at https://github.com/kshenoy/vim-signature
Plug 'kshenoy/vim-signature'

" vim-airline
Plug 'vim-airline/vim-airline'

" Easy HTML prefilling with css-like syntax
" For example: 
" html:5<C-y>, will type an empty html doc
" div>ul#xx>li.yy*5>a<C-y>, will type <div id="xx"><ul><li class="yy"><a...>
Plug 'mattn/emmet-vim'

" Great asynchronous linter, it works as you type
Plug 'w0rp/ale', {'do': 'npm install -g standard'}

Plug 'flowtype/vim-flow', {'do': 'npm install -g flow-bin'}
Plug 'ajh17/VimCompletesMe'

" programming language plugins
Plug 'mustache/vim-mustache-handlebars'
Plug 'sheerun/vim-polyglot'

" better terminal integration, it improves text pasting and mouse support
Plug 'wincent/terminus'

" show the git status of each line on the vim gutter (left side)
Plug 'airblade/vim-gitgutter'

" nice colorscheme
Plug 'trevordmiller/nova-vim'

Plug 'junegunn/fzf.vim'
Plug 'jlanzarotta/bufexplorer'
call plug#end()


