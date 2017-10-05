set relativenumber
set number
set encoding=utf8
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

call plug#begin('~/.local/share/nvim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ryanoasis/vim-devicons'
" Plug 'Valloric/YouCompleteMe'

call plug#end()

syntax on
colorscheme onedark

if has('nvim')
	set runtimepath+=/usr/share/vim/vimfiles
endif

let NERDTreeIgnore = ['\.pyc$', '__pycache__']
map <C-n> <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup =1
"
" YouCompleteMe setup
let g:ycm_server_python_interpreter = 'python2'
let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_python_binary_path = 'python'
let g:ycm_autoclose_preview_window_after_insertion = 1
"
" Vim-airline setup
let g:airline_powerline_fonts = 1
