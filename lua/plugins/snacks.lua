return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {},
      picker = {
        sources = {
          explorer = {
            hidden = true,
            ignored = true,
            exclude = { ".git", "node_modules", ".DS_Store" }, -- But exclude these
          },
          files = {
            hidden = true,
            ignored = true,
            exclude = { ".git", "node_modules", ".DS_Store" }, -- But exclude these
          },
        },
      },
    },
  },
}
