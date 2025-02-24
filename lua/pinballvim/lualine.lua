-- Copyright (c) 2020-2021 shadmansaleh
-- MIT license, see LICENSE for more details.
-- Generated by lightline to lualine theme converter
-- https://gist.github.com/shadmansaleh/000871c9a608a012721c6acc6d7a19b9
-- stylua: ignore
local colors = {
  color2   = '#242b38',
  color3   = '#d4bfff',
  color4   = '#d9d7ce',
  color5   = '#272d38',
  color13  = '#bbe67e',
  color10  = '#59c2ff',
  color8   = '#f07178',
  color9   = '#607080',
}

local ayu_mirage = {
  visual = {
    a = { fg = colors.color2, bg = colors.color3, gui = 'bold' },
    b = { fg = colors.color4, bg = colors.color5 },
  },
  replace = {
    a = { fg = colors.color2, bg = colors.color8, gui = 'bold' },
    b = { fg = colors.color4, bg = colors.color5 },
  },
  inactive = {
    c = { fg = 'none' , bg = 'none' },
    a = { fg = colors.color4, bg = colors.color5, gui = 'bold' },
    b = { fg = colors.color4, bg = colors.color5 },
  },
  normal = {
    c = { fg = 'none' , bg = 'none' },
    a = { fg = colors.color2, bg = colors.color10, gui = 'bold' },
    b = { fg = colors.color4, bg = colors.color5 },
  },
  insert = {
    a = { fg = colors.color2, bg = colors.color13, gui = 'bold' },
    b = { fg = colors.color4, bg = colors.color5 },
  },
}
require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'catppuccin',
    -- theme = "codedark",
    component_separators = { left = '', right = ''},
    -- component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    -- section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = true,
    refresh = {
      statusline = 100,
      tabline = 100,
      winbar = 100,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
})
