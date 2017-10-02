set nocompatible 
set exrc
filetype off 

set runtimepath+=~/.vim_runtime
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'wincent/command-t'
Plugin 'rhysd/vim-clang-format'
Plugin 'szw/vim-tags'
Plugin 'Tagbar'
Plugin 'ervandew/ag'

" Tmux
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()

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

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

set number
set relativenumber

set tags=./tags;

let g:clang_format#command='clang-format-3.9'

set secure
