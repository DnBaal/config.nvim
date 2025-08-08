function ColorMyBoy(color)
	color = color or "vague"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
		"vague2k/vague.nvim",
		name = "vague",
		priority = 1000,
		config = function()
			require("vague").setup({
				transparent = false,
				style = {
					strings = "none",
					keyword_return = "none",
				},
				colors = {
					constant = "#CDCDCD",
				},
			})
			ColorMyBoy()
		end,
	},
	{
		"tjdevries/colorbuddy.nvim",
	},
	{
		"ficcdaf/ashen.nvim",
		-- optional but recommended,
		enabled = false,
		lazy = false,
		-- priority = 1000,
		-- configuration is optional!
		opts = {
			-- your settings here
		},
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		enabled = false,
		priority = 1000,
		config = function()
			require("rose-pine").setup({
				disable_background = true,
				color_overrides = {
					moon = {
						-- base = "#000000",
						mantle = "#000000",
						crust = "#000000",
					},
				},
				styles = {
					transparent = false,
					italic = false,
				},
				highlight_groups = {
					Comment = { italic = true },
				},
			})
		end,
	},
}
