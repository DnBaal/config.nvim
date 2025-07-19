function ColorMyBoy(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		enabled = false,
		config = function()
			require("catppuccin").setup({
				-- color_overrides = {
				-- 	mocha = {
				-- 		base = "#000000",
				-- 		-- mantle = "#000000",
				-- 		-- crust = "#000000",
				-- 	},
				-- },
			})
			-- ColorMyBoy("catppuccin-mocha")
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		enabled = false,
		config = function()
			require("gruvbox").setup({
				terminal_colors = true, -- add neovim terminal colors
				undercurl = true,
				underline = true,
				bold = true,
				italic = {
					strings = true,
					emphasis = true,
					comments = true,
					operators = false,
					folds = true,
				},
				strikethrough = true,
				invert_selection = false,
				invert_signs = false,
				invert_tabline = false,
				inverse = true, -- invert background for search, diffs, statuslines and errors
				contrast = "soft", -- can be "hard", "soft" or empty string
				palette_overrides = {},
				overrides = {},
				dim_inactive = false,
				transparent_mode = false,
			})
		end,
	},
	{

		"rose-pine/neovim",
		name = "rose-pine",
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
			ColorMyBoy()
		end,
	},
	{ "sainnhe/gruvbox-material", name = "gruvbox-material", priority = 1000, enabled = false },
}
