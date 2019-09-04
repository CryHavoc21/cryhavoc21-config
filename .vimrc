set tabstop=2       "How big is a tab?
set softtabstop=2   "How many spaces should be intrepreted as a soft tab (for backspace)
set expandtab       "use spaces instead of tabs (soft tabs)
set shiftwidth=2    "How much should the width of 'tab columns' be? (also for << and >>)
set smarttab        "use smart tabs
set autoindent      "use autoindentation 

set laststatus=1    "Add status bar sometimes

syntax enable   " enable syntax highlighting

set t_Co=256
set t_ut=
colo codedark
" colo toy-blocks
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
command! MakeImpl %s/;/ {\r    \r}\r/g
set showcmd

"set folding to work: zo to open, zc to close. zM to close all, zR to open all
set foldmethod=syntax
"disable fold highlight
hi Folded guibg=NONE ctermbg=NONE
set foldnestmax=1
set foldlevelstart=99

"set custom text for folding
let custom_foldtext_max_width=100
so ~/.vim/CustomFoldText.vim

"This unsets the "last search pattern" register by hitting return
"nnoremap <CR> :noh<CR><CR>

filetype on
au BufNewFile,BufRead *.tpp set filetype=cpp
au BufRead,BufNewFile *.v   set filetype=coq

set shm=filnxtToOsIF
set cmdheight=2
set backspace=indent,eol,start

let g:rainbow_conf = {
	\	'ctermfgs': ['yellow', 'green', 'red'],
  \	'separately': {
    \		'ocaml': {
    \			'parentheses': ['start=/(\*\@!/ end=/)/ fold'],
    \		}
    \	}
	\}

let rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

nnoremap <F2> :CoqNext<CR>
nnoremap <F3> :CoqRewind<CR>
nnoremap <F4> :CoqToCursor<CR>

