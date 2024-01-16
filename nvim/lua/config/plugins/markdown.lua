return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && yarn install",
	init = function()
	vim.g.mkdp_filetypes = { "markdown" }
	vim.g.mkdp_auto_start = 1
	vim.g.mkdp_theme = 'light'
end,
	ft = { "markdown" },
}
