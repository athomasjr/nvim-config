return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- Override the time display in lualine_z with 12-hour format
      opts.sections.lualine_z = {
        function()
          local time = os.date("%I:%M%p")
          -- Remove leading zero from hour and lowercase am/pm
          time = time:gsub("^0", ""):lower()
          return "🕐 " .. time
        end,
      }
      return opts
    end,
  },
}
