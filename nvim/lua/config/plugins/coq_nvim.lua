return {
	"ms-jpq/coq_nvim",
	branch = 'coq',
	config = function ()
		table.insert(vim.g.coq_settings, "xdg = true")
	  end,
	'ms-jpq/coq.artifacts', 
	branch = 'artifacts',
	'ms-jpq/coq.thirdparty',
	branch = '3p',
}

