return{
	"nvim-treesitter/nvim-treesitter",
	--need package "tree-sitter-cli" installed.
	build = {":TSInstall c lua vim vimdoc query python markdown"},
	config = function ()
		require'nvim-treesitter.configs'.setup {
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "markdown" },
			 auto_install = true,
			 highlight = {
				 enable = true,
			 }
		 }
	end
}
