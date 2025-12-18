return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      ---@type lspconfig.options
      servers = {
        phpactor = {
          filetypes = { "php", "blade" },
          settings = {
            phpactor = {
              filetypes = { "php", "blade" },
              files = {
                associations = { "*.php", "*.blade.php" }, -- Associating .blade.php files as well
                maxSize = 5000000,
              },
            },
          },
        },
        html = {
          filetypes = { "html", "blade" },
        },
        -- emmet_language_server = {
        --   filetypes = { "html", "blade", "antlers", "javascriptreact", "typescriptreact", "vue" },
        -- },
        -- intelephense = {
        --   filetypes = { "php", "blade" },
        --   settings = {
        --     intelephense = {
        --       filetypes = { "php", "blade" },
        --       files = {
        --         associations = { "*.php", "*.blade.php" }, -- Associating .blade.php files as well
        --         maxSize = 5000000,
        --       },
        --     },
        --   },
        -- },
        -- cssls = {
        --   filetypes = { "css", "scss", "less", "sass" },
        -- },
      },
    },
  },
}
