return {
	{
		"zbirenbaum/copilot.lua",
		enabled = true,
		event = { "BufEnter" },
		config = function()
			require("copilot").setup({
				suggestion = {
					enabled = true,
				},
				panel = { enabled = true },
			})
		end,
	},
	{
		"zbirenbaum/copilot-cmp",
		enabled = true,
		event = { "BufEnter" },
		dependencies = { "zbirenbaum/copilot.lua" },
		config = function()
			require("copilot_cmp").setup()
		end,
	},
}
