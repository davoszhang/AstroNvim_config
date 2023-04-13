local navic = require("nvim-navic")
return function(client, bufnr)
    navic.attach(client, bufnr)
end
