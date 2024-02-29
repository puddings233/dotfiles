return{
	"nvim-treesitter/nvim-treesitter",
	-- need package "tree-sitter-cli" installed.
	lazy = false,
	config = function ()
		require'nvim-treesitter.configs'.setup {
			ensure_installed = "all",
			sync_install = true,
			auto_install = false,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = true,
			}
		}
	end
}
