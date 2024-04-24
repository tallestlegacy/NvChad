return {

	-- noice.nvim
	{
		"folke/noice.nvim",
		dependencies = {
			"muniftanjim/nui.nvim",
			-- "rcarriga/nvim-notify",
		},
		config = function()
			require("noice").setup({
				routes = {
					{
						filter = {
							event = "msg_show",
							kind = "",
							find = "written",
						},
					},
				},
			})
			-- require("notify").setup({ background_colour = "#000000", render = "compact" })
		end,
	},
	{
		"karb94/neoscroll.nvim",
		config = function()
			require("neoscroll").setup()
		end,
	},
}
