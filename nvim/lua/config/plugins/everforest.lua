return {
	"neanias/everforest-nvim",
	version = false,
	lazy = false,
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		require("everforest").setup({
			-- Your config here
			background = "soft",
			transparent_background_level = 1,
			ui_contrast = "high",
			diagnostic_text_highlight = true,
			diagnostic_line_highlight = true,
			spell_foreground = true,
			})
			vim.cmd([[colorscheme everforest]])
		end,
	}
