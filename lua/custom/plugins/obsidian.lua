return {
	{
		"obsidian-nvim/obsidian.nvim",
		version = "*", -- recommended, use latest release instead of latest commit
		lazy = true,
		ft = "markdown",
		-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
		-- event = {
		--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
		--   -- refer to `:h file-pattern` for more examples
		--   "BufReadPre path/to/my-vault/*.md",
		--   "BufNewFile path/to/my-vault/*.md",
		-- },
		dependencies = {
			-- Required.
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",

			-- see below for full list of optional dependencies 👇
		},
		---@module 'obsidian'
		---@type obsidian.config.ClientOpts
		opts = {
			workspaces = {
				{
					name = "Vatican-Lib",
					path = "~/vaults/Vatican-Lib/",
				},
			},
			completion = {
				-- Set to false to disable completion.
				blink = true,
				-- Trigger completion at 2 chars.
				min_chars = 2,
			},
			picker = {
				name = "telescope.nvim",
			},
			legacy_commands = false,

			-- see below for full list of options 👇
		},
	},
}
