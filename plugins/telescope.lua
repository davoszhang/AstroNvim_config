return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1', -- or , branch = '0.1.1',
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim",   enabled = vim.fn.executable "make" == 1, build = "make" },
      { "nvim-telescope/telescope-file-browser.nvim", enabled = vim.fn.executable "make" == 1, build = "make" },
      { "nvim-lua/plenary.nvim" },
    },
    event = { "CmdlineEnter" },
    opts = function()
      local actions = require "telescope.actions"
      return {
        defaults = {
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
            width = 0.70,
            height = 0.65,
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
    end,
  }
}
