local mappings = {

	-- disable arrow keys
	{ key = '<up>',		func = '',		mod = 'n' },
	{ key = '<up>',		func = '',		mod = 'i' },
	{ key = '<down>',	func = '',		mod = 'n' },
	{ key = '<down>',	func = '',		mod = 'i' },
	{ key = '<left>',	func = '',		mod = 'n' },
	{ key = '<left>',	func = '',		mod = 'i' },
	{ key = '<right>',	func = '',		mod = 'n' },
	{ key = '<right>',	func = '',		mod = 'i' },

	-- remap movements
	{ key = 'u',		func = 'k',		mod = 'n' },
	{ key = 'k',		func = 'l',		mod = 'n' },
	{ key = 'l',		func = '',		mod = 'n' },
	{ key = 'LL',		func = 'u',		mod = 'n' },
	{ key = 'U',		func = '5k',		mod = 'n' },
	{ key = 'H',		func = '5h',		mod = 'n' },
	{ key = 'J',		func = '5j',		mod = 'n' },
	{ key = 'K',		func = '5l',		mod = 'n' },
	{ key = 'S',		func = ':w<CR>',	mod = 'n' },
	{ key = 'Q',		func = ':q<CR>',	mod = 'n' },

	--plugins
	{ key = 'MDP',		func = '<Plug>MarkdownPreview',	mod = 'n' },
};

for i, mapping in ipairs(mappings) do
	vim.keymap.set(mapping.mod, mapping.key, mapping.func, {noremap = true});
end
