--[[
	╔╗
	║║
╔══╗║║ ╔╗╔╗╔══╗╔╗╔══╗╔══╗
║╔╗║║║ ║║║║║╔╗║╠╣║╔╗║║══╣
║╚╝║║╚╗║╚╝║║╚╝║║║║║║║╠══║
║╔═╝╚═╝╚══╝╚═╗║╚╝╚╝╚╝╚══╝
║║		   ╔═╝║
╚╝		   ╚══╝
--]]

local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

-- Framework and API
Plug 'nvim-lua/plenary.nvim'

-- Theme
Plug 'folke/tokyonight.nvim'

-- Navigation and Project Management
Plug ( 'nvim-telescope/telescope.nvim', {['tag']='0.1.6'} )
Plug 'goolord/alpha-nvim'

-- UI Related
Plug 'nvim-lualine/lualine.nvim'-- Status bar
Plug 'ryanoasis/vim-devicons'	-- Pretty icons
Plug 'lukas-reineke/indent-blankline.nvim'	-- sexy indents
Plug ('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn['TSUpdate']})
Plug 'fladson/vim-kitty' -- Syntax highlighting for kitty config
Plug 'nvim-tree/nvim-web-devicons'

-- Vsnip
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

-- Autocompletion
Plug 'hrsh7th/nvim-cmp' -- Completion main plugin
Plug 'hrsh7th/cmp-cmdline' -- cmdline completion
Plug 'hrsh7th/cmp-nvim-lsp' -- Lsp completion
Plug ('gelguy/wilder.nvim', { as = 'wilder', ['do'] = vim.fn['let &rtp=&rtp UpdateRemotePlugins']})	-- nicer custom wildmenu extension
Plug ('roxma/nvim-yarp', { ['do'] = vim.fn['pip install -r requirements.txt']})
Plug 'roxma/vim-hug-neovim-rpc'

-- LSP
Plug 'neovim/nvim-lspconfig' -- Nvim official LSP config
Plug 'folke/neodev.nvim'	-- full nvim api integration

-- Additional Motions & Functions
Plug 'tpope/vim-commentary' -- allows for rapid line commenting
Plug 'tpope/vim-surround'	-- easily change surrounding syntax e.g. () '' {} []

-- Project Productivity Tools
Plug 'williamboman/mason.nvim'	-- package manager for neovim
Plug 'williamboman/mason-lspconfig.nvim'	-- LSP integration for mason

vim.call('plug#end')
