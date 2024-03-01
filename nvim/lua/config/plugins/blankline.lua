return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {},
	config=function ()

		local highlight = {
			"RainbowRed",
			"RainbowYellow",
			"RainbowBlue",
			"RainbowOrange",
			"RainbowGreen",
			"RainbowViolet",
			"RainbowCyan",
		}

		local hooks = require "ibl.hooks"
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E68183" })
			vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#D9BB80" })
			vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#83B6AF" })
			vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D8CAAC" })
			vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#A7C080" })
			vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#D39BB6" })
			vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#87C095" })
		end)
		require("ibl").setup { indent = { highlight = highlight }}
	end
}
