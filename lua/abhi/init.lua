vim.wo.number = true
vim.bo.filetype = 'lua'

--require('keybindings')
vim.opt.cursorline = true
require('abhi.lspconfig')
require('abhi.nvim-cmp')

require('packer').startup(function() 
	use 'wbthomason/packer.nvim'
	use 'tomasr/molokai'
	use {
		'vimwiki/vimwiki',
		config = function()
			vim.g.vimwiki_list = {
			{
				path = '~/devenv/codevion.github.io/',
				syntax = 'markdown',
				ext = '.md',
			}
		}

		vim.g.vimwiki_ext2syntax = {
			['.md'] = 'markdown',
			['.markdown'] = 'markdown',
			['.mdown'] = 'markdown',

		}				
		end
	}

	use 'morhetz/gruvbox'
	use 'vim-airline/vim-airline'
	use 'drewtempelmeyer/palenight.vim'
    use 'sainnhe/gruvbox-material' 
	use 'lifepillar/vim-gruvbox8'
	use {
	  'nvim-telescope/telescope.nvim',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'neovim/nvim-lspconfig' 
	use 'nvim-lua/completion-nvim' --for autocompletion
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' -- Snippets plugin
	use 'onsails/lspkind.nvim' 
end)

vim.g.colors_name = 'gruvbox8_hard'
vim.cmd('colorscheme gruvbox8_hard')



vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])


--Settings for treesitter



--Setting for LSP


--Setting for telescope
--Using Lua functions
