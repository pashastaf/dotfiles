local map = vim.keymap.set
local g = vim.g

-- all
function am(key, command)
	map({'n','i','v','t'}, key, command)
end

-- normal
function nm(key, command)
	map('n', key, command)
end

-- insert
function im(key, command)
	map('i', key, command)
end

-- visual
function vm(key, command)
	map('v', key, command)
end

-- terminal
function tm(key, command)
	map('t', key, command)
end

g.mapleader = " "

-- GENERAL
-- Выход, сохранение
nm('<leader>w', ':w<CR>')
nm('<leader>q', ':q<CR>')

-- Навигация
nm('<a-left>', ':wincmd h<CR>')
nm('<a-right>', ':wincmd l<CR>')
nm('<a-up>', ':wincmd k<CR>')
nm('<a-down>', ':wincmd j<CR>')

-- Выделение как в классике
nm("<S-Up>", "v<Up>")
nm("<S-Down>", "v<Down>")
nm("<S-Left>", "v<Left>")
nm("<S-Right>", "v<Right>")
vm("<S-Up>", "<Up>")
vm("<S-Down>", "<Down>")
vm("<S-Left>", "<Left>")
vm("<S-Right>", "<Right>")
im("<S-Up>", "<Esc>v<Up>")
im("<S-Down>", "<Esc>v<Down>")
im("<S-Left>", "<Esc>v<Left>")
im("<S-Right>", "<Esc>v<Right>")
am("<C-a>", "<C-\\><C-n>ggVG")


-- PLUGINS

-- NeoTree
nm("<leader>e", ":Neotree left reveal<CR>")

-- BufferLine
nm('<tab>', ':bn<CR>')
nm('<s-tab>', ':bp<CR>')
nm('<leader>b', ':bd<CR>:bn<CR>')


