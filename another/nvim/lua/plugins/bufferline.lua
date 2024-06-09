require("bufferline").setup({
	options = { 
		mode = "buffers",
		themable = true,
		-- close_command = "bc",     ????		
		offsets = {
	    {
				filetype = "neo-tree",
				text = function()
					return vim.fn.strftime("%Y-%m-%d %H:%M")
				end,
				separator = true,
				highlight = "Directory"
			}
		},
		separator_style = {'  ','   '},
	},
})
