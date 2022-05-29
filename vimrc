set number
set mouse=a
set syntax=on
set background=dark

let g:airline_theme='onedark'
let g:airline_powerline_fonts=1
call plug#begin()

" aesthetic
Plug 'jsit/disco.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" workflow
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/AutoComplPop'

" syntax
Plug 'dag/vim-fish'
Plug 'Fymyte/rasi.vim'
Plug 'baskerville/vim-sxhkdrc'
Plug 'mattn/emmet-vim'
call plug#end()
colorscheme disco
