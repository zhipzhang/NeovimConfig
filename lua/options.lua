require "nvchad.options"

-- add yours here!

 local o = vim.o
 o.cursorlineopt ='both' -- to enable cursorline!

-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'
-- jkhl
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
                
-- display the number 
vim.wo.number = true
-- hightlight the line you on
vim.wo.cursorline = true
-- display the left part column
--vim.wo.signcolumn = "yes"
-- let tab equal 4 space
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.shiftround = true
vim.o.shiftwidth = 4

-- use backspace substitude tab
vim.o.expandtab = true
vim.bo.expandtab = true

-- highlight the search
vim.o.hlsearch = true
-- search when enter the character
vim.o.incsearch = true
-- let the height of cmd line be 2
vim.o.cmdheight = 2
-- ignore case when searching
vim.o.ignorecase = true
vim.o.smartcase = true

-- to show the unseeable character
vim.o.list = true
vim.o.listchars = "space:·"

vim.o.wildmenu = true
vim.o.pumheight = 10
-- display the tabline
vim.o.showtabline = 2
-- whether show the mode in the bottom
vim.o.showmode = false
--vim.g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/config/snip"
