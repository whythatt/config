return require("packer").startup({
	function(use)
		use("wbthomason/packer.nvim")
		-- colorizer
		use({ "catppuccin/nvim", as = "catppuccin" })
		use({ "ellisonleao/gruvbox.nvim" })
		use({
			"svrana/neosolarized.nvim",
			requires = { "tjdevries/colorbuddy.nvim" },
		})
		use({
			"nvim-lualine/lualine.nvim",
			requires = { "kyazdani42/nvim-web-devicons", opt = true },
		})
		use("nvim-tree/nvim-tree.lua")
		use("nvim-tree/nvim-web-devicons")
		use({
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
		})
		use("terrortylor/nvim-comment")
		-- lsp-config
		use({
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		})
		use({ "stevearc/conform.nvim" })
		-- nvim-cmp
		use({
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/nvim-cmp",
			"L3MON4D3/LuaSnip",
		})
		-- telescope
		use({
			"nvim-telescope/telescope.nvim",
			tag = "0.1.5",
			requires = { { "nvim-lua/plenary.nvim" } },
		})
		use("yamatsum/nvim-cursorline")
		use("m4xshen/autoclose.nvim")
		use("norcalli/nvim-colorizer.lua")
		-- debugging
		use("mfussenegger/nvim-dap-python")
		use("mfussenegger/nvim-dap")
		use("rcarriga/nvim-dap-ui")
		use("nvim-neotest/nvim-nio")
		-- indent
		use("lukas-reineke/indent-blankline.nvim")
	end,
})
