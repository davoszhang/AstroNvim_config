return {
  {
    'ray-x/navigator.lua',
    dependencies = {
      { 'ray-x/guihua.lua',     run = 'cd lua/fzy && make' },
      { 'neovim/nvim-lspconfig' },
    },
    -- event = "LspAttach",
    lazy = false,
    config = function()
      require 'navigator'.setup()
    end
  }
}
