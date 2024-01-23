return {
	"neovim/nvim-lspconfig",
	ft={"lua", "python", "sh"},
	config = function()
		local lspconfig = require ("lspconfig")
		local coq = require ("coq")

		--need package "lua-language-server" insteaded.
		lspconfig.lua_ls.setup(coq.lsp_ensure_capabilities({
			Lua = {
				completion = {
					enable = true,
					callSnippet = "Both",
					keywordSnippet = "Both",
					showWord = "Enable",
				},
				hint = {
					enable = true,
					setType = true,
				}
			}
		}))

		--need package "pyright" insteaded.
		lspconfig.pyright.setup(coq.lsp_ensure_capabilities({
			pyright = {
				analysis = {
					autoImportCompletions = true,
					diagnosticMode = "openFilesOnly",
				}
			}
		}))

		--need package "bash-language-server" insteaded.
		lspconfig.bashls.setup(coq.lsp_ensure_capabilities({}))
	end,
}
