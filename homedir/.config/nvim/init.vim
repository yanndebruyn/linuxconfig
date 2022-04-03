
set nocompatible              " be iMproved, required
filetype off                  " required

" =======================
"  GENERAL CONFIGURATIONS
" =======================

" =========
" UI Config
" =========
set splitbelow splitright "new window split open to the right and below
set number         "show line number 
set relativenumber "show relative numbering
" set fillchars+=vert:# "set vertical split line character:
set wildmenu       "visual autocomplete for command menu
set lazyredraw     "redraw screen only when needed
set showmatch      "highlight matching bracket when cursor is on it
" set mouse=a				 "enable mouse support
set wrap					 "text wrapping
set tw=80					 "text width
set colorcolumn=81 "display column at textwidth
set laststatus=2   " always show statusline
" build the statusline:
" set statusline=%F\ 										    "column 1: show full path 
set statusline=%{expand('%:p:h:t')}/%t\     "column 1: show current file and parent dir 
set statusline+=%h%w%m%r\ 							    "column 1: show various flags 
set statusline+=%=[PWD=%<%1.{getcwd()}]\ \  "column 3: show present working dir 
set statusline+=%-1.(%l,%c%V%)\ \ %P        "column 4: show line number etc.



" ======
" Colors 
" ======
"set usage of 256color for correct colors
if !has('gui_running')
  set t_Co=256
endif

syntax enable "enable colored syntax highlighting
set synmaxcol=150 " max columns to syntax highlight. Helps with speed

set background=dark 
" colorscheme is set near end of file in plugin settings \/
map <Leader>1 :colorscheme peachpuff<CR>
map <Leader>2 :colorscheme desert<CR>
map <Leader>3 :colorscheme torte<CR>

set cursorline "enable cursos line
" These color settings are not applied because the colorscheme is set near the
" end of the file. To change a color setting add the line after the setting of
" the colorscheme near the end of the file.
" bottom statusline color of active window
hi StatusLine  ctermfg=Grey ctermbg=232
" bottom statusline color of inactive window
hi StatusLineNC  ctermfg=DarkGrey ctermbg=233
" text 'INSERT' when in insert mode
hi ModeMsg  ctermfg=232 ctermbg=DarkBlue
"line numbers color
hi LineNr  ctermfg=DarkGrey ctermbg=NONE
"cursor line color
hi CursorLine  cterm=bold ctermbg=235
"vertical split line color
hi VertSplit  ctermfg=Grey ctermbg=Black 
"textwidth line color
hi ColorColumn ctermbg=235 
"matching bracket color
hi MatchParen cterm=bold ctermbg=DarkGrey ctermfg=White
"comments color
hi Comment ctermfg=Cyan
" highlight colors
hi Search ctermfg=White ctermbg=DarkBlue
hi IncSearch cterm=underline ctermfg=White ctermbg=Magenta
hi Visual cterm=reverse ctermbg=233
" spell highlight colors
hi clear SpellBad
" badly spelled words
hi SpellBad cterm=underline ctermfg=White ctermbg=DarkRed
" words that should be capitalized
hi SpellCap cterm=underline ctermfg=White ctermbg=DarkCyan
" words used in another language dictionary
hi SpellLocal cterm=underline ctermfg=White ctermbg=DarkGreen
" autocomplete popup menu colors
hi Pmenu ctermbg=235 ctermfg=Grey
hi PmenuSel ctermbg=Grey ctermfg=232
"set tab colors 
hi TabLineFill ctermfg=237 ctermbg=White "tabs bar
hi TabLine ctermfg=Grey ctermbg=237 cterm=bold "non-selected tabs
hi TabLineSel ctermfg=LightRed ctermbg=95 cterm=bold "selected tab

" =============
" Spaces & Tabs
" =============
" syntax on
" filetype plugin indent on
set tabstop=2      "number of visual spaces per tab
set softtabstop=2  "number of spaces in tab when editing
set shiftwidth=2   "number of visual spaces after enter after braces
set noexpandtab



"
" ============================================================
"  KEY SHORTCUTS  ============================================
" ============================================================
 
let mapleader = ","
 
"jj is escape
inoremap jj <esc>
"remove any search highlights when entering insert mode by emptying search
"register:
autocmd InsertEnter * :let @/ = ""

" write, quit, clear
" ==================
".. and re-source init.vim to fix the lightline losing color bug
map <Leader>w :w<CR> " :so ~/.config/nvim/init.vim<CR>:noh<CR>
map <Leader>x :q<CR>
map <Leader>X :quitall<CR>
map <Leader>/ :noh<CR>
map <Leader>r :so ~/.config/nvim/init.vim<CR> " reload init.vim

