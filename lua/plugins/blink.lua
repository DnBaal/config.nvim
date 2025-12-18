return {
  "saghen/blink.cmp",
  optional = true,
  dependencies = { "adalessa/laravel.nvim", "ricardoramirezr/blade-nav.nvim", "saghen/blink.compat" },
  opts = {
    sources = {
      compat = { "blade-nav", "laravel" },
      providers = {
        ["blade-nav"] = {
          name = "blade-nav",
          module = "blade-nav.blink",
        },
        laravel = {
          name = "laravel",
          module = "blink.compat.source",
          score_offset = 95,
        },
      },
    },
  },
}
