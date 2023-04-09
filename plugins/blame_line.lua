return {
    {
        "braxtons12/blame_line.nvim",
        event = "BufEnter",
        config = function()
            require("blame_line").setup {
                -- whether the blame line should be shown in visual modes
                show_in_visual = true,
                -- whether the blame line should be shown in insert mode
                show_in_insert = true,
                -- the string to prefix the blame line with
                prefix = " ",
                template = "<author> • <author-time> • <summary>",
                delay = 500
            }
        end
    }
}
