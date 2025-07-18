-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  { "n", "i", "t" },
  "<M-]>",
  "<cmd>vertical resize +5<CR>",
  { silent = true, desc = "Increase Window Height" }
)
vim.keymap.set(
  { "n", "i", "t" },
  "<M-[>",
  "<cmd>vertical resize -5<CR>",
  { silent = true, desc = "Decrease Window Height" }
)
vim.keymap.set({ "n", "i", "t" }, "<M-=>", "<cmd>resize +5<CR>", { silent = true, desc = "Increase Window Width" })
vim.keymap.set({ "n", "i", "t" }, "<M-->", "<cmd>resize -5<CR>", { silent = true, desc = "Decrease Window Width" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { silent = true })
vim.keymap.set("n", "n", "nzzzv", { silent = true })
vim.keymap.set("n", "N", "Nzzzv", { silent = true })

vim.keymap.set("n", "<M-r>", function()
  vim.bo.modifiable = not vim.bo.modifiable
  vim.notify("Modifiable: " .. tostring(vim.bo.modifiable))
end)

vim.keymap.set("x", "p", "P")
