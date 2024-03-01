return {
	"nvim-tree/nvim-web-devicons",
	confg = function()
		require("nvim-web-devicons").setup({
			override_by_filename = {
				[".gitignore"] = {
					icon = "",
					color = "#f1502f",
					name = "Gitignore",
				},
			},
		})
	end,
}
