" ================================= "
" ============= .vimrc ============ "
" ================================= "

let mapleader = ','
let g:mapleader = ','
set number
set background=dark
set ruler
set laststatus=2

" ================================= "
" ============ PLUGINS ============ "
" ================================= "

execute pathogen#infect()
syntax on

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-tbone'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-pathogen'
Plugin 'godlygeek/tabular'
call vundle#end()

filetype plugin indent on

let g:NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=1
nmap <leader>k :NERDTreeToggle<cr>

" ================================= "
" ============= INDENT ============ "
" ================================= "

set tabstop=2
" set smarttab
" set smartindent
" set autoindent

" ================================= "
" ============= COLORS ============ "
" ================================= "

" Gray Text, Black BG
" Matches ~/.tmux.conf color scheme
 hi TabLine	ctermfg=59 ctermbg=Black cterm=NONE
 hi TabLineFill	ctermfg=Yellow ctermbg=Black cterm=NONE
" Orange Text, Black BG
 hi TabLineSel	ctermfg=94 ctermbg=Black cterm=NONE

let g:airline_theme='ubaryd'
let g:airline_left_sep='|'
let g:airline_right_sep='|'

" Tabline.old
" let g:airline"extensions"tabline"enabled = 1
" let g:airline"extensions"tabline"left_sep = ' '
" let g:airline"extensions"tabline"left_alt_sep = '|'

" ================================= "
" ============ KEYBINDS =========== "
" ================================= "

nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

map <leader>ev :e! ~/.vimrc<cr>
map <leader>et :e! ~/.tmux.conf<cr>

map <leader>sa :w<cr>
map <leader>sq :wq<cr>
map <leader>fo :qa!<cr>

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
