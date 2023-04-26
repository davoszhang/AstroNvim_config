-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
    -- first key is the mode
    n = {
        -- second key is the lefthand side of the map
        -- mappings seen under group name "Buffer"
        ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
        ["<leader>bD"] = {
            function()
                require("astronvim.utils.status").heirline.buffer_picker(
                    function(bufnr)
                        require("astronvim.utils.buffer").close(bufnr)
                    end
                )
            end,
            desc = "Pick to close"
        },
        -- tables with the `name` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<leader>b"] = { name = "Buffers" },
        -- quick save
        ["<C-s>"] = { ":w!<cr>", desc = "Save File" },
        -- split
        ["\\"] = { "<cmd>vsplit<cr>", desc = "Vertical Split" },
        ["-"] = { "<cmd>split<cr>", desc = "Horizontal Split" },
        ["<leader>b-"] = {
            function()
                require("astronvim.utils.status").heirline.buffer_picker(
                    function(bufnr)
                        vim.cmd.split()
                        vim.api.nvim_win_set_buf(0, bufnr)
                    end
                )
            end,
            desc = "Horizontal split buffer from tabline"
        },
        ["<leader>b\\"] = {
            function()
                require("astronvim.utils.status").heirline.buffer_picker(
                    function(bufnr)
                        vim.cmd.vsplit()
                        vim.api.nvim_win_set_buf(0, bufnr)
                    end
                )
            end,
            desc = "Vertical split buffer from tabline"
        },
        ["<leader>fd"] = {
            "<cmd>Telescope file_browser<cr>", desc = "Telescope file browser"
        }
    },
    t = {}
}
