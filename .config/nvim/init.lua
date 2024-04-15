require('plugins-init')
require('keymaps')
require('completion')
require('lsp')
require('plugins/lualine')
require('plugins/telescope')
require('mason').setup()
require('ibl').setup()
require('alpha').setup(require('alpha.themes.startify').config)

-- GUI
vim.opt.title = true
vim.opt.ruler = false
vim.opt.showmode = false
vim.opt.showcmd = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.encoding = 'utf-8'
vim.opt.relativenumber = true
vim.g.foldmethod = 'marker'

-- Tabs and Indents
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Misc
vim.opt.compatible = false
vim.cmd("filetype plugin on")
vim.opt.syntax = True

-- Cosmetic
vim.opt.termguicolors = true
vim.cmd("colorscheme tokyonight-night")

-- Wilder
local wilder = require('wilder')
wilder.setup({modes = {':', '/', '?'}})

wilder.set_option('pipeline', {
	wilder.branch(
		wilder.cmdline_pipeline({
			fuzzy = 1,
			set_pcre2_pattern = 1,
		})
	),
})

wilder.setup {
	next_key = "<C-j>",
	accept_key = "<C-space>",
	reject_key = "<C-h>",
	previous_key = "<C-k>",
	modes = { ":", "/", "?" },
}

wilder.set_option(
"renderer",
	wilder.popupmenu_renderer(wilder.popupmenu_border_theme {
		border = "rounded",
		highlights = { border = "Normal" },
		highlighter = wilder.basic_highlighter(),
		left = { " ", wilder.popupmenu_devicons() },
	})
)

-- Ignore case when searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- VimTex
vim.g.vimtex_view_method = "zathura"

-- Autocommand Definitions (just to be tidy.)
local augroup = vim.api.nvim_create_augroup		-- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd		-- Create autocommand

-- Use system clipboard as default yank/paste buffer
vim.opt.clipboard = 'unnamedplus'
-- Remove trailing whitespace and retab on save
autocmd('BufWritePre', {pattern = '', command = ":%s/\\s\\+$//e"})
-- Disable autocomment on new line
autocmd('FileType', {pattern = '', command = "setlocal formatoptions-=c formatoptions-=r formatoptions-=o"})
-- Clear tex build files when vim closes
autocmd('VimLeave', {pattern = '*.tex', command = "!texclear %"})
-- Toggle insert mode when switching to terminal buffer
autocmd('TermOpen', {pattern = '', command = 'startinsert'})
autocmd('BufWinEnter', {pattern = 'term://*', command = 'startinsert'})
autocmd({'WinEnter', 'BufLeave'}, {pattern = 'term://*', command = 'startinsert'})
-- Reload after saving configs
autocmd('BufWritePost', {pattern = {'Xresources','Xdefaults','xresources','xdefaults'}, command = '!xrdb %'})

