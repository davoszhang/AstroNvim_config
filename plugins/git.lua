return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup {
            current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
            current_line_blame_opts = {
                virt_text = true,
                virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
                delay = 100,
                ignore_whitespace = false
            },
            current_line_blame_formatter = "   <author>, <author_time:%Y-%m-%d> - <summary>"
        }
    end
}
