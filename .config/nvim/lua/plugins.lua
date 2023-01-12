local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- tpope
  use 'tpope/vim-sensible'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'tpope/vim-tbone'
  use 'tpope/vim-commentary'
  use 'tpope/vim-pathogen'
  -- tools
  use 'neomake/neomake'
  -- syntax
  use 'justmao945/vim-clang'
  use {'fatih/vim-go', ft = {'go', 'gohtmltmpl'}}
  use {'rust-lang/rust.vim', ft = 'rust'}
  use {'stephpy/vim-yaml', ft = 'yml' }
  use 'ntpeters/vim-better-whitespace'
  -- colors
  use 'NLKNguyen/papercolor-theme'
  use 'ryanoasis/vim-devicons'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  -- file finder
  use 'kien/ctrlp.vim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
