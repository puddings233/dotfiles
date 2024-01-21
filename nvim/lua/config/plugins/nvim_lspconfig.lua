return {
	"neovim/nvim-lspconfig",
	config = function()
		local lsp = require "lspconfig"
		local coq = require "coq"

		require'lspconfig'.lua_ls.setup{}
	end,
}
