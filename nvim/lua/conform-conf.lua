local conform = require("conform")
conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		html = { "html", "djlint" },
	},
	vim.api.nvim_create_autocmd("BufWritePre", {
		pattern = "*",
		callback = function(args)
			require("conform").format({ bufnr = args.buf })
		end,
	}),
	conform.format({
		async = false,
		timeout_ms = 500,
		lsp_fallback = true,
	}),
})
