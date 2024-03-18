-- [ Options ]

vim.opt.number = true -- Display line numbers
vim.opt.relativenumber = true -- Relative

vim.opt.mouse = 'a' -- Enable mouse mode

if not vim.g.vscode then
  vim.opt.showmode = false -- Don't show mode unless in VSCode (replace with lualine)
end

vim.opt.clipboard = 'unnamedplus' -- Sync clipboard with OS

vim.opt.breakindent = true -- Enable break indent

vim.opt.undofile = true -- Save undo history

-- Case-insensitive search unless \C or >1 capital letters in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes' -- Keep signcolumn on

vim.opt.updatetime = 250 -- Decrease update time

vim.opt.timeoutlen = 300 -- Display whick-key popups sooner

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.cursorline = true -- Show which line your cursor is on

vim.opt.inccommand = 'split' -- Preview substitutions live

vim.opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor.

-- [ Keymaps ]

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
-- CTRL+<hjkl>
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [ Autocommands ]

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
