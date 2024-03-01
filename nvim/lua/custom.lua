-- this for close tab and neovim via "Q"
function quit_or_delete_buffer()
	if vim.fn.tabpagenr('$') == 1 then
		vim.cmd("q")  -- close neovim
	else
		vim.cmd("bdelete") -- close current tab via delete buffer
	end
end
