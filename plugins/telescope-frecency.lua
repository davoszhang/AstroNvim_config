return {
  {
    "nvim-telescope/telescope-frecency.nvim",
    dependencies = {
      "kkharji/sqlite.lua"
    },
    event = { "CmdlineEnter" },
    config = function()
      require "telescope".load_extension("frecency")
      require "telescope".setup {
        extensions = {
          frecency = {
            db_root = "~/.local/share/nvim/",
            show_scores = true,
            show_unindexed = true,
            ignore_patterns = { "*.git/*", "*/tmp/*" },
            disable_devicons = false,
            workspaces = {
              ["conf"]    = "$HOME/.config",
              ["data"]    = "$HOME/.local/share",
              ["project"] = "$HOME/projects",
              ["wiki"]    = "$HOME/wiki"
            }
          }
        },
      }
    end,
  }
}
