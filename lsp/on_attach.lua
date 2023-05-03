-- local navic = require("nvim-navic")
local lsp_signature = require("lsp_signature")
return function(client, bufnr)
    -- navic.attach(client, bufnr)
    lsp_signature.on_attach(client, bufnr)
end
