return {
    {
        "SmiteshP/nvim-navic",
        dependencies = {
            "neovim/nvim-lspconfig"
        },
        lazy = false,
        config = function()
            require("nvim-navic").setup {
                highlight = true
            }
        end
    }
}
