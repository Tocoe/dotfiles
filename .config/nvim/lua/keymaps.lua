--[[

  _  __
 | |/ /
 | ' / ___ _   _ _ __ ___	__ _ _ __  ___
 |	< / _ \ | | | '_ ` _ \ / _` | '_ \/ __|
 | . \	__/ |_| | | | | | | (_| | |_) \__ \
 |_|\_\___|\__, |_| |_| |_|\__,_| .__/|___/
			__/ |				| |
		   |___/				|_|
--]]

-- General
vim.keymap.set("n", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.keymap.set('n', 'S', ':%s//g<Left><Left>')	-- 'Shift+S' to replace all

-- Terminal
vim.keymap.set('t', '<ESC>', [[<C-\><C-n>]])	-- Shortcut term escape
vim.keymap.set('t','<C-j>', [[<C-\><C-n><C-w>h<ESC>]])	-- Easy escape and split nav for terminal
vim.keymap.set('t','<C-k>', [[<C-\><C-n><C-w>l<ESC>]])

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Split Navigation - Ctrl+move to swap between splits.
vim.keymap.set('n','<C-j>', '<ESC><C-w>h', { noremap = false })
vim.keymap.set('n','<C-k>', '<ESC><C-w>l', { noremap = false })

-- Compiling & File/Project Operations
vim.keymap.set('n', '<F3>', ':Autoformat<CR>')	-- Autoformat
vim.keymap.set('n', '<leader>o', ':setlocal spell! spelllang=en_au<CR>')	-- Spell check
