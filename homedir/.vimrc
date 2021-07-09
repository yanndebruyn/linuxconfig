

set nocompatible              " be iMproved, required
filetype off                  " required
  


" =======================
"  GENERAL CONFIGURATIONS
" =======================

" Timeout length
set timeoutlen=1000
set ttimeoutlen=0

" Colors
syntax enable
set background=dark
 
"set usage of 256color for correct colors
if !has('gui_running')
  set t_Co=256
endif



" Spaces & Tabs

syntax on
filetype plugin indent on
set tabstop=2      "number of visual spaces per tab
set softtabstop=2  "number of spaces in tab when editing
set shiftwidth=2   "number of visual spaces after enter after braces
set noexpandtab


" UI Config

set splitbelow splitright "new window split open to the right and below
set number         "show line number 
set relativenumber "show relative numbering

" colors
colorscheme peachpuff

" line numbers color
hi LineNr  ctermfg=DarkGrey ctermbg=NONE 

" cursor line color
set cursorline
hi CursorLine  cterm=bold ctermbg=Black

" vertical split line color
hi VertSplit  ctermfg=Grey ctermbg=Black

" textwidth line color
hi ColorColumn ctermbg=Black

" matching bracket color
hi MatchParen cterm=bold ctermbg=DarkRed ctermfg=white

" comments color
hi Comment ctermfg=Cyan

" set vertical split line character:
set fillchars+=vert:#

" highlight color
hi Search ctermfg=White ctermbg=DarkMagenta
hi IncSearch ctermfg=White ctermbg=Red
hi Visual gui=NONE guibg=White guifg=Black


set wildmenu       "visual autocomplete for command menu
set lazyredraw     "redraw screen only when needed
set showmatch      "highlight matching bracket when cursor is on it
set mouse=a				 "enable mouse support
set wrap					 "text wrapping
set tw=80					 "text width
set colorcolumn=81 "display column at textwidth

" Searching
set incsearch  "Search as characters are entered
set hlsearch   "highligh matches

" Enable Fuzzy Finder in Vim
set rtp+=~/.fzf

" Folding
set foldenable     "enable folding of code
set foldlevelstart=99 "open folds by default
set foldmethod=indent "fold based on indent level


" Immediately detect and apply changes saved to .vimrc. No more typing :so %
augroup myvimrc
    au!
				au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC |
				if has('gui_running') | so $MYGVIMRC | endif 
augroup  END

" Disable some stuff in .tex files because it slows then down:
"au FileType tex setlocal nocursorline
"au FileType tex setlocal nornu
au FileType tex :NoMatchParen

" ===============
"  KEY SHORTCUTS
" ===============
 
let mapleader = ","
 
"jj is escape
inoremap jj <esc>
"remove any search highlights when entering insert mode by emptying search
"register:
autocmd InsertEnter * :let @/ = ""

".. and re-source .vimrc to fix the lightline losing color bug
:map <Leader>q :w<CR>:q<CR>
:map <Leader>w :w<CR>:so ~/.vimrc<CR>:noh<CR>
:map <Leader>x :q<CR>
:map <Leader>/ :noh<CR>
:map <Leader>g :Goyo<CR>:so ~/.vimrc<CR>
:map <C-n> :NERDTreeToggle<CR>

"move vertically by visual line
nnoremap j gj
nnoremap k gk

"insert blank line without going into insert mode
nnoremap oo o<Esc>k
nnoremap OO O<Esc>j
:map <Leader>o :+1d<CR>k
:map <Leader>O :-1d<CR>

"jump to beginning and end of line
nnoremap <C-i> ^
nnoremap <C-a> $
nnoremap d<C-i> d^
nnoremap d<C-a> d$
nnoremap c<C-i> c^
nnoremap c<C-a> c$

" copy visually selected to clipboard
vnoremap <Leader>y "+y 
" paste clipboard
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
" paste primary selection
nnoremap <Leader>b "*p
nnoremap <Leader>B "*P

"Window splits
nnoremap <S-h> :wincmd h<CR>
nnoremap <S-j> :wincmd j<CR>
nnoremap <S-k> :wincmd k<CR>
nnoremap <S-l> :wincmd l<CR>
nnoremap <S-q> :close<CR>
nnoremap <C-s> :sp<CR>
nnoremap <S-s> :vs<CR>
" Remap default key combo for resizing all window splits to 50%
nnoremap <S-x> <C-w>=
" Zoom window split by simultaneously maximizing horizontal and vertical resize
nnoremap <S-z> :resize<CR> \| :vertical resize<CR>
nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>

