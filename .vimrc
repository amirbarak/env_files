set nocompatible
set exrc
filetype off

set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Plugin 'wincent/command-t'
Plugin 'jremmen/vim-ripgrep'
Plugin 'junegunn/fzf.vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'szw/vim-tags'
Plugin 'Tagbar'
Plugin 'joshdick/onedark.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'mkitt/tabline.vim'
Plugin 'vim-scripts/gtags.vim'
Plugin 'tpope/vim-commentary'
Plugin 'Chiel92/vim-autoformat'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Tmux
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()

let mapleader=","
set rtp+=~/.fzf

filetype plugin on
filetype plugin indent on

set noswapfile
set splitbelow
set splitright
set encoding=utf-8

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
map <leader>t :FZF<cr>
map <leader>nn :NERDTreeToggle<cr>
map <C-g> :FzfRg <C-R><C-W><cr>

map <C-x>x diw
map <C-x>c yiw
map <C-x>v ciw<C-r>0<ESC>

set number
set relativenumber
syntax on
set tabstop=4

set tags=./tags;

let g:fzf_command_prefix = 'Fzf'

let g:clang_format#command='clang-format'
"let g:ycm_server_log_level = 'debug'

" YCM use ctags
let g:ycm_collect_identifiers_from_tags_files = 1

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
