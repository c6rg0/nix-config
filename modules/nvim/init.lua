local vim = vim
local Plug = vim.fn['plug#']

vim.cmd('let g:python3_host_prog = "/usr/bin/python3"')
vim.cmd('set guicursor=n-v-c-i:block')
vim.cmd('set number')

vim.call("plug#begin")
Plug("nvim-tree/nvim-web-devicons")
Plug("nvim-lualine/lualine.nvim")
Plug("preservim/nerdtree")
Plug 'nvim-lua/plenary.nvim'
Plug("nvim-telescope/telescope.nvim")
Plug("nvim-treesitter/nvim-treesitter")
Plug("lukas-reineke/indent-blankline.nvim")
Plug("ellisonleao/gruvbox.nvim")
Plug("akinsho/bufferline.nvim")
Plug("neoclide/coc.nvim")
Plug("brenoprata10/nvim-highlight-colors")
Plug("MeanderingProgrammer/render-markdown.nvim")
vim.call("plug#end")

local async = require("plenary.async")
local builtin = require('telescope.builtin')

require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

vim.o.background = "light"
vim.cmd([[colorscheme gruvbox]])

require('lualine').setup {
  options = {
    icons_enabled = true,

    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
      refresh_time = 16, -- ~60fps
      events = {
        'WinEnter',
        'BufEnter',
        'BufWritePost',
        'SessionLoadPost',
        'FileChangedShellPost',
        'VimResized',
        'Filetype',
        'CursorMoved',
        'CursorMovedI',
        'ModeChanged',
      },
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'fileformat'},
    lualine_y = {'filetype'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

require('bufferline').setup()
require('nvim-highlight-colors').setup({})
require("ibl").setup()
vim.opt.termguicolors = true

