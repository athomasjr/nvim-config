return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local function cst_time()
        local handle = io.popen("TZ='America/Chicago' date '+%l:%M %p'")
        local result = handle:read("*a")
        handle:close()
        return "🕐" .. result:gsub("\n", "")
      end

      opts.sections.lualine_z = { cst_time }

      return opts
    end,
  },
}
