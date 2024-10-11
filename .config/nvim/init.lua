require('plugins-init')
require('keymaps')
require('completion')
require('lsp')
require('mason').setup()
require('ibl').setup()
require('alpha').setup(require('alpha.themes.startify').config)
require('nvim-highlight-colors').setup({})

-- Plugin Configs
require('plugins/lualine')
require('plugins/telescope')
require('plugins/wilder')
require('kitty-scrollback')

vim.opt.title = true
vim.opt.ruler = false
vim.opt.showmode = false
vim.opt.showcmd = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.encoding = 'utf-8'
vim.opt.relativenumber = true
vim.opt.hlsearch = false

-- cpsm
 vim.g.ctrlp_match_func = "'match': 'cpsm#CtrlPMatch'"

-- Tabs and Indents
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Misc
vim.opt.compatible = false
vim.cmd("filetype plugin on")
vim.g.python3_host_prog = "/usr/bin/python3"

-- Cosmetic
vim.opt.termguicolors = true
vim.cmd("colorscheme tokyonight-night")

-- Ignore case when searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Autocommand Definitions (just to be tidy.)
local augroup = vim.api.nvim_create_augroup		-- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd		-- Create autocommand

-- Change opacity for kitty terminal only.
-- autocmd('VimEnter', {	pattern = '',
-- 						command = "silent !if [ $KITTY_WINDOW_ID ]; then kitty @ --to $KITTY_LISTEN_ON set-background-opacity 1; fi"})

-- autocmd('VimLeave', {	pattern = '',
-- 						command = "silent !if [ $KITTY_WINDOW_ID ]; then kitty @ --to $KITTY_LISTEN_ON set-background-opacity 0.7; fi"})

-- Remove trailing whitespace on save
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
