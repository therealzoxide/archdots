require("catppuccin").setup({
  integrations = {
    noice = true,
  },
  highlight_overrides = {
    mocha = function(colors)
      return {
        NoiceCmdlinePopupBorder = { fg = colors.mauve, bg = "NONE" },
        NoicePopupBorder = { fg = colors.mauve, bg = "NONE" },
	NoiceCmdlineIcon = { fg = colors.mauve, bg = "NONE" },
      }
    end,
  },
})

