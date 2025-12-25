vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>p", vim.cmd.Ex)
vim.keymap.set("n", "<leader>s", vim.cmd.split)
vim.keymap.set("n", "<leader>v", vim.cmd.vsplit)
vim.keymap.set("n", "<C-Up>", "<cmd>horizontal resize +1,<cr>")
vim.keymap.set("n", "<C-Down>", "<cmd>horizontal resize -1,<cr>")
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize +1,<cr>")
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize -1,<cr>")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<leader>l", "<cmd>lua vim.diagnostic.setloclist()<CR>", {noremap=true, silent=true})

-- For my fat fingers
vim.cmd.cabb "W w"
vim.cmd.cabb "Q q"
vim.cmd.cabb "WQ wq"
vim.cmd.cabb "wQ wq"
vim.cmd.cabb "Wq wq"

-- Packages
vim.pack.add({
	"https://github.com/catppuccin/nvim",
	"https://github.com/nvim-lualine/lualine.nvim",
	"https://github.com/nvim-treesitter/nvim-treesitter",
	"https://github.com/seblyng/roslyn.nvim",
	{
		src = "https://github.com/saghen/blink.cmp",
		name = "blink.cmp",
		version = "v1.8.0"
	}
})

require("themes.main")
require("blink.cmp").setup({
	keymap = {
		preset = "default",
		["<C-k>"] = { "select_prev", "fallback" },
		["<C-j>"] = { "select_next", "fallback" },
		["<Tab>"] = { "select_and_accept", "fallback" },
		["<C-e>"] = { "show", "fallback" },
	}
})

vim.lsp.enable({
	"lua_ls",
	"angularls",
	"ts_ls"
})
