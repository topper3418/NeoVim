print("Initializing Neovim")
require('travis')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
	    "scottmckendry/cyberdream.nvim",
	    lazy = false,
	    priority = 1000,
	},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true },
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
      		dependencies = { 'nvim-lua/plenary.nvim' }
    	},
	{ 'terrortylor/nvim-comment' },
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
})

require('nvim_comment').setup()

print("setting up treesitter")

-- Telescope setup
require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
     find_files = {
      theme = "dropdown",
    }
   -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
  },
}

print("done initializing")
