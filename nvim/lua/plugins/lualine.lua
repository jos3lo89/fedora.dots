-- return {
--   "nvim-lualine/lualine.nvim",
--   event = "VeryLazy",
--   -- requires = { "nvim-tree/nvim-web-devicons", opt = true },
--   dependencies = { "nvim-tree/nvim-web-devicons" }, -- Agrega nvim-web-devicons como dependencia
--   opts = {
--     options = {
--       theme = "kanagawa",
--       icons_enabled = true,
--     },
--     sections = {
--       lualine_a = {
--         {
--           "mode",
--           icon = "󰱯",
--         },
--       },
--     },
--   },
-- }
--

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Agrega nvim-web-devicons como dependencia
  opts = {
    options = {
      -- theme = "kanagawa",
      icons_enabled = true,
    },
    sections = {
      lualine_a = {
        {
          "mode",
          icon = "󰱯",
        },
      },
    },
  },
}
