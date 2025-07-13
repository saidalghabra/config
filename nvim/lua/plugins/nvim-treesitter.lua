return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "OXY2DEV/markview.nvim" },
    opts = {
      ensure_installed = {
        "cmake",
        "c",
        "cpp",
        "python",
        "markdown",
        "markdown_inline"
      }
    }
  }
}
