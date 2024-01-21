return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = function() vim.fn["mkdp#util#install"]() end,
	init = function ()
		vim.g.mkdp_auto_start = 1
	end,
	config = function()
		vim.g.mkdp_theme = 'light'
	end,
	ft = { "markdown" },
}
