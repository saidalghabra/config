return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "neocmakelsp",
        "cmakelang",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      if type(opts.server) ~= "table" then
        return
      end
      opts.server.neocmake = {}
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["cmake"] = { "cmake_format" },
      },
    },
  },
}
