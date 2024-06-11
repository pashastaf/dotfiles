require("noice").setup({
    cmdline = {
        format = {
            cmdline = { title = "", icon = " " },
            lua = { title = "", icon = "󰢱 " },
            help = { title = "", icon = "󰋖 " },
            input = { title = "", icon = " " },
            filter = { title = "", icon = " " },
            search_up = { icon = "    " },
            search_down = { icon = "    " },
        },
    },
    views = {
        cmdline_popup = {
            border = {
                padding = { 0, 2 },
            },
            position = {
                row = "49%",
                col = "50%",
            },
        },
    },
		presets = {
      bottom_search = true, -- use a classic bottom cmdline for search
      command_palette = true, -- position the cmdline and popupmenu together
      long_message_to_split = true, -- long messages will be sent to a split
      inc_rename = false, -- enables an input dialog for inc-rename.nvim
      lsp_doc_border = false, -- add a border to hover docs and signature help
    },
    notify = {
      fps = 75,
      max_width = 75,
      level = "ERROR",
    }
})
