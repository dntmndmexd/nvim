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
  {
    'nyoom-engineering/oxocarbon.nvim',
    priority = 1000,
    lazy = false,
  },
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
}