"move vertically by visual line
" =============================
nnoremap j gj
nnoremap k gk

" insert blank line without going into insert mode
" ================================================
nnoremap oo o<Esc>k
nnoremap OO O<Esc>j
" :map <Leader>o :+1d<CR>k
" :map <Leader>O :-1d<CR>

" jump to beginning and end of line
" =================================
nnoremap <C-i> ^
nnoremap <C-a> $
nnoremap d<C-i> d^
nnoremap d<C-a> d$
nnoremap c<C-i> c^
nnoremap c<C-a> c$

" copy visually selected to clipboard 
" ===================================
" (vim needs to be compiled with +xterm_clipboard for this to work)
vnoremap <Leader>y "+y 
" paste clipboard
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
" paste primary selection
nnoremap <Leader>b "*p
nnoremap <Leader>B "*P

" Window splits
" =============
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>
nnoremap <C-q> :close<CR>
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

" buffers (windows)
" =================
nnoremap <C-p> :Buffers<CR>
"go to next/previous buffer
nnoremap <S-j> :bn<CR>
nnoremap <S-k> :bp<CR>
nnoremap <Leader>k :tabp<CR>
nnoremap <Leader>j :tabn<CR>
"close current buffer (with vim-bbye plugin command)
nnoremap <Leader>q :Bdelete<CR> 

" tabs
" ====
nnoremap <Leader>k :tabnew %<CR>
nnoremap <Leader>j :tabp<CR>
nnoremap <Leader>l :tabn<CR>
" nnoremap <Leader>l :tabclose<CR>

" open files
" ==========
" open Netrw in the directory of the current file
map <Leader>E :Lexplore %:p:h<CR>
:map <Leader>ev :e ~/.config/nvim/init.vim<CR>
:map <Leader>ew :e ~/.w3m/keymap<CR>
:map <Leader>ei :e ~/.config/i3/config<CR>
:map <Leader>eb :e ~/.bashrc<CR>
:map <Leader>eB :e ~/.w3m/bookmarks<CR>
:map <Leader>el :e ~/.bash_aliases<CR>
:map <Leader>ea :e ~/.config/alacritty/alacritty.yml<CR>
:map <Leader>et :e ~/.tmux.conf<CR>
:map <Leader>er :e ~/.config/ranger/rc.conf<CR>
:map <Leader>eR :e ~/.config/ranger/rifle.conf<CR>
:map <Leader>ep :e ~/.config/polybar/config<CR>
:map <Leader>ex :e ~/.Xresources<CR>
:map <Leader>ex :e ~/.config/ytfzf/conf.sh<CR>
:map <Leader>en :e ~/Documents/notes<CR>
:map <Leader>ec :e ~/.config/picom/picom.conf<CR>
:map <Leader>eq :e ~/.config/qutebrowser/config.py<CR>
:map <Leader>eo :e ~/Teachings/op_weg_naar_eenheidsbewustzijn/op_weg_naar_eenheidsbewustzijn.mom<CR>


" formatting text
"=============
"format current sentence
:map <Leader>ff gqas
"format current paragraph 
:map <Leader>fp gqip


"spelling checker
"================
"turn on Dutch spell checking, set added words file and set dictionary files
:map <Leader>sd :setlocal spell spelllang=nl<CR>
			\:setlocal spellfile=~/.config/nvim/spell/dutch.utf-8.add<CR>
			\:set dictionary-=/home/yann/.config/nvim/spell/wordlist-en.txt<CR>
			\:set dictionary+=/home/yann/.config/nvim/spell/wordlist-nl.txt<CR>
			\:set dictionary+=/home/yann/.config/nvim/spell/dutch.utf-8.add<CR>
"turn on English spell checking, set added words file and set  dictionary files
:map <Leader>se :setlocal spell spelllang=en_us<CR>
			\:setlocal spellfile=~/.config/nvim/spell/english.utf-8.add<CR>
			\:set dictionary-=/home/yann/.config/nvim/spell/wordlist-nl.txt<CR>
			\:set dictionary+=/home/yann/.config/nvim/spell/wordlist-en.txt<CR>
			\:set dictionary+=/home/yann/.config/nvim/spell/english.utf-8.add<CR>
