return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"lua",
					"cpp",
					"python",
					"javascript",
					"html",
					"css",
					"sql",
					"angular",
					"gitcommit",
					"gitignore",
					"json",
					"regex",
					"swift",
					"typescript",
					"vim",
				},
				sync_install = false,
				ignore_install = {},
				auto_install = true,
				modules = {},
				highlight = { enable = true },
			})
		end,
	},
}
