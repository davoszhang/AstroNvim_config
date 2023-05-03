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
              preview_width = 0.50,
              width = 0.50,
              height = 0.50,
            },
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
    config = function()
      require("telescope").load_extension "file_browser"
    end
  }
}
