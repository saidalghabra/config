return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["markdown"] = { "markdownlint-cli2" },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "OXY2DEV/markview.nvim",
    },
    opts = {
      ensure_installed = {
        "markdown",
        "markdown_inline",
      },
    },
  },
  {
    "OXY2DEV/markview.nvim",
    lazy = false,
    opts = {
      preview = {
        filetypes = { "markdown", "codecompanion" },
        ignore_buftypes = {},
      },
    },
  },
}
