return {
  "nvim-telescope/telescope.nvim",
  lazy = false, -- Force it to load immediately
  priority = 1000,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    defaults = {
      file_ignore_patterns = { "%.git/", "%.git$", "node_modules/", "%.DS_Store$" },
    },
    pickers = {
      find_files = {
        hidden = true,
        no_ignore = true,
      },
    },
  },
  keys = {
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files({
          hidden = true,
          no_ignore = true,
          file_ignore_patterns = { "%.git/", "%.git$", "node_modules/", "%.DS_Store$" },
        })
      end,
      desc = "Find Files (including hidden and ignored)",
    },
    {
      "<leader><space>",
      function()
        require("telescope.builtin").find_files({
          hidden = true,
          no_ignore = true,
          file_ignore_patterns = { "%.git/", "%.git$", "node_modules/", "%.DS_Store$" },
          cwd = require("lazyvim.util").root(),
        })
      end,
      desc = "Find Files (Root Dir, including hidden and ignored)",
    },
  },
}
