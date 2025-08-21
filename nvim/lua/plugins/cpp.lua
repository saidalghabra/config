return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      if type(opts.servers) ~= "table" then
        return
      end

      local clangd = opts.servers.clangd or {}
      clangd.cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
        "--header-insertion=never",
        "--completion-style=detailed",
        "--function-arg-placeholders",
        "--fallback-style=llvm",
        "--inlay-hints=false",
        "--query-driver=/usr/local/arm-gnu-toolchain-12.3.rel1-x86_64-arm-none-eabi/bin/arm-none-eabi-*",
      }

      if type(clangd.keys) == "table" then
        vim.list_extend(clangd.keys, {
          { "gt", "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch Source/Header (C/C++)" },
        })
      end

      opts.servers.clangd = clangd
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["cpp"] = { "clang-format" },
        ["c"] = { "clang-format" },
      },
    },
  },
}
