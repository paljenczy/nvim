local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'


if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

	-- vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua


return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim'}

  -- Information
  use 'nanotee/nvim-lua-guide'

  -- Quality of life improvements
  use 'norcalli/nvim_utils'

  -- -- LSP
  use { "williamboman/mason.nvim" }
  use { "williamboman/mason-lspconfig.nvim" }
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'neovim/nvim-lspconfig'
  use {'glepnir/lspsaga.nvim', branch = 'main'}
  use 'onsails/lspkind-nvim'

  use 'folke/trouble.nvim'

  -- Project management
  use 'ahmedkhalf/project.nvim'

  -- -- Autocomplete
  use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
            'quangnguyen30192/cmp-nvim-ultisnips',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-emoji' 
        }
    }

  -- -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/playground'

  use { "cshuaimin/ssr.nvim", module = "ssr" }

  -- -- Icons
  use 'kyazdani42/nvim-web-devicons'

  -- -- Status Line and Bufferline
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
  use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}

  -- -- Telescope
  use 'nvim-lua/popup.nvim'
  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use({ "folke/noice.nvim", requires = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify", } })

  -- -- Color
  use({ "catppuccin/nvim", as = "catppuccin"})

  use "lukas-reineke/indent-blankline.nvim"

  -- -- Terminal
  use {'akinsho/nvim-toggleterm.lua', tag = "v2.*"}


  -- -- Git
  -- use 'TimUntersberger/neogit'
  use {'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  -- use 'f-person/git-blame.nvim'
  -- use 'tpope/vim-fugitive'
  -- use 'tpope/vim-rhubarb'
  use 'sindrets/diffview.nvim'
  use 'cwebster2/github-coauthors.nvim'

  -- -- General Plugins
  use 'b3nj5m1n/kommentary'

  -- R 
  use {'jalvesaq/Nvim-R', branch = 'stable'}

  -- Typescript
  use {'jose-elias-alvarez/typescript.nvim'}

  -- quarto
  use { 'quarto-dev/quarto-nvim', requires = {'neovim/nvim-lspconfig'}
}
end)
