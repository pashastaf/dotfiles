vim.opt.termguicolors = true

function SetColor(color)
	color = color or "rose-pine"
	-- theme list: onedark, onenord, kanagawa, newpaper, dracula ...

	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", {bg = "#122E27"})
	-- vim.api.nvim_set_hl(0, "NormalFloat", {bg = "#111111"})
	-- vim.api.nvim_set_hl(0, "ColorColumn", {bg = "none"})
	-- vim.api.nvim_set_hl(0, "LineNr", {bg = "none"})
end

SetColor()
