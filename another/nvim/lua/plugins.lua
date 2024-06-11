local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim",
    },
    config = function() require("plugins.ui.neotree") end,
	},
	{
		"akinsho/bufferline.nvim",
    config = function() require("plugins.ui.bufferline") end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
    config = function() require("plugins.ui.treesitter") end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function() require("plugins.ui.colorizer") end,
	},
	{
    'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function() require("plugins.ui.lualine") end,
	},
	{ "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-lua/popup.nvim",
    },
    cmd = "Telescope",
		config = function() require("plugins.ui.telescope") end,
	},
	{
    "folke/noice.nvim",
		dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
		config = function() require("plugins.ui.noice") end,
	},
	{
    "glepnir/dashboard-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VimEnter",
    lazy = false,
    config = function() require("plugins.ui.dashboard") end,
  },
	{	'akinsho/toggleterm.nvim',
		version = "*",
		config = true,
		--config = function() require("plugins.ui.toggleterm") end,
	},

}

local opts = {
  ui = {
    border = "rounded",
    title = "Plugin Manager",
    title_pos = "center",
  },
}

require("lazy").setup(plugins, opts)
