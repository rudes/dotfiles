vim.o.title = true
vim.o.ruler = true
vim.o.number = true
vim.o.background = "dark"
vim.o.backspace = "indent,eol,start"
vim.o.undofile = true
vim.o.undodir = "~/.vim/undodir"
vim.o.expandtab = true
vim.o.tabstop = 8
vim.o.softtabstop = 4
vim.o.shiftround = true
vim.o.shiftwidth = 4
vim.o.syntax = "on"

vim.cmd([[
filetype plugin indent on
silent! colorscheme PaperColor
autocmd! BufWritePost * Neomake
let g:airline#extensions#tabline#enabled = 1
]])

vim.g.go_fmt_autosave = 1
vim.g.go_fmt_command = "goimports"
vim.g.loaded_python_provider = 1
vim.g.loaded_python3_provider = 1
vim.g.python3_host_prog = "/usr/bin/python3"
vim.g.clang_cpp_options = "-std=c++11"

vim.g.airline_left_sep = ""
vim.g.airline_right_sep = ""
vim.g.airline_powerline_fonts = 1
vim.g.airline_theme = "papercolor"
