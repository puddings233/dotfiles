return{
	"nvim-treesitter/nvim-treesitter",
	-- need package "tree-sitter-cli" installed.
	lazy = false,
	build = {":TSInstall c lua vim vimdoc query python bash"},
	config = function ()
		require'nvim-treesitter.configs'.setup {
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "bash" },
			 auto_install = true,
			 highlight = {
				 enable = true,
				 additional_vim_regex_highlighting = true,
			 }
		 }
	end
}
