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

--Autostart function should probably go before require.
vim.g.mkdp_auto_start = 1  --markdown preview
vim.g.coq_settings = { auto_start = true } --COQ

require("lazy").setup({
	{require("config.plugins.everforest"),
	require("config.plugins.fcitx"),
	require("config.plugins.coq_nvim"),
	require("config.plugins.markdown")},
})

