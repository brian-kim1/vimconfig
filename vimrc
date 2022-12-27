" Turn on line numbers
set number

let mapleader=","

syntax on

" set mouse=a

" Show file stats
set ruler

set tabstop=4
set shiftwidth=4
set expandtab

" Remove bold
set t_md=

" Set the backspace to delete normally
set backspace=indent,eol,start

" Highlight all occurrences of word
set hlsearch

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-highlightedyank'
Plug 'justinmk/vim-sneak'
Plug 'preservim/nerdtree'
call plug#end()

" ^\w*map - to see all available commands
" ctrl i o = go back and forth between files
" gd/gr = go declaration, go reference
" lead -> rn = rename

" [g - go to previous compile error/warning
" ]g - go to next compile error/warning

" gd - go to definition (takes you to variables too)
" gy - go to type's definition
" gi - go to implementation (if you're on a method)
" gr - find references 
" :CocInstall coc-pyright
" :CocInstall coc-java
" :CocInstall coc-rust-analyzer
source ~/.vim/coc.vimrc

" Confiure highlightedyank highlight duration
let g:highlightedyank_highlight_duration = 1500

" Enable labels for vim-sneak
let g:sneak#label = 1

