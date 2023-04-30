syntax on                        "set syntax highlight on
set nu                           "set line numbers
set encoding=UTF-8
set guifont=Fira\ Code:h12

"Highlighting
set incsearch                    "Incremental search. Highlight as you type
set hlsearch                     "Highlight search results once typed
nohl

"Backup
set nobackup
set noswapfile 

set laststatus=2
set statusline=%f
set statusline+=\ 
set statusline+=%y
set statusline+=%=
set statusline+=[%4l]
set statusline+=[%4L]

"Indentation
filetype indent on             "Turns on autoindent based on file type.
syntax enable
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

"set color format 256
set t_Co=256

let mapleader=","

"Custom mappings
noremap <leader><space> :set relativenumber!cr>
noremap <leader>ev :vsplit $MYVIMRC<cr>
inoremap <tab> <C-p>

"Switching buffer
nnoremap <leader>nb :bnext<cr>
nnoremap <leader>np :bprev<cr>

"Custom mapping 
inoremap <C-a> <esc>ggVG
inoremap jk <esc>
inoremap .f <esc>Wa
inoremap .b <esc>Ba
inoremap .B <esc>0i
inoremap .F <esc>$a

"writting a file
nnoremap <leader>w :w<cr>
inoremap <C-v> :<C-r>
nnoremap <leader>sv :source $MYVIMRC<cr>

"auto indent
autocmd BufWritePre * :normal gg=G``

"corrections mappings for .js files
inoremap <C-f> <esc>^ifunction <esc>$a() {<cr>}<esc>O 
inoremap <leader>i <esc>^iif (<esc>$a) {<cr>}<esc>O
inoremap <leader>w <esc>^iwhile (<esc>$a) {<cr>}<esc>O
inoremap <leader>cd <esc>yypa
vnoremap <c-y> "*y
inoremap <c-s> <esc>:w<cr>
nnoremap <leader>q :q!<cr>
nnoremap <c-u> bgUw

set path+=**                      "finding files:

set wildmenu                      "display all matching files when tab complete
set showmode                      "Show current mode down the bottom

"Mappings for nerd tree
nnoremap <leader>n :NERDTreeToggle<cr>
let NERDTreeMinimalUI=1           "Remove nerd tree help icon

"Themes configuration
set background=dark
colorscheme hybrid

"Airline modification
let g:airline#extensions#tabline#enabled = 1
let g:javascript_plugin_ngdoc = 1

"Nerd Tree config
if exists("g:loaded_webdeviocons")
  call webdevicons#refresh()
endif

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:webdevicons_conceal_nerdtree_brackets = 1
