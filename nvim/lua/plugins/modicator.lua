return {
	"mawkler/modicator.nvim",
	dependencies = "neanias/everforest-nvim",
	lazy = true,

	init = function ()
		vim.opt.cursorline = true
		vim.opt.number = true
		vim.opt.termguicolors = true
	end,

	config = function ()

		require("modicator").setup({
			integration = {
				lualine = {
					enabled = true,
					mode_section = nil,
					highlight = "bg",
				},
			}
		})

	end

}
