
" make sure tabs stuff works
set tabstop=2       "How big is a tab?
set softtabstop=2   "How many spaces should be intrepreted as a soft tab (for backspace)
set expandtab       "use spaces instead of tabs (soft tabs)
set shiftwidth=2    "How much should the width of 'tab columns' be? (also for << and >>)
set smarttab        "use smart tabs
set autoindent      "use autoindentation 

set laststatus=1    "Add status bar sometimes

syntax enable   " enable syntax highlighting

" make sure that colors work
set t_Co=256
set t_ut=

colo codedark "use the code dark color scheme
set number " enable line numbers 
set syntax=on "Synatx highlighting
let loaded_matchparen = 1 " Disable the matched parentheses highlighting

" disable vi compatibility (emulation of old bugs)
set nocompatible

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

set hlsearch        "Highlight things that get searched for

" https://youtu.be/XA2WjJbmmoM 
" the 90% of plugins video
filetype plugin on
"set path+=**
set wildmenu
"command! MakeTags !ctags -R .
"command! MakeImpl %s/;/ {\r    \r}\r/g
set showcmd

"set folding to work: zo to open, zc to close. zM to close all, zR to open all
set foldmethod=syntax
"disable fold highlight
hi Folded guibg=NONE ctermbg=NONE
set foldnestmax=1 " only fold the first level (functions)
set foldlevelstart=99 " make sure folds are open on file open

"set custom text for folding
let custom_foldtext_max_width=100
so ~/.vim/CustomFoldText.vim "modified custom text 

"This unsets the "last search pattern" register by hitting return
"nnoremap <CR> :noh<CR><CR>
" commented because i normally do :noh

" set filetypes for unusual extensions
filetype on
" C++ templates/templitized headers
au BufNewFile,BufRead *.tpp set filetype=cpp
" Coq proof files
au BufRead,BufNewFile *.v   set filetype=coq

" Salesforce propreitary files
au BufNewFile,BufRead *.ds set filetype=typescript
au BufNewFile,BufRead *.isml set filetype=html

" some weird af thing
set shm=filnxtToOsIF

set cmdheight=2

" get backspace to work in insert 
set backspace=indent,eol,start

let g:rainbow_conf = {
\'ctermfgs': ['red', 'yellow', 'green'],
\ 'separately': {
\   'ocaml': {
\     'parentheses': ['start=/(\*\@!/ end=/)/ fold'],
\   }
\ }
\}

let rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

" get coq to work with binds with the coq proof assistant plugin
nnoremap <F2> :CoqNext<CR>
nnoremap <F3> :CoqRewind<CR>
nnoremap <F4> :CoqToCursor<CR>

