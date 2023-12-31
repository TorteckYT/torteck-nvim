-- this is not working
require("auto-save").setup {
	enabled = true,
}

-- disable on startup
vim.cmd("ASToggle")
-- toggle shortcut
vim.api.nvim_set_keymap("n", "<c-a>", ":ASToggle<CR>", {})
