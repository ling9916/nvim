"
"
"
"
"
"
" ==================== Auto load for first time uses ====================
if empty(glob($HOME.'/.config/nvim/autoload/plug.vim'))
        silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
                                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" ==========
set nocompatible	" limit search to your project
syntax on
set encoding=utf8
"The next three are for the fuzzy search:
set path+=**	" search all subdirectories and recursively
set wildmenu	"shows mutiple matches on one line
set textwidth=70	"auto change line
set fo+=Mm	"chinese change line

set number
set relativenumber

set scrolloff=5




" ==========
let mapleader=","
inoremap jk <ESC>
nnoremap <leader>e :vs $MYVIMRC<CR>
nnoremap <leader>s :source $MYVIMRC<CR>:q<CR>



" ==================== Install Plugins with Vim-Plug ====================
call plug#begin('$HOME/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'



call plug#end()




" ==================== Markdown Settings ====================
" Snippets
source $HOME/.config/nvim/md-snippets.vim
