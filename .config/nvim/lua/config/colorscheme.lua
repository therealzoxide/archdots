--require("catppuccin").setup({
--  integrations = {
--    noice = true,
--  },
--  highlight_overrides = {
--    mocha = function(colors)
--      return {
--       NoiceCmdlinePopupBorder = { fg = colors.mauve, bg = "NONE" },
--       NoicePopupBorder = { fg = colors.mauve, bg = "NONE" },
--	NoiceCmdlineIcon = { fg = colors.mauve, bg = "NONE" },
--      }
--    end,
--  },
--})
--vim.cmd.colorscheme "catppuccin"

-- Default options:
require("gruvbox").setup({
  terminal_colors = true,
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  inverse = true,
  contrast = "hard",
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})
vim.cmd("colorscheme gruvbox")
