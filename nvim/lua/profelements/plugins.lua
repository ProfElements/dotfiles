return require("packer").startup(function() 
    use("wbthomason/packer.nvim")

    --colorscheme
    use("folke/tokyonight.nvim")

    --treesitter highlighthing
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}

    --Telescope
    use {"nvim-telescope/telescope.nvim", tag = "0.1.0", requires = { { "nvim-lua/plenary.nvim" } } }
    use {"nvim-telescope/telescope-fzf-native.nvim", run = "make" }
    use {"nvim-telescope/telescope-file-browser.nvim" }
    --LSP
    use("neovim/nvim-lspconfig")
    
    --Rust
    use("rust-lang/rust.vim")

    --Completion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-nvim-lsp")
    use("saadparwaiz1/cmp_luasnip")

    --Snippets
    use("L3MON4D3/LuaSnip")

    --Line thingy
    use {"nvim-lualine/lualine.nvim", requires = {"kyazdani42/nvim-web-devicons", opt = true }}
end)
