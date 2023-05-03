return {
  {
    'mvllow/modes.nvim',
    tag = 'v0.2.0',
    event = "BufEnter",
    config = function()
      require('modes').setup({
        colors = {
          copy = "#f5c359",
          delete = "#c75c6a",
          insert = "#ffafcc",
          visual = "#ffafcc",
        },
      })
    end
  }
}
