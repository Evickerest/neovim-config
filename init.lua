-- Load plugins
--
require("config.lazy")
require("lualine").setup()
require("luasnip").config.set_config({
	enable_autosnippets = true,
	store_selection_keys = "<Tab>"
})

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
vim.g.mapleader = " "

key.set("n", "<leader>p", vim.cmd.Ex)
key.set("n", "<leader>h", "<cmd>noh<cr>")
key.set("i", "<C-c>", "<Esc>")
key.set("n", "<c-_>", "gcc")
key.set("v", "<c-_>", "gc")

-- Fat finger Fixes
key.set("ca", "W", "w")
key.set("ca", "Q", "q")
key.set("ca", "Wq", "wq")
key.set("ca", "wQ", "wq")

-- Split Maps
key.set("n", "<leader>s", "<cmd>split<cr>")
key.set("n", "<leader>v", "<cmd>vsplit<cr>")

key.set("n", "<c-k>", "<cmd>wincmd k<cr>")
key.set("n", "<c-j>", "<cmd>wincmd j<cr>")
key.set("n", "<c-h>", "<cmd>wincmd h<cr>")
key.set("n", "<c-l>", "<cmd>wincmd l<cr>")

key.set("n", "<c-Up>", "<cmd>horizontal resize +1,<cr>")
key.set("n", "<c-Down>", "<cmd>horizontal resize -1,<cr>")
key.set("n", "<c-Left>", "<cmd>vertical resize +1,<cr>")
key.set("n", "<c-Right>", "<cmd>vertical resize -1,<cr>")

-- General
vim.cmd("colorscheme catppuccin-mocha")
vim.cmd("filetype plugin indent on")

-- Highlighting
local hi = vim.api

hi.nvim_set_hl(0, "Normal", {bg = "None"})
hi.nvim_set_hl(0, "LineNr", {fg = "White"})
hi.nvim_set_hl(0, "LineNrAbove", {fg = "White"})
hi.nvim_set_hl(0, "LineNrBelow", {fg = "White"})
hi.nvim_set_hl(0, "Comment", {fg = "#989898"})

