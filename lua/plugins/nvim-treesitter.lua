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
				},
				auto_install = true,
				highlight = { enable = true },
			})
		end,
	},
}
