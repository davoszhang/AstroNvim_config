return {
  n = {
    -- lsp keymamp
    ["gd"] = {
      "<cmd>Lspsaga goto_definition<CR>",
      desc = "goto the definitions",
    },
    ["gdd"] = {
      "<CMD>Glance definitions<CR>",
      desc = "peek the definitions",
    },
    ["gr"] = {
      "<CMD>Glance references<CR>",
      desc = "peek the references"
    },
    ["gh"] = {
      "<cmd>Lspsaga lsp_finder<CR>",
      desc = "lspsaga lsp finder"
    },
    ["gy"] = {
      "<CMD>Glance type_definitions<CR>",
      desc = "check the type definitions"
    },
    ["gm"] = {
      "<CMD>Glance implementations<CR>",
      desc = "peek the implementations"
    },
    ["K"] = {
      "<cmd>Lspsaga hover_doc<CR>",
      desc = "lspsaga hover doc",
    },
    ["<leader>o"] = {
      "<cmd>Lspsaga outline<CR>",
      desc = "outline of current buffer"
    },
    ["<leader>ci"] = {
      "<cmd>Lspsaga incoming_calls<CR>",
      desc = "call hierarchy incomming calls",
    },
    ["<leader>co"] = {
      "<cmd>Lspsaga outgoing_calls<CR>",
      desc = "call hierarchy incomming calls",
    },
    ["<leader>ca"] = {
      "<cmd>Lspsaga code_action<CR>",
      desc = "code action"
    }
  },
  v = {},
}
