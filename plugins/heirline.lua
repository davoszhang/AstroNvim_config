local status = require("astronvim.utils.status")

-- local file_encoding = {
--     provider = function()
--         return "utf-8"
--     end
-- }

-- local golang_version = {
--     provider = function()
--         return "Go 1.81.1"
--     end,
--     padding = {},
-- }

-- local test = status.component.builder(status.utils.setup_providers({}, {}))

return {
    {
        "rebelot/heirline.nvim",
        opts = function(_, opts)
            -- local status = require("astronvim.utils.status")
            opts.statusline = {
                -- statusline
                hl = { fg = "fg", bg = "bg" },
                status.component.mode {
                    mode_text = { padding = { left = 1, right = 1 } },
                    hl = { bold = true }
                }, -- add the mode text
                status.component.git_branch(),
                status.component.file_info(),
                status.component.git_diff(),
                status.component.diagnostics(),
                status.component.fill(),
                status.component.cmd_info(),
                status.component.fill(),
                status.component.lsp(),
                -- file_encoding,
                status.component.treesitter(),
                status.component.nav()
            }
            return opts
        end,
    }
}
