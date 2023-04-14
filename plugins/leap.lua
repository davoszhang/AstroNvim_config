return {
  {
    "ggandor/leap.nvim",
    event = "BufEnter",
    config = function()
      require("leap").setup({})
      require('leap').add_default_mappings()
    end
  }
}
