return {
	"neanias/everforest-nvim",
	version = false,
	lazy = false,
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function ()

		require("everforest").setup({
			-- Your config here
			diagnostic_text_highlight = true,
			diagnostic_line_highlight = true,
			spell_foreground = true,

			colours_override = function (palette)
				palette.bg_visual = "#d8caac"
			end

			})

		require("everforest").load()

	end,

}
