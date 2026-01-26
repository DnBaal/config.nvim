return {
  {
    priority = 1000,
    lazy = false,
    "tjdevries/colorbuddy.nvim",
    config = function()
      vim.cmd.colorscheme("gruvbuddy-dark")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbuddy-dark",
    },
  },
}
