set nocompatible 
set exrc
filetype off 

set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'wincent/command-t'
Plugin 'rhysd/vim-clang-format'
Plugin 'szw/vim-tags'
Plugin 'Tagbar'
Plugin 'ervandew/ag'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'mkitt/tabline.vim'

" Tmux
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()

let mapleader=","

filetype plugin on
filetype plugin indent on

set splitbelow
set splitright

map <F8> :TagbarToggle<cr>
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
map <C-t>n :tabnew<cr>
map <C-w><Bar> :vsp<cr>
map <S-b> :make cheetah_only<cr>
map <C-w>{ :pc!<cr>
map <leader>ne :cnext

map <C-x>x diw
map <C-x>c yiw
map <C-x>v ciw<C-r>0<ESC>

set number
set relativenumber
syntax on

set tags=./tags;

let g:clang_format#command='clang-format'

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

colorscheme onedark
let g:airline_theme="luna"

set secure
