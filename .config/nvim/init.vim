 set relativenumber
 set number
 set encoding=utf8

 command RP !python %
 command RP2 !python2 %
  "Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
 "If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
 "(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
 if (empty($TMUX))
   if (has("nvim"))
     "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
     let $NVIM_TUI_ENABLE_TRUE_COLOR=1
   endif
   "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
   "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
   " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
   if (has("termguicolors"))
     set termguicolors
   endif
 endif
 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath+=~/.vim/bundle/neobundle.vim/

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!
 NeoBundle 'joshdick/onedark.vim'
 NeoBundle 'scrooloose/nerdtree'
 NeoBundle 'jistr/vim-nerdtree-tabs'
 NeoBundle 'easymotion/vim-easymotion'
 NeoBundle 'valloric/youcompleteme'
 NeoBundle 'ctrlpvim/ctrlp.vim'
 NeoBundle 'vim-airline/vim-airline'
 NeoBundle 'scrooloose/syntastic'
 " NeoBundle 'nvie/vim-flake8'
 NeoBundle 'ryanoasis/vim-devicons'
 NeoBundle 'tpope/vim-fugitive'

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

 " Color scheme
 syntax on
 colorscheme onedark

 " NERDTree setup
 "autocmd vimenter * NERDTree
 "autocmd VimEnter * wincmd p
 "autocmd StdinReadPre * let s:std_in=1
 "autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
 "map <C-n> :NERDTreeToggle<CR>
 "autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
 let NERDTreeIgnore = ['\.pyc$', '__pycache__']
 " NERDTree tabs setup
 map <C-n> <plug>NERDTreeTabsToggle<CR>
 let g:nerdtree_tabs_open_on_console_startup = 1

 " YouCompleteMe setup
 let g:ycm_python_binary_path = 'python'
 let g:ycm_autoclose_preview_window_after_insertion = 1

 " Vim-airline setup
 let g:airline_powerline_fonts = 1

 " Syntastic setup
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 1
 let g:syntastic_check_on_wq = 0
 let g:syntastic_python_checkers=['flake8']
