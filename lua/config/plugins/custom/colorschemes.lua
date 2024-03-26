return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    'craftzdog/solarized-osaka.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      transparent = false,
      styles = {
        keywords = { italic = false },
        functions = { italic = true },
        variables = { italic = false },
      },
    },
  },
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  {
    'maxmx03/solarized.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      enables = {
        indentblankline = false,
      },
    },
  },
}
