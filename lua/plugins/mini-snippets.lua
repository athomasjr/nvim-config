return {
  {
    "nvim-mini/mini.snippets",
    opts = function(_, opts)
      local gen_loader = require("mini.snippets").gen_loader

      -- Fix: Map tsx language to load both TypeScript and React-TypeScript snippets
      -- mini.snippets uses tree-sitter parser name "tsx", not filetype "typescriptreact"
      -- friendly-snippets stores these in javascript/ directory with different names
      -- This only affects .tsx files and doesn't impact any other filetypes
      local lang_patterns = {
        tsx = {
          "javascript/typescript.json", -- TypeScript snippets from friendly-snippets
          "javascript/react-ts.json", -- React TypeScript snippets from friendly-snippets
          "tsx.json", -- Custom tsx snippets from ~/.config/nvim/snippets/
          "typescript.json", -- Custom TypeScript snippets also work in tsx files
        },
      }

      opts.snippets = {
        gen_loader.from_lang({ lang_patterns = lang_patterns }),
      }

      return opts
    end,
  },
}
