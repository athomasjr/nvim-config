return {
  {
    "nvim-mini/mini.move",
    event = "VeryLazy",
    opts = {
      mappings = {
        -- Move visual selection in Visual mode
        left = "",
        right = "",
        down = "<S-Down>",
        up = "<S-Up>",

        -- Move current line in Normal mode
        line_left = "",
        line_right = "",
        line_down = "<S-Down>",
        line_up = "<S-Up>",
      },

      options = {
        -- Automatically reindent selection during linewise vertical move
        reindent_linewise = true,
      },
    },
  },
}
