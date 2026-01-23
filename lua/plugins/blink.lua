return {
  {
    "saghen/blink.cmp",
    opts = {
      sources = {
        transform_items = function(ctx, items)
          local ft = vim.bo.filetype
          -- Only filter {} snippet in TypeScript/TSX files
          if ft == "typescript" or ft == "typescriptreact" then
            return vim.tbl_filter(function(item)
              if item.label == "{}" or item.label == "{}~" then
                return false
              end
              return true
            end, items)
          end
          return items
        end,
      },
    },
  },
}
