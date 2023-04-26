return {
  {
    -- "kevinhwang91/nvim-hlslens",
    "petertriho/nvim-scrollbar",
    event = "BufEnter",
    config = function()
      -- require('hlslens').setup() is not required
      -- require("scrollbar.handlers.search").setup({
      --   -- hlslens config overrides
      -- })
      -- require("scrollbar.handlers.gitsigns").setup()
      require("scrollbar").setup()
      require("scrollbar.handlers.gitsigns").setup()
    end,
  }
}
