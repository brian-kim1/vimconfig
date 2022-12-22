" Turn on line numbers
set number

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
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-highlightedyank'
Plug 'justinmk/vim-sneak'
call plug#end()

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Confiure highlightedyank highlight duration
let g:highlightedyank_highlight_duration = 1500

" Enable labels for vim-sneak
let g:sneak#label = 1

