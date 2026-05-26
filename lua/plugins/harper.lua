return {
  -- Ensure the harper-ls binary is installed via Mason
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "harper-ls")
    end,
  },
  -- Register the grammar/spell language server
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        harper_ls = {
          filetypes = { "markdown", "gitcommit", "text", "html" },
          settings = {
            ["harper-ls"] = {
              userDictPath = vim.fn.stdpath("config") .. "/spell/harper-dict.txt",
              linters = {
                spell_check = true,
                sentence_capitalization = true,
                long_sentences = true,
                repeated_words = true,
                spaces = true,
                matcher = true,
              },
            },
          },
        },
      },
    },
  },
}
