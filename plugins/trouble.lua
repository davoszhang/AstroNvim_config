return {
  {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    event = "BufEnter",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
}
