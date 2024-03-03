return {
	{"ms-jpq/coq_nvim",
	branch = "coq",
	-- if build failed, you can "cd" to install directory of COQ and run "python3 -m coq deps"
	build = {":COQdeps"},
	lazy = false,

	-- autostart option must be included in the init function
	init = function ()
		vim.g.coq_settings = { auto_start = true }
	end,

	config = function ()
		-- other options
		vim.g.coq_settings = {
			xdg = true,
			keymap = {
				recommended = false,
				jump_to_mark = "<c-e>",
			}
		}

		-- keymaps
			local coq_keymap = {
				{ key = '<Tab>',	func = 'pumvisible() ? "\\<C-n>" : "\\<Tab>"' },
			{ key = '<S-Tab>',	func = 'pumvisible() ? "\\<C-p>" : "\\<BS>"' },
			{ key = 'Q',	func = 'pumvisible() ? "\\<C-e><Esc>" : "\\<Esc>"' },
			{ key = '<CR>',	func = 'pumvisible() ? (complete_info().selected == -1 ? "\\<C-e><CR>" : "\\<C-y>") : "\\<CR>"' },
		}

			for _, mapping in ipairs(coq_keymap) do
				vim.keymap.set("i", mapping.key, mapping.func, { noremap = true, silent = true, expr = true });
			end

	end,

	},

	{"ms-jpq/coq.artifacts",
	branch = "artifacts",
	lazy = false,
	},

	{"ms-jpq/coq.thirdparty",
	branch = "3p",
	lazy = false,
	config = function ()

		require("coq_3p") {
			{ src = "bc", short_name = "MATH", precision = 6 },
		}

	end,
	},
}

