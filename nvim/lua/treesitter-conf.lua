require("nvim-treesitter.configs").setup({
	ensure_installed = { "python", "html", "css", 'javascript'},

	sync_install = true,
	auto_install = true,
	ignore_install = {},

	highlight = {
		enable = true,
		disable = {},
		additional_vim_regex_highlighting = true,
	},
	indent = {
		enable = true,
		disable = {},
	},
})
