require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
        lualine_a = {
                    {
                        "mode",
                        fmt = fmt_mode,
                        icon = { "" },
                        separator = { right = " ", left = "" },
                    },
                },
				lualine_b = {},
        lualine_c = {
            {
                "branch",
                color = text_hl,
                icon = { "   ", color = icon_hl },
                separator = "",
                padding = 0,
            },
            {
                "diff",
                padding = 0,
                color = text_hl,
                icon = { "  ", color = text_hl },
                source = diff_source,
                symbols = {
                    added = " ",
                    modified = " ",
                    removed = " ",
                },
                diff_color = {
                    added = icon_hl,
                    modified = icon_hl,
                    removed = icon_hl,
                },
                separator = " ",
            },
        },
        lualine_x = {
            {
                "diagnostics",
                sources = { "nvim_diagnostic" },
                symbols = {
                    error = " ",
                    warn = " ",
                    info = " ",
                    hint = "󱤅 ",
                    other = "󰠠 ",
                },
                colored = true,
                padding = 2,
            },
        },
        lualine_y = {},
        lualine_z = {
            {
                "location",
                icon = { "", align = "left" },
            },
            {
                "progress",
                icon = { "", align = "left" },
                separator = { right = "", left = "" },
            },
        },
    },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
