syntax on

" Remap leader key
let mapleader=","

" set mouse=a

" Disable auto-comment of next line following a commented line
:set formatoptions-=cro

" Show file stats
set ruler

set tabstop=4
set shiftwidth=4
set expandtab

" Remove bold
" set t_md=

" Set the backspace to delete normally
set backspace=indent,eol,start

" Map <Del> key
inoremap <C-d> <Del>

" Highlight all occurrences of word
" set hlsearch

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-highlightedyank'
Plug 'justinmk/vim-sneak'
Plug 'preservim/nerdtree'
Plug 'https://github.com/vim-scripts/RltvNmbr.vim'
" colorschemes
Plug 'morhetz/gruvbox'
Plug 'arzg/vim-colors-xcode'
Plug 'ajmwagar/vim-deus'
Plug 'sainnhe/sonokai'
Plug 'doki-theme/doki-theme-vim'
call plug#end()

" Color settings
set t_Co=256
set background=dark
set termguicolors
colorscheme gruvbox

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

" Turn on absolute and relative line numbers
set number
au VimEnter * RltvNmbr

" Remap , -> \ for vim-sneak
map <Bslash> <Plug>Sneak_,

" maps <c-d> and <c-u> to scroll a popup window
nnoremap <expr> <c-d> popup#scroll_cursor_popup(1) ? '<esc>' : '<c-d>'
nnoremap <expr> <c-u> popup#scroll_cursor_popup(0) ? '<esc>' : '<c-u>'