"turn off spell checking
:map <Leader>ss :set nospell<CR> 
"find next misspelled word
:map <Leader>n ]s
"find previous misspelled word
:map <Leader>b [s
"show suggestion list
:map <Leader>_ z=
"change word to first suggestion in suggestion list
:map <Leader>= 1z=
" mark highlighted word as 'good' and add to your dictionary file
:map <Leader>+ zg
" undo add word
:map <Leader>u+ zug
" mark highlighted word as 'wrong' and remove from your dictionary file
:map <Leader>- zw
" undo remove word
:map <Leader>u- zuw
" ignore word for now
:map <Leader>0 zG
" turn automatic MUcomplete trigger on or off
" :map <Leader>a :MUcompleteAutoToggle<CR>


" abbreviations for groff
" =======================
" italic
:iabbrev I@ \f[I]
" bold
:iabbrev B@ \f[B]
 " end inline code
:iabbrev P@ \f[P]
 " é
:iabbrev e@ \[u0065_0301]
 " è
:iabbrev E@ \[u0065_0300]
 " ë
:iabbrev ee@ \[u0065_0308]
 " ï
:iabbrev ii@ \[u0069_0308]
 " ö
:iabbrev oo@ \[u006F_0308]
 " ü
:iabbrev uu@ \[u0075_0308]

:iabbrev pdfi@ .PDF_IMAGE \
\<CR>-C \
\<CR>/home/yann/Teachings/op_weg_naar_eenheidsbewustzijn/afbeeldingen/\
\<CR>image.pdf pts SCALE 90 \
\<CR>CAPTION "caption"

: iabbrev list@ .LIST DIGIT
\<CR>.ITEM
\<CR>.ITEM
\<CR>.ITEM
\<CR>.LIST OFF

:iabbrev box@ .IB 4P 4P
\<CR>.BOX OUTLINED black SHADED lightgrey INSET 2m
\<CR>.QUAD CENTER
\<CR>.FONT B 
\<CR>text
\<CR>.FONT R
\<CR>.BOX END
\<CR>.IQ
\<CR>.QUAD LEFT
\<CR>.SPACE 1


" groff mom bindings
" ==================
" compile current mom file to pdf, put pdf file in the same dir
" TO DO: change this to only work on groff files! You can accidentally wreck
" your other files with this!
" :map <Leader>c :w<CR> :! pdfmom % > $(echo %:p \| sed 's/mom/pdf/')<CR>
" view pdf version of current .mom file with zathura
:map <Leader>v :! zathura $(echo %:p \| sed 's/mom/pdf/') &disown<CR>
" run shell command 'pdfinfo' on the word that the cursor is on (should the path
" and name of a pdf image) to extract the page size and paste it in the buffer
:map <Leader>ii :read ! pdfinfo ~/Teachings/op_weg_naar_eenheidsbewustzijn/afbeeldingen/<cword>.pdf \| grep -a "Page size" \| awk -F' ' '{print $3$6" "$5$6}'<CR>


"bindings for .tex files only
" au FileType tex nnoremap  <C-c> :! pdflatex %<CR><CR>
" au FileType tex nnoremap  <C-x> :! zathura $(echo % \| sed 's/tex$/pdf/') & disown<CR>



" =====================
" ==  Functionality  ==
" =====================

" Searching
" =========
set incsearch  "Search as characters are entered
set hlsearch   "highligh matches

" Enable Fuzzy Finder in Vim
" ==========================
set rtp+=~/.fzf
" remove default mapping of control-o
map <C-o> <Nop>
" map <Leader>o <Nop>
" map it to fzf#run (https://github.com/junegunn/fzf/blob/master/README-VIM.md)
map <C-o> :call fzf#run({'sink': 'edit', 'options': '--multi'})<CR>

" Folding
" =======
set foldenable     "enable folding of code
set foldmethod=indent "fold based on indent level
" automatically save and load created fold on quit and start
" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview

" Timeout length
" ==============
set timeoutlen=1000
set ttimeoutlen=0

" Disable some stuff in groff files because it slows then down:
" =================================
" au FileType groff setlocal nocursorline
" au FileType groff setlocal nornu

" autocomplete
"==============
" add dictionary files for english and dutch
" :set dictionary+=/home/yann/.config/nvim/spell/wordlist-en.txt
" :set dictionary+=/home/yann/.config/nvim/spell/wordlist-nl.txt

" set autocomplete to also search dictionary
:set complete+=k 

" set height of popup menu  
" :set pumheight=4

" set autocomplete options
:set completeopt=menu,menuone,noselect

" when autocomplete popup menu is visible, 
" '/' selects te first entry and closes the menu
" 'enter' (<CR>) selects the first entry, closes menu and goes to newline
" :inoremap <expr> / pumvisible() ? '\<C-N>\<C-Y>' : '\/'
" :inoremap <expr> <CR> pumvisible() ? "\<C-N>\<C-Y>\<CR>" : "\<CR>"




" =============================================================================
" ============================  VIM-PLUG PLUGINS  =============================
" =============================================================================
  
" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')


"fzf: fuzzy finder for vim
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug '/usr/local/opt/fzf'

"vim-startify: add start screen with file selection
Plug 'mhinz/vim-startify'

"vim-bbye: close buffers without closing windows
Plug 'https://github.com/moll/vim-bbye'

"vim-commentary: comment and uncomment with gcc
Plug 'https://github.com/tpope/vim-commentary'

"vim-colorschemes: a huge pack of colorschemes
Plug 'flazz/vim-colorschemes'

"colorizer: display colornames in their color
" Plug 'https://github.com/chrisbra/Colorizer'

"vim-surround: easily add and edit surrounding character with cs.. and ysiw..
Plug 'https://github.com/tpope/vim-surround'

"vim-repeat: make plugin command repeatable (like vim-surround)
Plug 'https://github.com/tpope/vim-repeat'

"auto-pairs: 
" Plug 'https://github.com/vim-scripts/Auto-Pairs'

"vim-eunuch: enables a set of bash commands from withing Vim
Plug 'https://github.com/tpope/vim-eunuch.git'


"for webdev:
"===========
"
"coc.vim: vscode-like functionality in Vim. Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"coc-marketplace: browse and install coc extensions
" Install with :CocInstall coc-marketplace
Plug 'https://github.com/fannheyward/coc-marketplace'

Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'https://github.com/marlonfan/coc-phpls'
Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}