"Buffers (windows)
"go to next buffer
:map <C-h> :bp<CR>
"go to previous buffer
:map <C-l> :bn<CR>
"close current buffer
:map <C-q> :bd<CR>
":map <Leader>q :bd<CR>

" tabs
nnoremap <C-c> :tabnew %<CR>
nnoremap <C-k> :tabp<CR>
nnoremap <C-j> :tabn<CR>


"LaTeX bindings:
"format current sentence
:map <Leader>ff gqas
"format current paragraph 
:map <Leader>fp gqip
"turn on Dutch spell checking
:map <Leader>z :setlocal spell spelllang=nl<CR>
"find next misspelled word
:map <Leader>] ]s
"find previous misspelled word
:map <Leader>[ [s
"turn off spell checking
:map <Leader>n :set nospell<CR> "correct spelling of current word to first suggestion
:map <Leader>= 1z=

"bindings for .tex files only
au FileType tex nnoremap  <C-c> :! pdflatex %<CR><CR>
au FileType tex nnoremap  <C-x> :! zathura $(echo % \| sed 's/tex$/pdf/') & disown<CR>


" =========================
"  VIM-PLUG PLUGINS
" =========================
  
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" display color names in that color
Plug 'https://github.com/tpope/vim-commentary'
"Plug 'https://github.com/preservim/nerdcommenter'
Plug 'https://github.com/chrisbra/Colorizer'
Plug 'junegunn/goyo.vim'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/vim-scripts/Toggle-NERDTree-width'
Plug 'https://github.com/mattn/emmet-vim'
"Plug 'https://github.com/Valloric/YouCompleteMe'
Plug 'https://github.com/tpope/vim-surround'
"Automatically close html tags when typing '>'
Plug 'https://github.com/alvan/vim-closetag'
"Jump to matching html tag when typing '%'
Plug 'https://github.com/adelarsq/vim-matchit'
"Always highligh matching html tags when cursor is within tag
Plug 'https://github.com/valloric/MatchTagAlways'
Plug 'https://github.com/vim-scripts/Auto-Pairs'
"Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'https://github.com/flazz/vim-colorschemes'
"enable pasting from system clipboard with <Leader>v
"and copying to system clipboard with <Leader>y in visual mode:
"Plug 'https://github.com/enricobacis/paste.vim'
Plug 'https://github.com/itchyny/lightline.vim'
"Line that shows which buffers are open
Plug 'https://github.com/bling/vim-bufferline'
"Asynchronous linter for for fast syntax checking while you type
Plug 'w0rp/ale'
"Fuzzy file finder:
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
"Live html, css and javascript editing
Plug 'turbio/bracey.vim'
"Eunuch - enables a set of bash commands from withing Vim
Plug 'https://github.com/tpope/vim-eunuch.git'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }


"To do:
" syntastic config
" comment plugin
" UltiSnip for custom snippets
" code debug plugins	

" Initialize the plugin system
call plug#end()



" =================
"  PLUGINS SETTING
" =================

" lightline settings
set laststatus=2
set noshowmode "dont display redundant 'normal' or 'insert' words
 
"let g:lightline = {
"      \ 'colorscheme': 'PaperColor',
"      \ }


" bufferline settings
let g:bufferline_modified = '*'
let g:bufferline_active_buffer_left = '|>> '
let g:bufferline_active_buffer_right = '<<|'


" emmet leader key that has to precede ','
let g:user_emmet_leader_key=','


" ale linter
let g:ale_change_sign_column_color = 1

"Vim-closetag settings:
" These are the file extensions where this plugin is enabled:
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
" These are the file types where this plugin is enabled:
let g:closetag_filetypes = 'html,xhtml,phtml'


"Syntastic.vim
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
"let g:syntastic_html_checkers = ['w3', 'tidy', 'validator']


"MatchTagAlways settings:
"use different color for matching html tags than matching brackets
let g:mta_use_matchparen_group = 0
"do not use the default color for matching html tags
let g:mta_set_default_matchtag_color = 0
"set custom color for matching html tags
highlight MatchTag ctermfg=DarkRed ctermbg=LightRed

"Goyo settings:
let g:goyo_linenr = 1
