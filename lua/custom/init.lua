require("custom.config.settings")
require("custom.config.keymaps")
require("custom.lazy")
require("custom.config.autocmds")

local augroup = vim.api.nvim_create_augroup
local DanBGroup = augroup("DanBGroup", {})
local autocmd = vim.api.nvim_create_autocmd

autocmd("LspAttach", {
	group = DanBGroup,
	callback = function(e)
		local opts = { buffer = e.buf }
		vim.keymap.set("n", "<leader>vrr", function()
			vim.lsp.buf.references()
		end, opts)
	end,
})
