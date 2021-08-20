" ================================= "
" ============= .vimrc ============ "
" ================================= "

set exrc
set title
set ruler
set number
set background=dark
set backspace=indent,eol,start
set undofile
set undodir=~/.vim/undodir
set expandtab
set tabstop=8
set softtabstop=4
set shiftround
set shiftwidth=4
let mapleader = ','
let g:mapleader = ','

" ================================= "
" ============ PLUGINS ============ "
" ================================= "

syntax on

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/vim-plug'
" Tpopes Private Section
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-pathogen'
" Tools
Plug 'neomake/neomake'
" Syntax
Plug 'justmao945/vim-clang'
Plug 'fatih/vim-go', { 'for': ['go', 'gohtmltmpl'] }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'ntpeters/vim-better-whitespace'
" Colors
Plug 'jacoborus/tender.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" File Finder
Plug 'kien/ctrlp.vim'
call plug#end()

filetype plugin indent on

"Automatically call neomake on save (check erros with ,e)
autocmd! BufWritePost * Neomake

" ================================= "
" ============= CONFIG ============ "
" ================================= "

let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"
let g:loaded_python_provider = 1
let g:loaded_python3_provider = 1
let g:python3_host_prog = '/usr/bin/python3'
let g:clang_cpp_options = '-std=c++11'

" ================================= "
" ============= COLORS ============ "
" ================================= "

" Silently set the colorscheme,
" keeps from getting errors if it doesn't exist.
silent! colorscheme tender
" Airline/Tabline
let g:airline_theme='tender'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_powerline_fonts = 1
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
"View neomake error list ,e
map <leader>e :lopen<cr>
"Delete to system clipboard
map <leader>d "*dd
vmap <leader>d "*dd
"Paste from system clipboard
map <leader>p "*p
vmap <leader>p "*p
"Search and replace all of last highlighted text
nnoremap <leader>c :%s///g<left><left>
"Toggle highlighting
noremap <space> :set hlsearch! hlsearch?<cr>
"Strip all whitespace from file using ntpeters/vim-better-whitespace
map <leader>w :StripWhitespace<cr>
"Source changes in vimrc so i don't have to reopen vim
map <leader>r :source ~/.config/nvim/init.vim<cr> \| :echom "Config Reloaded"<cr>
"Run go test in vimux
autocmd FileType go map <leader>t :call VimuxRunCommand("go test")<cr>

" ================================= "
" ============== END ============== "
" ================================= "
