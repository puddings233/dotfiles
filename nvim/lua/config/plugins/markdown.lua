return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = function() vim.fn["mkdp#util#install"]() end,
	config = function()
	vim.g.mkdp_theme = 'light'
end,
	ft = { "markdown" },
}
