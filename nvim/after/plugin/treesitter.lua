require("nvim-treesitter.configs").setup {
    ensure_installed = "all",
    sycn_install = "false",
    highlight = { enable = true, additional_vim_regex_highlighting = false }
}
