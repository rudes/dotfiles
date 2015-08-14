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

" ================================= "
" ============ PLUGINS ============ "
" ================================= "

execute pathogen#infect()
syntax on

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" Tpopes Private Section
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-tbone'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-pathogen'
Plugin 'tpope/vim-dispatch'
" File Finder
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
" Syntax
Plugin 'vim-scripts/c.vim'
Plugin 'justmao945/vim-clang'
Plugin 'fatih/vim-go'
Plugin 'rudes/vim-java'
Plugin 'godlygeek/tabular'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'SirVer/ultisnips'
" Colors
Plugin 'bling/vim-airline'
Plugin 'adlawson/vim-sorcerer'
call vundle#end()

filetype plugin indent on

let g:NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=1
nmap <leader>k :NERDTreeToggle<cr>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

autocmd FileType java let b:dispatch = 'javac %'
nnoremap <F9> :Dispatch<cr>

" ================================= "
" ============= INDENT ============ "
" ================================= "

set tabstop=2
set softtabstop=2
set noexpandtab
set smarttab
set shiftwidth=2
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

let g:airline_theme='ubaryd'
let g:airline_left_sep='|'
let g:airline_right_sep='|'

" if ~/.vim/bundle/vim-sorcerer
if isdirectory("~/.vim/bundle/vim-sorcerer")
	colorscheme sorcerer
endif
" Tabline.old
" let g:airline"extensions"tabline"enabled = 1
" let g:airline"extensions"tabline"left_sep = ' '
" let g:airline"extensions"tabline"left_alt_sep = '|'

" ================================= "
" ============ KEYBINDS =========== "
" ================================= "

"Increase scroll speed
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

"Edit vimrc ,ev
map <leader>ev :e! ~/.vimrc<cr>
"Edit .tmux.conf ,et
map <leader>et :e! ~/.tmux.conf<cr>

"save file with ,,
map <leader>, :w<cr>
"save and close with ,.
map <leader>. :wq<cr>
"force close all ,fo
map <leader>fo :qa!<cr>
"Install plugins ,pi
map <leader>pi :PluginInstall<cr>
"Update plugins ,pu
map <leader>pu :PluginUpdate<cr>
"Source changes in vimrc so i don't have to reopen vim
map <leader>r :source ~/.vimrc<cr> \| :echom "Config Reloaded"<cr>
"Strip all whitespace from file using ntpeters/vim-better-whitespace
map <leader>w :StripWhitespace<cr>
"Delete one line without overriding clipboard
map <leader>d "_dd
"Add error handling in go code
map <leader>err :r~/.vim/goerr<cr> 2jo
"Creates folds of visual blocks
vmap <leader>f :fold<cr>
"Tabularize mapping for quick formatting
vmap <leader>t :Tabularize<cr>
"Toggle highlighting
noremap <space> :set hlsearch! hlsearch?<cr>

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
