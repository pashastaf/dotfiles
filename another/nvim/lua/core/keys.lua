local map = vim.keymap.set
local g = vim.g

-- all
function am(key, command)
	map({'n','i','v','t'}, key, command)
end

-- normal + terminal
function ntm(key, command)
	map({'n','t'}, key, command)
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
nm('<leader>w', '<Cmd>w<CR>')
nm('<leader>q', '<Cmd>cq<CR>')

-- Навигация окна
ntm('<a-left>', '<Cmd>wincmd h<CR>')
ntm('<a-right>', '<Cmd>wincmd l<CR>')
ntm('<a-up>', '<Cmd>wincmd k<CR>')
ntm('<a-down>', '<Cmd>wincmd j<CR>')

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
nm("<leader>e", "<Cmd>Neotree toggle<CR>")

-- BufferLine
nm('<tab>', '<Cmd>bn<CR>')
nm('<s-tab>', '<Cmd>bp<CR>')
nm('<leader>b', '<Cmd>bd<CR>:bn<CR>')

-- Telescope
nm("ff", "<Cmd>Telescope find_files<CR>")
nm("fw", "<Cmd>Telescope live_grep<CR>")
nm("fF", "<Cmd>Telescope find_files cwd=~<CR>")
nm("<C-f>","<Cmd>Telescope current_buffer_fuzzy_find previewer=false<CR>")

-- Toggleterm
ntm('<leader>t', '<Cmd>ToggleTerm<CR>')

