return {
  {
    "beauwilliams/focus.nvim",
    event = "BufEnter",
    config = function()
      require("focus").setup()
    end
  }
}
