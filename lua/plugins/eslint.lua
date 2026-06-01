return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      eslint = {
        settings = {
          -- ESLint 9.x supports both flat and legacy configs, and the
          -- vscode-eslint server defaults to legacy eslintrc mode. With no
          -- .eslintrc present it falls back to espree, which chokes on
          -- TypeScript syntax in .astro frontmatter ("interface reserved").
          -- Force flat-config mode so it reads eslint.config.mjs.
          experimental = { useFlatConfig = true },
        },
      },
    },
  },
}
