return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- Extend existing formatters_by_ft instead of replacing
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.go = { "golangci_lint" }
      opts.formatters_by_ft.sql = { "sql_formatter" }

      -- Add custom formatter configurations
      opts.formatters = opts.formatters or {}
      opts.formatters.golangci_lint = {
        command = "golangci-lint",
        args = { "fmt", "--stdin" },
        stdin = true,
        cwd = require("conform.util").root_file({ ".golangci.yml", ".golangci.yaml", "go.mod" }),
      }
      opts.formatters.sql_formatter = {
        prepend_args = {
          "--language",
          "postgresql",
          "--config",
          '{"keywordCase": "upper"}',
        },
      }

      return opts
    end,
  },
}
