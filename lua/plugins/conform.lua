return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        go = { "golangci_lint" },
      },
      formatters = {
        golangci_lint = {
          command = "golangci-lint",
          args = { "fmt", "--stdin" },
          stdin = true,
          cwd = require("conform.util").root_file({ ".golangci.yml", ".golangci.yaml", "go.mod" }),
        },
      },
    },
  },
}
