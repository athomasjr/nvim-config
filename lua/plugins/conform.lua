return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- Extend existing formatters_by_ft instead of replacing
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.go = { "golangci_lint" }

      -- Add custom formatter configurations
      opts.formatters = opts.formatters or {}
      opts.formatters.golangci_lint = {
        command = "golangci-lint",
        args = { "fmt", "--stdin" },
        stdin = true,
        cwd = require("conform.util").root_file({ ".golangci.yml", ".golangci.yaml", "go.mod" }),
      }
      -- Override sqlfluff to use .sqlfluff config instead of hardcoded dialect
      opts.formatters.sqlfluff = {
        args = { "format", "--dialect=postgres", "-" },
      }

      return opts
    end,
  },
}
