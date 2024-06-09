local opt = vim.opt
local g = vim.g

-- Нумерация строк
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.cursorlineopt = "number"

-- Буфер обмена
opt.clipboard = "unnamedplus"

-- Поиск
opt.ignorecase = true
opt.showmatch = false

-- Табы
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

-- Панели
opt.splitright = true
opt.splitbelow = true

-- Автодополнение
-- opt.completeopt = 'menuone,noselect'

-- Цветовая схема
opt.termguicolors = true
opt.background = "dark"

-- История изменений
opt.undofile = true

--Индикатор режима
opt.showmode = false

--???????????????
g.netrw_banner = 0
g.netrw_browse_split = 4
g.netrw_altv = 1
g.netrw_liststyle = 3



opt.cmdheight = 0


--Не комментировать новые линии при переходе на новую строку
vim.cmd ("autocmd BufEnter * set fo-=c fo-=r fo-=o")

-- Удаление пробелов в конце строк
vim.cmd([[
    match ExtraWhitespace /\s\+$/
    autocmd BufWritePre * %s/\s\+$//e
]])

