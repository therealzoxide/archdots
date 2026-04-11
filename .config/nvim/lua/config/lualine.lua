-- Edit of: Eviline config for lualine
-- Author: shadmansaleh
-- Credit: glepnir
local lualine = require('lualine')

local colors = {
	rosewater = "#dc8a78",
	flamingo = "#dd7878",
	pink = "#ea76cb",
	mauve = "#8839ef",
	red = "#d20f39",
	maroon = "#e64553",
	peach = "#fe640b",
	yellow = "#df8e1d",
	green = "#40a02b",
	teal = "#179299",
	sky = "#04a5e5",
	sapphire = "#209fb5",
	blue = "#1e66f5",
	lavender = "#7287fd",
	text = "#4c4f69",
	subtext1 = "#5c5f77",
	subtext0 = "#6c6f85",
	overlay2 = "#7c7f93",
	overlay1 = "#8c8fa1",
	overlay0 = "#9ca0b0",
	surface2 = "#acb0be",
	surface1 = "#bcc0cc",
	surface0 = "#ccd0da",
	base = "#eff1f5",
	mantle = "#e6e9ef",
	crust = "#dce0e8",
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
			normal = { c = { fg = colors.pink, bg = nil } },
			inactive = { c = { fg = colors.pink, bg = nil } },
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
		return ' '
	end,
	color = { fg = colors.sky },
	padding = { left = 0, right = 1 },
}

ins_left {
	function()
		local mode = vim.fn.mode()
		local mode_name = {
			n = 'NORMAL',
			i = 'INSERT',
			v = 'VISUAL',
			[''] = 'VISUAL BLOCK',
			V = 'VISUAL LINE',
			c = 'COMMAND',
			R = 'REPLACE',
			s = 'SELECT',
			S = 'SELECT LINE',
			[''] = 'SELECT BLOCK',
		}
		return mode_name[mode] or mode:upper()
		end,
	color = { fg = colors.sky },
	padding = { right = 1 },
}

ins_left {
	'filesize',
	cond = conditions.buffer_not_empty,
}

ins_left {
	'filename',
	cond = conditions.buffer_not_empty,
	color = { fg = colors.sky, gui = 'bold' },
}

ins_left { 'location' }

ins_left { 'progress', color = { fg = colors.sky, gui = 'bold' } }

ins_left {
	'diagnostics',
	sources = { 'nvim_diagnostic' },
	symbols = { error = ' ', warn = ' ', info = ' ' },
	diagnostics_color = {
		error = { fg = colors.red },
		warn = { fg = colors.yellow },
		info = { fg = colors.sky },
	},
}

ins_right {
	'o:encoding',
	fmt = string.upper,
	cond = conditions.hide_in_width,
	color = { fg = colors.sky, gui = 'bold' },
}

ins_right {
	'fileformat',
	fmt = string.upper,
	icons_enabled = false,
	color = { fg = colors.sky, gui = 'bold' },
}

ins_right {
	'branch',
	icon = '',
	color = { fg = colors.sky, gui = 'bold' },
}

ins_right {
	'diff',
	symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
	diff_color = {
		added = { fg = colors.green0 },
		modified = { fg = colors.orange0 },
		removed = { fg = colors.sky },
	},
	cond = conditions.hide_in_width,
}

ins_right {
	function()
		return ''
	end,
	color = { fg = colors.sky },
	padding = { left = 1 },
}

lualine.setup(config)
