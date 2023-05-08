return {
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
        "projekt0n/github-nvim-theme",
        tag = "v0.0.7"
    },
    {
        "EdenEast/nightfox.nvim"
    },
    {
        "nyoom-engineering/oxocarbon.nvim"
    },
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            require('rose-pine').setup({
                --- @usage 'auto'|'main'|'moon'|'dawn'
                variant = 'main',
                --- @usage 'main'|'moon'|'dawn'
                dark_variant = 'main',
                bold_vert_split = false,
                dim_nc_background = false,
                disable_background = false,
                disable_float_background = false,
                disable_italics = true,
                --- @usage string hex value or named color from rosepinetheme.com/palette
                groups = {
                    background = 'base',
                    background_nc = '_experimental_nc',
                    panel = 'surface',
                    panel_nc = 'base',
                    border = 'highlight_med',
                    comment = 'muted',
                    link = 'iris',
                    punctuation = 'subtle',
                    error = 'love',
                    hint = 'iris',
                    info = 'foam',
                    warn = 'gold',
                    headings = {
                        h1 = 'iris',
                        h2 = 'foam',
                        h3 = 'rose',
                        h4 = 'gold',
                        h5 = 'pine',
                        h6 = 'foam',
                    }
                    -- or set all headings at once
                    -- headings = 'subtle'
                },
                -- Change specific vim highlight groups
                -- https://github.com/rose-pine/neovim/wiki/Recipes
                highlight_groups = {
                    ColorColumn = { bg = 'rose' },
                    -- Blend colours against the "base" background
                    CursorLine = { bg = 'foam', blend = 10 },
                    StatusLine = { fg = "love", bg = "love", blend = 10 },
                    StatusLineNC = { fg = "subtle", bg = "surface" },
                }
            })
        end
    },
    {
        "loctvl842/monokai-pro.nvim",
        config = function()
            -- re
            require("monokai-pro").setup({
                transparent_background = false,
                filter = "octagon", -- classic | octagon | pro | machine | ristretto | spectrum
                styles = {
                    comment = { italic = false, bold = true },
                    keyword = { italic = false, bold = true }, -- any other keyword
                    type = { italic = false },                 -- (preferred) int, long, char, etc
                    storageclass = { italic = true },          -- static, register, volatile, etc
                    structure = { italic = true },             -- struct, union, enum, etc
                    parameter = { italic = true },             -- parameter pass in function
                    annotation = { italic = true },
                    tag_attribute = { italic = true },         -- attribute of tag in reactjs
                },
                background_clear = {
                    -- "float_win",
                    -- "toggleterm",
                    "telescope",
                    -- "neo-tree",
                }, -- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree"
                -- transparent_background = true,
                plugins = {
                    nvim_cmp = {
                        context_highlight = "default", -- default | pro
                    },
                },
                override = function(c)
                    return {
                        ColorColumn = { bg = c.base.dimmed3 },
                        -- Mine
                        DashboardRecent = { fg = c.base.magenta },
                        DashboardProject = { fg = c.base.blue },
                        DashboardConfiguration = { fg = c.base.white },
                        DashboardSession = { fg = c.base.green },
                        DashboardLazy = { fg = c.base.cyan },
                        DashboardServer = { fg = c.base.yellow },
                        DashboardQuit = { fg = c.base.red },
                    }
                end
            })
        end
    }
}
