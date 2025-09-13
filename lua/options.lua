-- Set the leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Keymaps to switch between workspaces/splits
vim.keymap.set('n','<C-h>','<C-w>h',{desc = 'Go to left window / split'})
vim.keymap.set('n','<C-l>','<C-w>l',{desc = 'Go to right window/splits'})
vim.keymap.set('n','<C-j>','<C-w>j',{desc = 'Go to lower window / split'})
vim.keymap.set('n','<C-k>','<C-w>k',{desc = 'Go to upper window / split'})


-- Basic editor options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.termguicolors = true -- Still useful for other plugins

-- ===== CUSTOM COLOR SCHEME =====
-- Use terminal background (transparent) or very dark gray
local bg_color = "NONE" -- This makes it use terminal background
-- Alternatively, use pure black:
-- local bg_color = "#000000"

-- Clear all existing highlighting first
vim.cmd("highlight clear")

-- Set our custom color scheme
vim.cmd([[
  " Base colors
  highlight Normal guifg=#ffffff guibg=NONE
  highlight Comment guifg=#005f5a gui=italic
  highlight Constant guifg=#d08700
  highlight Identifier guifg=#ffffff
  highlight Statement guifg=#ffffff
  highlight PreProc guifg=#d08700
  highlight Type guifg=#ffffff
  highlight Special guifg=#d08700
  highlight Underlined guifg=#d08700
  highlight Error guifg=#ffffff guibg=#d08700

  " UI elements
  highlight LineNr guifg=#71717b guibg=NONE
  highlight CursorLineNr guifg=#f4f4f5 guibg=NONE
  highlight Visual guibg=#333333

  " Status line (will be used by lualine)
  highlight StatusLine guifg=#000000 guibg=#3f3f46 gui=bold
  highlight StatusLineNC guifg=#666666 guibg=#1a1a1a

  " Pmenu (completion menu)
  highlight Pmenu guifg=#ffffff guibg=#1a1a1a
  highlight PmenuSel guifg=#000000 guibg=#d08700

  " Search
  highlight Search guifg=#000000 guibg=#d08700
  highlight IncSearch guifg=#000000 guibg=#d08700

  " Fold column
  highlight Folded guifg=#d08700 guibg=NONE

  " Diff
  highlight DiffAdd guifg=#00ff00 guibg=NONE
  highlight DiffDelete guifg=#ff0000 guibg=NONE
  highlight DiffChange guifg=#d08700 guibg=NONE
  highlight DiffText guifg=#000000 guibg=#d08700

  " Make the EndOfBuffer lines invisible (blend with terminal bg)
  highlight EndOfBuffer guifg=]] .. bg_color .. [[ guibg=NONE

  " Make sure everything uses our color scheme
  set background=dark
  syntax enable
]])
