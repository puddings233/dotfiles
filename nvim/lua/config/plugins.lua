local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("lazy").setup({
	{require("config.plugins.everforest"),
	require("config.plugins.lualine"),
	require("config.plugins.fcitx"),
	require("config.plugins.coq_nvim"),
	require("config.plugins.blankline"),
	require("config.plugins.nvim_lspconfig"),
	require("config.plugins.treesitter"),
	require("config.plugins.outline_nvim"),
	require("config.plugins.joshuto"),
	require("config.plugins.markdown")},
})

