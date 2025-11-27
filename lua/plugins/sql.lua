return {
  -- Configure conform.nvim for SQL formatting with PostgreSQL dialect
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        sql = { "sqlfluff" },
        mysql = { "sqlfluff" },
        plsql = { "sqlfluff" },
      },
      formatters = {
        sqlfluff = {
          require_cwd = false,
          args = { "format", "--dialect=postgres", "--config", vim.fn.stdpath("config") .. "/.sqlfluff", "-" },
        },
      },
    },
  },

  -- Configure nvim-lint for SQL linting
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        sql = { "sqlfluff" },
      },
      linters = {
        sqlfluff = {
          args = { "lint", "--format=json", "--dialect=postgres", "--config", vim.fn.stdpath("config") .. "/.sqlfluff" },
        },
      },
    },
  },

  -- Ensure sqlfluff is installed
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "sqlfluff",
      },
    },
  },
}