"vim-polyglot: syntax highlighting and indentation for many languages
Plug 'sheerun/vim-polyglot'

"phpcomplete.vim: dependency of wordpress.vim
" Plug 'shawncplus/phpcomplete.vim'
"wordpress.vim: plugin for wordpress development
" Plug 'dsawardekar/wordpress.vim'

"ncm2: fast and slim completion manager
" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
" Plug 'ncm2/ncm2'
"nvim-yarp: dependency for ncm2:
" Plug 'https://github.com/roxma/nvim-yarp'

"word completion for words in current buffer for ncm2:
" Plug 'https://github.com/ncm2/ncm2-bufword'
"path completion for ncm2:
" Plug 'https://github.com/ncm2/ncm2-path'
"css completion for ncm2:
" Plug 'https://github.com/ncm2/ncm2-cssomni'
"
"javascript completion for ncm2:
" Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}

"vimscript completion for ncm2:
" Plug 'ncm2/ncm2-vim' | Plug 'Shougo/neco-vim'
"phpactor: auto-completion for PHP
" Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
"phpactor integration into ncm2:
" Plug 'https://github.com/phpactor/ncm2-phpactor'

"ale: linter for various languages
" Plug 'dense-analysis/ale'

"vim-closetag: automatically close html tags when typing '>'
" Plug 'https://github.com/alvan/vim-closetag'

"vim-matchit: jump to matching html tag when typing '%'
Plug 'https://github.com/adelarsq/vim-matchit'

"requires Python:
"matchtagsalways: always highligh matching html tags when cursor is within tag
Plug 'https://github.com/valloric/MatchTagAlways'

"emmet: expand abbreviations with a leader-key
Plug 'https://github.com/mattn/emmet-vim'

"Live html, css and javascript editing
" Plug 'turbio/bracey.vim'

"youcompleteme: auto-completion for various languages
" Plug 'https://github.com/Valloric/YouCompleteMe'

" Plug 'https://github.com/vim-syntastic/syntastic'
" Plug 'https://github.com/scrooloose/nerdtree'
" Plug 'https://github.com/vim-scripts/Toggle-NERDTree-width'
" Plug 'https://github.com/ctrlpvim/ctrlp.vim'

" Initialize the plugin system
call plug#end()



" ==============================================================================
" =======================  PLUGINS SETTING  ====================================
" ==============================================================================

" coc.vim settings:
" =================

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
" set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent><Leader>d :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
" nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>F  <Plug>(coc-format-selected)
nmap <leader>F  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>af  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>




" ncm2 settings
" =============

" enable ncm2 for all buffers
" autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
" set completeopt=noinsert,menuone,noselect
" au User Ncm2PopupOpen set completeopt=noinsert,menuone,noselect
" au User Ncm2PopupClose set completeopt=menuone

" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages
" set shortmess+=c

" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
" inoremap <c-c> <ESC>

" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a new
" line.
" inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

" Use <TAB> to select the popup menu:
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"
"

" vim-colorschemes
" ================

colorscheme gruvbox "set colorscheme

"following color settings are loaded after the colorscheme will take effect:

" enable ctermbg to override colorscheme background:
" hi Normal ctermbg=none
"
" bottom statusline color of active window
hi StatusLine  ctermfg=Grey ctermbg=232
" bottom statusline color of inactive window
hi StatusLineNC  ctermfg=233 ctermbg=White
"cursor line color
hi CursorLine  cterm=bold ctermbg=236
"textwidth line color
hi ColorColumn ctermbg=236
"set tab colors 
hi TabLineFill ctermfg=White ctermbg=237 "tabs bar
hi TabLine ctermfg=Grey ctermbg=237 cterm=bold "non-selected tabs
hi TabLineSel ctermfg=LightRed ctermbg=95 cterm=bold "selected tab
" autocomplete popup menu colors
hi Pmenu ctermbg=236 ctermfg=Grey
hi PmenuSel ctermbg=Grey ctermfg=232
" highlight colors
hi Search ctermfg=LightBlue ctermbg=232
hi IncSearch ctermfg=LightGreen ctermbg=232
hi Visual cterm=reverse ctermbg=233




" vim-mucomplete settings
" =======================

" let g:mucomplete#enable_auto_at_startup = 1 " enable autocomplete at startup
" let g:mucomplete#completion_delay = 1 " pop up autocomplete after n seconds
" set shortmess+=c   " Shut off completion messages
"
" change the order of mucomplete popup menu's: first path, then dictionary, then spelling correction, then current open files
" scrollable with ctrl-j and ctrl-k
" let g:mucomplete#chains = {
		" \ 'default' : ['path', 'dict', 'uspl', 'omni', 'keyn'],
		" \ }



" lightline-bufferline settings
" =============================

" let g:lightline#bufferline#show_number = 1
" let g:lightline#bufferline#number_separator = ':'
" let g:lightline#bufferline#margin_left = 1
" let g:lightline#bufferline#margin_right = 1

" " make bufferline update immediately when there's a change in the buffer
" autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

" " lightline settings
" set laststatus=2
" set noshowmode "dont display redundant 'normal' or 'insert' words
 
" let g:lightline = {
"       \ 'colorscheme': 'powerline',
"       \ 'active': {
"       \   'left': [ [], [ 'readonly', 'filename', 'modified' ], [ 'buffers-padding', 'buffers' ] ],
"       \   'right': [ [ 'lineinfo' ],
"       \              [ 'percent' ],
"       \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
"       \ },
"       \ 'tabline': {
"       \   'right': []
"       \ },
"       \ 'component': {
"       \   'buffers-padding': '      '
"       \ },
"       \ 'component_expand': {
"       \   'buffers': 'lightline#bufferline#buffers'
"       \ },
"       \ 'component_type': {
"       \   'buffers': 'tabsel'
"       \ }
"       \ }

""previous line for the left side of lightline with 'mode' visible
"" \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ], [ 'buffers-padding', 'buffers' ] ],



" vim-closetag settings:
" =====================

" These are the file extensions where this plugin is enabled:
" let g:closetag_filenames = '*.html,*.php,*.xhtml,*.phtml'
" These are the file types where this plugin is enabled:
" let g:closetag_filetypes = 'html,xhtml,phtml'



" emmet settings:
" ==============

" emmet leader key that has to precede ','
let g:user_emmet_leader_key=','
" jump to edit points
let g:user_emmet_next_key = ',g'
let g:user_emmet_prev_key = ',G'




" MatchTagAlways settings:
" =======================

"use different color for matching html tags than matching brackets
let g:mta_use_matchparen_group = 0
"do not use the default color for matching html tags
let g:mta_set_default_matchtag_color = 0
"set custom color for matching html tags
highlight MatchTag ctermfg=232 ctermbg=Grey
"map jump to other tag
nnoremap <leader>t :MtaJumpToOtherTag<cr>
" filetypes in which to enable plugin
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'php' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \}



" vim-repeat settings:
" ===================

" enable vim-repeat
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)



" File explorer (netrw) settings:
" ===============================
"set width of window
let g:netrw_winsize = 15
"keep netrw browsing dir and current dir synced
let g:netrw_keepdir = 0


