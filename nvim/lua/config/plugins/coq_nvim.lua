return {
	"ms-jpq/coq_nvim",
	branch = 'coq',
	init = function ()
		vim.g.coq_settings = { auto_start = true }
	end,
	config = function ()
		table.insert(vim.g.coq_settings, "xdg = true")
	end,
}

