return {
	"neovim/nvim-lspconfig",
	ft={ "lua", "python", "sh", "markdown" },
	config = function ()
		local lsp = require ("lspconfig")
		local coq = require ("coq")

		--need package "lua-language-server" insteaded.
		lsp.lua_ls.setup(coq.lsp_ensure_capabilities({
			cmd = {"lua-language-server", "--locale=zh-cn"},
			Lua = {
				runtime = {
					version = "LuaJIT"
				},
				completion = {
					enable = true,
					callSnippet = "Both",
					keywordSnippet = "Both",
					showWord = "Enable",
				},
				hint = {
					enable = true,
					setType = true,
				},
		}
		}))

		--need package "pyright" insteaded.
		lsp.pyright.setup(coq.lsp_ensure_capabilities({
			settings = {
				python = {
					analysis = {
						autoImportCompletions = true,
						autoSearchPaths = true,
						diagnosticMode = "openFilesOnly",
						useLibraryCodeForTypes = true,
					}
				}
			}
		}))

		--need package "bash-language-server" insteaded.
		lsp.bashls.setup(coq.lsp_ensure_capabilities({}))

		--need package "marksman" insteaded.
		lsp.marksman.setup(coq.lsp_ensure_capabilities({}))
	end,
}
