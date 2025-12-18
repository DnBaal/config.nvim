return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      color = {
        suggestion_color = "#6b6b6b",
        cterm = 244,
      },
      disable_inline_completion = false,
    })
    print("Loading supermaven")
  end,
}
