return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		build = ":Copilot auth",
		enabled = false,
		opts = {
			panel = { enabled = false },
			suggestion = {
				enabled = true,
				auto_trigger = false,
				keymap = {
					accept = "<C-l>",
				},
			},

			copilot_node_command = vim.fn.expand("$HOME") .. "/.nvm/versions/node/v22.16.0/bin/node", -- Node.js version must be > 20
			vim.api.nvim_create_autocmd("User", {
				pattern = "BlinkCmpMenuOpen",
				callback = function()
					vim.b.copilot_suggestion_hidden = true
				end,
			}),

			vim.api.nvim_create_autocmd("User", {
				pattern = "BlinkCmpMenuClose",
				callback = function()
					vim.b.copilot_suggestion_hidden = false
				end,
			}),
		},

		keys = {
			{ "<leader>tc", ":Copilot suggestion toggle_auto_trigger<CR>", silent = true },
		},
	},
}
