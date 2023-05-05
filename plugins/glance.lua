return {
  {
    "dnlhc/glance.nvim",
    event = "LspAttach",
    config = function()
      require('glance').setup({
        detached = false,
        theme = {
          -- This feature might not work properly in nvim-0.7.2
          enable = false, -- Will generate colors for the plugin based on your current colorscheme
          mode = 'auto',  -- 'brighten'|'darken'|'auto', 'auto' will set mode based on the brightness of your colorscheme
        },
      })
    end,
  }
}
