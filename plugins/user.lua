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
                delay = 0
            }
        end
    },
    {
        "rebelot/heirline.nvim",
        opts = function(_, opts)
            local status = require("astronvim.utils.status")
            opts.statusline = {
                -- statusline
                hl = { fg = "fg", bg = "bg" },
                status.component.mode { mode_text = { padding = { left = 1, right = 1 } } }, -- add the mode text
                status.component.git_branch(),
                status.component.file_info { filetype = {}, filename = false, file_modified = false },
                status.component.git_diff(),
                status.component.diagnostics(),
                status.component.fill(),
                status.component.cmd_info(),
                status.component.fill(),
                status.component.lsp(),
                status.component.treesitter(),
                status.component.nav()
                -- remove the 2nd mode indicator on the right
            }
            -- return the final configuration table
            return opts
        end
    },
    {
        'romgrk/barbar.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
            -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
            -- animation = true,
            -- insert_at_start = true,
            -- …etc.
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },
    {
        "folke/tokyonight.nvim"
    },
    {
        "catppuccin/nvim",
        as = "catppuccin"
    },
    {
        "olimorris/onedarkpro.nvim"
    },
    {
        "rebelot/kanagawa.nvim"
    },
    {
        "projekt0n/github-nvim-theme", tag = "v0.0.7"
    }

}
