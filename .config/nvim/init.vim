" set relativenumber
" set number
" set encoding=utf8

call plug#begin('~/.local/share/nvim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ryanoasis/vim-devicons'

call plug#end()

syntax on
colorscheme onedark

let NERDTreeIgnore = ['\.pyc$', '__pycache__']
map <C-n> <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup =1
"
" YouCompleteMe setup
" let g:ycm_python_binary_path = 'python'
" let g:ycm_autoclose_preview_window_after_insertion = 1
"
" Vim-airline setup
let g:airline_powerline_fonts = 1
