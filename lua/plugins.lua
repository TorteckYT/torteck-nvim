-- install lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- lazy plugins
require("lazy").setup({
	-- file tree
	{
		"nvim-tree/nvim-tree.lua",
		lazy = true,
	},

	-- statusline
	{
		'nvim-lualine/lualine.nvim',
		dependencies = {'nvim-tree/nvim-web-devicons'},
		lazy = true,
	},

	-- tabs
	{
		'romgrk/barbar.nvim',
		dependencies = {
			'lewis6991/gitsigns.nvim',
			'nvim-tree/nvim-web-devicons',
		},
		init = function() vim.g.barbar_auto_setup = false end,
    	opts = {},
		version = '^1.0.0',
	},

	-- syntax highlighting
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
	},

	-- best colorcheme ever
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = true,
	},

	-- code autocomplete
	{"neovim/nvim-lspconfig"},

	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'saadparwaiz1/cmp_luasnip'},
	{'L3MON4D3/LuaSnip'},

	-- autoclose brackets
	{'m4xshen/autoclose.nvim'},

	-- autosave
	{"pocco81/auto-save.nvim"},
})
