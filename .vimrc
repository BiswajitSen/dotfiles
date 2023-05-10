"set color format 257
set t_Co=256
set termguicolors
colorscheme base16-gigavolt

syntax on                        "set syntax highlight on
set nu                           "set line numbers
set encoding=UTF-8
"set cursorline

"Highlighting
set incsearch                    "Incremental search. Highlight as you type
set hlsearch                     "Highlight search results once typed
nohl

syntax enable
filetype indent on

"Backup
set nobackup
set noswapfile 

set autoindent                 "Auto indentation
set expandtab                  "Convert tabs to spaces
set tabstop=2                  "width of a tab
set softtabstop=2              "width of a tab when back_key or tab_key is pressed
set shiftwidth=2               "width of tab on indentation
set smartindent
set backspace=indent,eol,start

"Status
set showcmd
set ruler
set noshowmode

"wrap
set wrap

if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

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

"writing a file
nnoremap <leader>w :w<cr>
inoremap <C-v> <C-r>
nnoremap <leader>sv :source $MYVIMRC<cr>

"auto indent
autocmd BufWritePre * :normal gg=G``

"corrections mappings for java-script files
inoremap <leader>cd <esc>yypa
vnoremap <c-y> "*y
inoremap <c-s> <esc>:w<cr>
nnoremap <leader>q :q!<cr>
nnoremap <c-u> bgUw
nnoremap <c-n> :bn<cr>

set wildmenu                      "display all matching files when tab complete

"Mappings for nerd tree
nnoremap <leader>t :NERDTreeToggle<cr>

"Themes configuration
set background=dark

"Airline modification
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'dracula'

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1

"Nerd Tree configuration 
let NERDTreeMinimalUI=1           "Remove nerd tree help icon
let g:NERDTreeFileExtensionHighlightFullName=1
let g:NERDTreeExactMatchHighlightFullName=1
let g:NERDTreePatternMatchHighlightFullName=1
let g:NERDTreeHighlightFolders=1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName=1 " highlights the folder name

if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

inoremap <leader>d describe('', function() {<cr>it('', function() {<cr>  deepStrictEqual(actual(), expected);<cr>});<cr>});
