" ================================= "
" ============= .vimrc ============ "
" ================================= "

let mapleader = ','
let g:mapleader = ','
set number
set background=dark
set ruler
set backspace=indent,eol,start
set ttyfast
set title
set undofile
set undodir=~/.vim/undodir
set path+=../inc,inc,../include,include
set listchars=eol:¬,trail:·,nbsp:·
set list
set mouse=

" ================================= "
" ============ PLUGINS ============ "
" ================================= "

syntax on

filetype off
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/vim-plug'
" Tpopes Private Section
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-pathogen'
Plug 'tpope/vim-dispatch'
" File Finder
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'neomake/neomake'
" Syntax
Plug 'vim-scripts/c.vim'
Plug 'vim-scripts/hlint', { 'for': 'haskell' }
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'bitc/vim-hdevtools', { 'for': 'haskell' }
Plug 'Twinside/vim-hoogle', { 'for': 'haskell' }
Plug 'justmao945/vim-clang'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'rudes/vim-java', { 'for': 'java' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
Plug 'godlygeek/tabular'
Plug 'ntpeters/vim-better-whitespace'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'jdonaldson/vaxe', { 'for': 'haxe' }
Plug 'benmills/vimux'
" Colors
Plug 'vim-airline/vim-airline'
Plug 'guns/xterm-color-table.vim', { 'on': 'VXtermColorTable' }
Plug 'vim-airline/vim-airline-themes'
Plug 'adlawson/vim-sorcerer'
call plug#end()

filetype plugin indent on

autocmd! BufWritePost * Neomake

let g:NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=1
nmap <leader>k :NERDTreeToggle<cr>

let g:clang_cpp_options = '-std=c++11'

autocmd FileType java let b:dispatch = 'javac %'
nnoremap <F9> :Dispatch<cr>

" ================================= "
" ============= INDENT ============ "
" ================================= "

set tabstop=8
set softtabstop=4
set expandtab
set shiftwidth=4
set shiftround
" set smartindent
" set autoindent

" ================================= "
" ============= GOLANG ============ "
" ================================= "

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_constraints = 1
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

" ================================= "
" ============= COLORS ============ "
" ================================= "

" Overridden by colorscheme
" Gray Text, Black BG
" Matches ~/.tmux.conf color scheme
" hi TabLine	ctermfg=59 ctermbg=Black cterm=NONE
" hi TabLineFill	ctermfg=Yellow ctermbg=Black cterm=NONE
" Orange Text, Black BG
" hi TabLineSel	ctermfg=94 ctermbg=Black cterm=NONE

let g:airline_theme='base16'
let g:airline_powerline_fonts = 1
" let g:airline_left_sep='|'
" let g:airline_right_sep='|'

" Silently set the colorscheme,
" keeps from getting errors if it doesn't exist.
silent! colorscheme sorcerer
" Show a vertical line at column 80
set colorcolumn=80
" Set the colors for the column
highlight ColorColumn ctermfg=Red cterm=NONE
" Tabline.old
let g:airline#extensions#tabline#enabled = 1

" ================================= "
" ============ KEYBINDS =========== "
" ================================= "

"Increase scroll speed
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
" Does semi-colon even do anything? no
nnoremap ; :

"Edit vimrc ,ev
map <leader>ev :e! ~/.config/nvim/init.vim<cr>
"Edit .tmux.conf ,et
map <leader>et :e! ~/.tmux.conf<cr>

"save file with ,,
map <leader>, :w<cr>
"save and close with ,.
map <leader>. :wq<cr>
"force close all ,fo
map <leader>fo :qa!<cr>
"Source changes in vimrc so i don't have to reopen vim
map <leader>r :source ~/.config/nvim/init.vim<cr> \| :echom "Config Reloaded"<cr>
"Strip all whitespace from file using ntpeters/vim-better-whitespace
map <leader>w :StripWhitespace<cr>
"Delete one line without overriding clipboard
map <leader>d "_dd
"Add error handling in go code
map <leader>err :normal i if err != nil {<esc>olog.Fatal(err)<esc>o}<esc><cr>
"Creates folds of visual blocks
map <leader>f :setlocal foldmethod=syntax<cr>
"Tabularize mapping for quick formatting
vmap <leader>t :Tabularize<cr>
"Toggle highlighting
noremap <space> :set hlsearch! hlsearch?<cr>
"Run cabal test in vimux
map <leader>ct :call VimuxRunCommand("cabal test --show-details=always --test-options=--color")<cr>

" ================================= "
" ============ FUNCIONS =========== "
" ================================= "

" Stolen from some Janus Repo Shit
" carlhuda/janus
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window
" if the only buffer is NERDTree
function! s:CloseIfOnlyNerdTreeLeft()
	if exists("t:NERDTreeBufName")
		if bufwinnr(t:NERDTreeBufName) != -1
			if winnr("$") == 1
				q
			endif
		endif
	endif
endfunction

" ================================= "
" ============== END ============== "
" ================================= "