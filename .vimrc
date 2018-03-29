set tabstop=4       "How big is a tab?
set softtabstop=4   "How many spaces should be intrepreted as a soft tab (for backspace)
set expandtab       "use spaces instead of tabs (soft tabs)
set shiftwidth=4    "How much should the width of 'tab columns' be? (also for << and >>)
set smarttab        "use smart tabs
set autoindent      "use autoindentation 

set laststatus=1    "Add status bar sometimes

syntax enable   " enable syntax highlighting

set t_Co=256
set t_ut=
colo codedark
set number "Synatx highlighting
let loaded_matchparen = 1 " Disable the matched parentheses highlighting

" disable vi compatibility (emulation of old bugs)
set nocompatible

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

set hlsearch        "Highlight things that get searched for

" https://youtu.be/XA2WjJbmmoM 
filetype plugin on
set path+=**
set wildmenu
command! MakeTags !ctags -R .
set showcmd

"set folding to work: zo to open, zc to close. zM to close all, zR to open all
set foldmethod=syntax
"disable fold highlight
hi Folded guibg=NONE ctermbg=NONE
set foldnestmax=1

"set custom text for folding
let custom_foldtext_max_width=100
so ~/.vim/CustomFoldText.vim

"This unsets the "last search pattern" register by hitting return
"nnoremap <CR> :noh<CR><CR>

filetype on
au BufNewFile,BufRead *.tpp set filetype=cpp

set shm=filnxtToOsIF
set cmdheight=2
