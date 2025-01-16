return {
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    opts = {
      transparent = true,
      theme = "dragon", -- Establece la variante del tema como 'dragon' (otras opciones podrían ser 'wave' o 'lotus')
      overrides = function(colors)
        local theme = colors.theme
        return {
          -- Personaliza el fondo transparente para ventanas flotantes
          NormalFloat = { bg = "none" }, -- Elimina el fondo en las ventanas flotantes
          FloatBorder = { bg = "none" }, -- Elimina el fondo en los bordes de las ventanas flotantes
          FloatTitle = { bg = "none" }, -- Elimina el fondo en los títulos de las ventanas flotantes

          -- Define colores personalizados para el modo oscuro
          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 }, -- Texto con un color tenue y un fondo ligeramente más oscuro

          -- Personaliza los colores del menú emergente (popup menu)
          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- Fondo y texto para el menú emergente
          PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 }, -- Fondo para el elemento seleccionado del menú emergente
          PmenuSbar = { bg = theme.ui.bg_m1 }, -- Fondo de la barra de desplazamiento del menú emergente
          PmenuThumb = { bg = theme.ui.bg_p2 }, -- Fondo del "pulgar" de la barra de desplazamiento del menú emergente
        }
      end,
    },
  },
  {
    -- Plugin for the Everforest color scheme
    "neanias/everforest-nvim",
    version = false, -- Use the latest version
    lazy = false, -- Load this plugin immediately
    config = function()
      require("everforest").setup({
        background = "hard", -- Set the background to 'hard'
        italis = true, -- Enable italics
        transparent_background_level = 1, -- Uncomment to enable transparency
        diagnostic_text_highlight = true, -- Enable diagnostic text highlight
        diagnostic_virtual_text = "coloured", -- Set diagnostic virtual text to colored
        colours_override = function(palette)
          palette.bg0 = "#1A1A22" -- Override background color
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "kanagawa-dragon",
      colorscheme = "everforest",
    },
  },
}
