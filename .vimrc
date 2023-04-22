syntax on                        "set syntax highlight on
set nu                           "set line numbers

"Highlighting
set incsearch                    "Incremental search. Highlight as you type
set hlsearch                     "Highlight search results once typed

"Backup
set nobackup

set laststatus=2
set statusline=%f
set statusline+=\ 
set statusline+=%y
set statusline+=%=
set statusline+=[%4l]
set statusline+=[%4L]

"Indentation
filetype indent on             "Turns on autoindent based on file type.
filetype plugin on
set autoindent                 "Auto indentation
set expandtab                  "Convert tabs to spaces
set tabstop=2                  "Sidth of a tab
set softtabstop=2              "width of a tab when back_key or tab_key is pressed
set shiftwidth=2               "width of tab on indentation
set smartindent

"Status
set showcmd
set ruler

"wrap
set wrap

" Color
colo slate

let mapleader=","

"Custom mappings
noremap <leader><space> :set relativenumber!cr>
noremap <leader>ev :vsplit $MYVIMRC<cr>
inoremap <tab> <C-p>
inoremap " ""<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap ( ()<Left>

"Switching buffer
nnoremap <leader>nb :bnext<cr>
nnoremap <leader>np :bprev<cr>

"Custom mapping 
inoremap <c-d> <esc>dd$a
inoremap <c-a> <esc>ggVG
inoremap <leader>j <esc>
inoremap .f <esc>Wa
inoremap .b <esc>Ba
inoremap .B <esc>0i
inoremap .F <esc>$a

"writting a file
nnoremap <leader>w :w<cr>
inoremap <C-v> :<C-r>

"auto indent
autocmd BufWritePre * :normal gg=G``

"corrections mappings for .js files
inoremap <C-f> <esc>^ifunction <esc>$a() {<cr>}<esc>O 
inoremap <leader>i <esc>^iif (<esc>$a) {<cr>}<esc>O
inoremap <leader>e <esc>^iif (<esc>$a) {<cr>} else {<cr>  <cr>}<Up><Up><esc>O
inoremap <leader>w <esc>^iwhile (<esc>$a) {<cr>}<esc>O

inoremap <leader>cd <esc>yypa

inoremap <leader>f <esc>^ifor (<esc>$a) {<cr>}<esc>)O

inoremap <leader>s <esc>^iswitch (<esc>$a) {<cr>case 1 :<cr>case 2 :<cr>case 3 :<cr>default :<cr>}<esc>4kf:a

autocmd Filetype javascript nnoremap <leader>c I// 

vnoremap <c-y> "*y

inoremap jk <esc>

inoremap <c-s> <esc>:w<cr>

nnoremap <leader>q :q!

nnoremap <c-u> bgUw

"finding files:
set path+=**

"display all matching files when tab complete
set wildmenu 

