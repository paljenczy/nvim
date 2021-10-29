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
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind-nvim'
  use 'kosayoda/nvim-lightbulb'
  use 'mfussenegger/nvim-jdtls'
  use 'kabouzeid/nvim-lspinstall'

  use 'ray-x/lsp_signature.nvim'

  -- Project management
  use 'ahmedkhalf/project.nvim'

  -- co-pilot
  use 'github/copilot.vim'

  -- -- Debugging
  -- use 'mfussenegger/nvim-dap'

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

  -- use 'honza/vim-snippets'
  -- -- use 'cstrap/python-snippets'
  -- -- use 'ylcnfrht/vscode-python-snippet-pack'
  -- -- use 'xabikos/vscode-javascript'
  -- -- use 'golang/vscode-go'
  -- -- use 'rust-lang/vscode-rust'
  -- -- use 'SirVer/ultisnips'
  -- -- use 'norcalli/snippets.nvim'


  -- -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/playground'

  -- -- Icons
  use 'kyazdani42/nvim-web-devicons'
  -- use 'ryanoasis/vim-devicons'

  -- -- Status Line and Bufferline
  use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
  use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}

  -- -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'

  -- -- Explorer
  -- use 'kyazdani42/nvim-tree.lua'


  -- -- Color
  -- use 'christianchiarulli/nvcode-color-schemes.vim'
  -- use 'norcalli/nvim-colorizer.lua'
  use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  use 'EdenEast/nightfox.nvim'
  use 'folke/tokyonight.nvim'


  -- -- Terminal
  use 'akinsho/nvim-toggleterm.lua'

  -- -- Git
  -- use 'TimUntersberger/neogit'
  use {'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  -- use 'f-person/git-blame.nvim'
  -- use 'tpope/vim-fugitive'
  -- use 'tpope/vim-rhubarb'
  use 'sindrets/diffview.nvim'

  -- -- General Plugins
  use 'b3nj5m1n/kommentary'
end)
