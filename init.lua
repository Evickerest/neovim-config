-- General Configs
local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.ignorecase = true
opt.smartcase = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.autochdir = true

-- Keymaps
local key = vim.keymap
vim.g.mapleader = ''

key.set("n", "<leader>p", vim.cmd.Ex)
key.set("i", "<C-c>", "<Esc>")
key.set("n", "<c-_>", "gcc")
key.set("v", "<c-_>", "gc")

-- Load plugins
require("config.lazy")
require("lualine").setup()

-- General
vim.cmd("colorscheme catppuccin-mocha")
vim.cmd("filetype plugin indent on")

-- Highlighting
local hi = vim.api

hi.nvim_set_hl(0, "LineNr", {fg = "White"})
hi.nvim_set_hl(0, "LineNrAbove", {fg = "White"})
hi.nvim_set_hl(0, "LineNrBelow", {fg = "White"})
hi.nvim_set_hl(0, "Comment", {fg = "#989898"})












