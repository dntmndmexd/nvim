return {
  'zaldih/themery.nvim',
  config = function()
    require('themery').setup {
      themeConfigFile = '~/AppData/Local/nvim/lua/config/colorscheme.lua',
      themes = {
        {
          name = 'solarized-osaka',
          colorscheme = 'solarized-osaka',
          before = [[
            vim.opt.background = "dark"
          ]],
        },

        {
          name = 'oxocarbon',
          colorscheme = 'oxocarbon',
          before = [[
            vim.opt.background = "light"
          ]],
        },
        {
          name = 'tokyonight-day',
          colorscheme = 'tokyonight-day',
          before = [[
            vim.opt.background = "light"
          ]],
        },
        {
          name = 'catppuccin-latte',
          colorscheme = 'catppuccin-latte',
          before = [[
            vim.opt.background = "light"
          ]],
        },
        {
          name = 'solarized light',
          colorscheme = 'solarized',
          before = [[
            vim.opt.background = "light"
          ]],
        },
      },
    }
  end,
}
