-- Edit of: Eviline config for lualine
-- Author: shadmansaleh
-- Credit: glepnir
local lualine = require('lualine')

local colors = {
  rosewater	= "#f5e0dc",
  flamingo	= "#f2cdcd",
  pink		= "#f5c2e7",
  mauve		= "#cba6f7",
  red		= "#f38ba8",
  maroon	= "#eba0ac",
  peach		= "#fab387",
  yellow	= "#f9e2af",
  green		= "#a6e3a1",
  teal		= "#94e2d5",
  sky		= "#89dceb",
  sapphire	= "#74c7ec",
  blue		= "#89b4fa",
  lavender	= "#b4befe",
  text		= "#cdd6f4",
  subtext1	= "#bac2de",
  subtext0	= "#a6adc8",
  overlay2	= "#9399b2",
  overlay1	= "#7f849c",
  overlay0	= "#6c7086",
  surface2	= "#585b70",
  surface1	= "#45475a",
  surface0	= "#313244",
  base		= "#1e1e2e",
  mantle	= "#181825",
  crust		= "#11111b",
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

local config = {
  options = {
    component_separators = '',
    section_separators = '',
    theme = {
      normal = { c = { fg = colors.text, bg = colors.base } },
      inactive = { c = { fg = colors.text, bg = colors.base } },
    },
  },
  sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
  function()
    return '▊'
  end,
  color = { fg = colors.mauve },
  padding = { left = 0, right = 1 },
}

ins_left {
  function()
    return ''
  end,
  color = function()
    local mode_color = {
      n = colors.red,
      i = colors.mauve,
      v = colors.peach,
      [''] = colors.peach,
      V = colors.peach,
    }
    return { fg = mode_color[vim.fn.mode()] }
  end,
  padding = { right = 1 },
}

ins_left {
  'filesize',
  cond = conditions.buffer_not_empty,
}

ins_left {
  'filename',
  cond = conditions.buffer_not_empty,
  color = { fg = colors.mauve, gui = 'bold' },
}

ins_left { 'location' }

ins_left { 'progress', color = { fg = colors.mauve, gui = 'bold' } }

ins_left {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    error = { fg = colors.red },
    warn = { fg = colors.yellow },
    info = { fg = colors.mauve },
  },
}



-- Add components to right sections
ins_right {
  'o:encoding', -- option component same as &encoding in viml
  fmt = string.upper, -- I'm not sure why it's upper case either ;)
  cond = conditions.hide_in_width,
  color = { fg = colors.mauve, gui = 'bold' },
}

ins_right {
  'fileformat',
  fmt = string.upper,
  icons_enabled = false,
  color = { fg = colors.mauve, gui = 'bold' },
}

ins_right {
  'branch',
  icon = '',
  color = { fg = colors.mauve, gui = 'bold' },
}

ins_right {
  'diff',
  -- Is it me or the symbol for modified us really weird
  symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.peach },
    removed = { fg = colors.red },
  },
  cond = conditions.hide_in_width,
}

ins_right {
  function()
    return '▊'
  end,
  color = { fg = colors.mauve },
  padding = { left = 1 },
}

-- Now don't forget to initialize lualine
lualine.setup(config)
