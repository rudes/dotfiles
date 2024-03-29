function nmap(shortcut, command)
  vim.api.nvim_set_keymap('n', shortcut, command, { noremap = true, silent = true })
end

vim.g.mapleader = ','

nmap('<C-e>', '3<C-e>')
nmap('<C-y>', '3<C-y>')

nmap(';', ':')

nmap('<leader>,', ':w<cr>')
nmap('<leader>.', ':wq<cr>')

nmap('<leader>c', ':%s///g<left><left>')

nmap('<leader>k', ':Telescope find_files<cr>')

nmap('<space>', ':set hlsearch! hlsearch?<cr>')

local init_file = os.getenv("HOME") .. '/.config/nvim/init.lua<cr>'
nmap('<leader>r', ':source ' .. init_file)

nmap('<leader>w', ':StripWhitespace<cr>')
