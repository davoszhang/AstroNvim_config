return {
  {
    "kevinhwang91/nvim-hlslens",
    event = "BufEnter",
    config = function()
      require("scrollbar.handlers.search").setup({})
    end,
  }
}
