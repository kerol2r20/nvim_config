-- Setup steps
-- 1. Install packer which is a neovim package manager
--      Linux: git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
--      Windows: git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
-- 2. Place this config project in ~/.config/nvim 

-- Global vraible setting
vim.o.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- change the <leader> key to space
vim.g.mapleader = ' '

-- Setup plugins
require 'plugins'

