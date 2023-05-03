vim.keymap.set("n", "<leader>fd", "<dm>Telescope file_browser<CR>", {
  noremap = true,
  desc = "telescope open file browser"
}
)

-- open file_browser with the path of the current buffer
vim.keymap.set("n", "<leader>fd", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>", {
  noremap = true,
  desc = "telescope open file browser in current dir"
}
)

return {

  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    event = { "CmdlineEnter" },
    config = function()
      require("telescope").setup {
        extensions = {
          file_browser = {
            cwd_to_path = true,
            dir_icon = "",
            dir_icon_hl = "Default",
            display_stat = { date = true, size = false, mode = false },
          }
        }
      }
    end
  }
}
