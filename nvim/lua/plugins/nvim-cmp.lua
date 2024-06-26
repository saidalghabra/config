-- return {
--   "hrsh7th/nvim-cmp",
--   ---@param opts cmp.ConfigSchema
--   opts = function(_, opts)
--     local cmp = require("cmp")
--     local types = require("cmp.types")
--     local compare = require("cmp.config.compare")
--
--     opts.sorting.comparators = {
--       compare.offset,
--       compare.exact,
--       function(entry1, entry2)
--         local kind1 = entry1:get_kind()
--         local kind2 = entry2:get_kind()
--
--         if kind1 ~= kind2 then
--           if kind1 == types.lsp.CompletionItemKind.Snippet then return true end
--           if kind2 == types.lsp.CompletionItemKind.Snippet then return false end
--         end
--       end,
--       compare.score,
--       ---@diagnostic disable-next-line: assign-type-mismatch
--       compare.recently_used,
--       ---@diagnostic disable-next-line: assign-type-mismatch
--       compare.locality,
--       compare.kind,
--       compare.sort_text,
--       compare.length,
--       compare.order,
--     }
--
--     opts.mapping = vim.tbl_extend("force", opts.mapping, {
--       ["<Tab>"] = cmp.mapping(function(fallback)
--         if cmp.visible() then
--           cmp.select_next_item()
--         else
--           fallback()
--         end
--       end, { "i", "s" }),
--       ["<S-Tab>"] = cmp.mapping(function(fallback)
--         if cmp.visible() then
--           cmp.select_prev_item()
--         else
--           fallback()
--         end
--       end, { "i", "s" }),
--       ["<C-o>"] = cmp.mapping(function(fallback)
--         if not cmp.complete() then fallback() end
--       end, { "i", "s" }),
--     })
--     return opts
--   end,
-- }
return {
  "hrsh7th/nvim-cmp",
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local cmp = require("cmp")
    local types = require("cmp.types")
    local compare = require("cmp.config.compare")

    opts.sorting.comparators = {
      compare.offset,
      compare.exact,
      function(entry1, entry2)
        local kind1 = entry1:get_kind()
        local kind2 = entry2:get_kind()

        if kind1 ~= kind2 then
          if kind1 == types.lsp.CompletionItemKind.Snippet then return true end
          if kind2 == types.lsp.CompletionItemKind.Snippet then return false end
        end
      end,
      compare.score,
      ---@diagnostic disable-next-line: assign-type-mismatch
      compare.recently_used,
      ---@diagnostic disable-next-line: assign-type-mismatch
      compare.locality,
      compare.kind,
      compare.sort_text,
      compare.length,
      compare.order,
    }
    return opts
  end,
}
