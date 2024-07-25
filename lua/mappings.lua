require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

local opt = {noremap = true, silent = true}

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- split the window
map("n", "s", "", opt)
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)

-- close the current window
map("n", "sc", "<C-w>c", opt)
-- close the all others window
map("n", "so", "<C-w>o", opt)

-- Alt + hjkl to diffent window
--map("n", "<A-h>", "<C-w>h", opt)
--map("n", "<A-j>", "<C-w>j", opt)
--map("n", "<A-k>", "<C-w>k", opt)
--map("n", "<A-l>", "<C-w>l", opt)
-- change the left/right ratio
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)

-- change the up/down ratio
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>",   ":resize -2<CR>", opt)

-- open the termial
map("n", "<leader>t", ":sp| terminal<CR>", opt)
map("n", "<leader>vt", ":vsp| terminal<CR>", opt)
map("t", "<ESC>", "<C-\\><C-n>", opt)
map("t", "<A-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<A-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<A-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<A-l>", [[ <C-\><C-N><C-w>l ]], opt)


--use q to exit 
map("n", "q", ":q<CR>", opt)
map("n", "qq", ":q!<CR>", opt)

-- nvim-tree open menu
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)
-- bufferline config
-- 左右Tab切换
--map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
--map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
-- 关闭
--"moll/vim-bbye"
--map("n", "<A-w>", ":Bdelete!<CR>", opt)

-- Telescope
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)

