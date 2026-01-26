-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.cursorline = false
vim.opt.list = false
vim.g.ai_cmp = false
-- vim.opt.tabstop = 4
-- vim.opt.shiftwidth = 4
-- vim.opt.softtabstop = 4
vim.opt.wrap = true
-- vim.opt.smartindent = true

vim.filetype.add({
  pattern = {
    [".*%.blade%.php"] = "blade",
  },
})
