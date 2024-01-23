return{
	"nvim-treesitter/nvim-treesitter",
	--need package "tree-sitter-cli" installed.
	ft={"lua", "python", "sh"},
	build = {":TSInstall c lua vim vimdoc query python markdown_inline bash"},
	config = function ()
		require'nvim-treesitter.configs'.setup {
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", " markdown_inline", "bash" },
			 auto_install = true,
			 highlight = {
				 enable = true,
			 }
		 }
	end
}
