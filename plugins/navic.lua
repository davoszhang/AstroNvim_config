return {
    {
        "SmiteshP/nvim-navic",
        dependencies = {
            "neovim/nvim-lspconfig"
        },
        event = "BufEnter",
        config = function()
            require("nvim-navic").setup {
                highlight = true
            }
        end
    }
}
