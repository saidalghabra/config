-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.virtualedit = "block"
vim.o.wrap = true
vim.o.textwidth = 80
vim.wo.colorcolumn = "+1"
vim.wo.relativenumber = true

-- Undotree
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.o.undofile = true

-- Use treesitter for folding
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"

-- What to restore when persisted.nvim runs
vim.o.sessionoptions = "buffers,curdir,folds,globals,help,skiprtp,tabpages,winpos,winsize"

vim.g.lazygit_config = false

for _, value in ipairs({
  "loaded_python3_provider",
  "loaded_ruby_provider",
  "loaded_node_provider",
  "loaded_perl_provider",
}) do
  vim.g[value] = 0
end
