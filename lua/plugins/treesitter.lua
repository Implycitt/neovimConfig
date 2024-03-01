return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufEnter" },
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			auto_install = true,
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			autopairs = { enable = true },
		})
	end,
}
