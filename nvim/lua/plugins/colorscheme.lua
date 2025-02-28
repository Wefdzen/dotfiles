return {
  {
    "craftzdog/solarized-osaka.nvim",
    branch = "osaka",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    opts = function()
      return {
        transparent = true,
        colorscheme = "gruvbox",
      }
    end,
  },
}
