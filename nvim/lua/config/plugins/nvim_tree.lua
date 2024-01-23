return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {"nvim-tree/nvim-web-devicons",},
	init = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
	end,
	config = function()
		-- custom mappings
		local function my_on_attach(bufnr)
		local api = require "nvim-tree.api"
		local function opts(desc)
			return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
		end
		 -- remap, edit below
		vim.keymap.set('n', 'i',	api.node.show_info_popup,	opts('Info'))
		vim.keymap.set('n', '<CR>',	api.node.open.tab,		opts('Open: New Tab'))
		vim.keymap.set('n', '..',	api.tree.change_root_to_parent,	opts('Up'))
		vim.keymap.set('n', 'YY',	api.fs.copy.absolute_path,	opts('Copy Absolute Path'))
		vim.keymap.set('n', 'Q',	api.tree.close,			opts('Close'))
		vim.keymap.set('n', 's',	api.tree.search_node,		opts('Search'))
		vim.keymap.set('n', 'yy',	api.fs.copy.filename,		opts('Copy Name'))
	end

		-- floating window
		local HEIGHT_RATIO = 0.8  -- edit this
		local WIDTH_RATIO = 0.5   -- edit this too
		require('nvim-tree').setup({
			on_attach = my_on_attach,  -- this line is for mapping
			-- root dir
			sync_root_with_cwd = true,
			update_focused_file = {
				enable = true,
				update_root = true,
			},
			view = {
				float = {
					enable = true,
					open_win_config = function()
						local screen_w = vim.opt.columns:get()
						local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
						local window_w = screen_w * WIDTH_RATIO
						local window_h = screen_h * HEIGHT_RATIO
						local window_w_int = math.floor(window_w)
						local window_h_int = math.floor(window_h)
						local center_x = (screen_w - window_w) / 2
						local center_y = ((vim.opt.lines:get() - window_h) / 2)
								- vim.opt.cmdheight:get()
						return {
							border = 'rounded',
							relative = 'editor',
							row = center_y,
							col = center_x,
							width = window_w_int,
							height = window_h_int,
						}
					end,
				},
				width = function()
					return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
				end,
			},
		})

		-- automatically resize the floating window
		local tree_api = require("nvim-tree")
		local tree_view = require("nvim-tree.view")
		vim.api.nvim_create_augroup("NvimTreeResize", {
			clear = true,
		})
		vim.api.nvim_create_autocmd({ "VimResized" }, {
			group = "NvimTreeResize",
			callback = function()
				if tree_view.is_visible() then
					tree_view.close()
					tree_api.open()
				end
			end
		})
	end,
}
