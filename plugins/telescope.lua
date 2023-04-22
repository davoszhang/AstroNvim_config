return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    -- or                              , branch = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = function()
      local actions = require "telescope.actions"
      local get_icon = require("astronvim.utils").get_icon
      return {
        defaults = {
          prompt_prefix = string.format("%s ", get_icon "Search"),
          selection_caret = string.format("%s ", get_icon "Selected"),
          path_display = { "truncate" },
          sorting_strategy = "ascending",
          layout_config = {
            horizontal = {
              prompt_position = "bottom",
              preview_width = 0.55,
            },
            vertical = {
              mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
          },
          mappings = {
            i = {
              ["<C-n>"] = actions.cycle_history_next,
              ["<C-p>"] = actions.cycle_history_prev,
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
            },
            n = { ["q"] = actions.close },
          },
        },
      }
    end
  }
}
