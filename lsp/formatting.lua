return {
    -- control auto formatting on save
    format_on_save = {
        enabled = true, -- enable or disable format on save globally
        allow_filetypes = {},
        ignore_filetypes = {}
    },
    disabled = {},
    timeout_ms = 500 -- default format timeout
    -- filter = function(client) -- fully override the default formatting function
    --   return true
    -- end
}
