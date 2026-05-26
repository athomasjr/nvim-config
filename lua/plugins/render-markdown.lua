return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    init = function()
      -- Explicit per-level heading colors (fg = text/icon, bg = full-width bar).
      -- Re-applied on colorscheme change so a theme switch can't wipe them.
      local function set_heading_hl()
        local levels = {
          { fg = "#f38ba8", bg = "#45293a" }, -- H1 red
          { fg = "#fab387", bg = "#463a2f" }, -- H2 peach
          { fg = "#a6e3a1", bg = "#2f3f2e" }, -- H3 green
          { fg = "#94e2d5", bg = "#2a3f3c" }, -- H4 teal
          { fg = "#89b4fa", bg = "#2c3550" }, -- H5 blue
          { fg = "#cba6f7", bg = "#3a2f4a" }, -- H6 mauve
        }
        for i, c in ipairs(levels) do
          vim.api.nvim_set_hl(0, "RenderMarkdownH" .. i, { fg = c.fg, bold = true })
          vim.api.nvim_set_hl(0, "RenderMarkdownH" .. i .. "Bg", { bg = c.bg })
        end
      end
      set_heading_hl()
      vim.api.nvim_create_autocmd("ColorScheme", {
        group = vim.api.nvim_create_augroup("RenderMarkdownHeadingColors", {}),
        callback = set_heading_hl,
      })
    end,
    opts = {
      heading = {
        enabled = true,
        render_modes = false,
        atx = true,
        setext = true,
        sign = true,
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
        position = "overlay",
        signs = { "󰫎 " },
        width = "full",
        left_margin = 0,
        left_pad = 0,
        right_pad = 0,
        min_width = 0,
        border = false,
        border_virtual = false,
        border_prefix = false,
        above = "▄",
        below = "▀",
        backgrounds = {
          "RenderMarkdownH1Bg",
          "RenderMarkdownH2Bg",
          "RenderMarkdownH3Bg",
          "RenderMarkdownH4Bg",
          "RenderMarkdownH5Bg",
          "RenderMarkdownH6Bg",
        },
        foregrounds = {
          "RenderMarkdownH1",
          "RenderMarkdownH2",
          "RenderMarkdownH3",
          "RenderMarkdownH4",
          "RenderMarkdownH5",
          "RenderMarkdownH6",
        },
        custom = {},
      },
      checkbox = {
        enabled = true,
        render_modes = false,
        bullet = false,
        left_pad = 0,
        right_pad = 1,
        unchecked = {
          icon = "󰄱 ",
          highlight = "RenderMarkdownUnchecked",
          scope_highlight = nil,
        },
        checked = {
          icon = "󰱒 ",
          highlight = "RenderMarkdownChecked",
          scope_highlight = nil,
        },
        custom = {
          todo = {
            raw = "[-]",
            rendered = "󰥔 ",
            highlight = "RenderMarkdownTodo",
            scope_highlight = nil,
          },
        },
      },
    },
  },
}
