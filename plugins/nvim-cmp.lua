-- fix the string len to 9
local fixLen = function(s)
  local new_s = s .. "      "
  return string.sub(new_s, 0, 9)
end

local border_opts = {
  border = "none",
  winhighlight = "Normal:CmpBackground,FloatBorder:CmpFloatBorder,CursorLine:CmpCursorLine,Search:None",
}

-- return the nvim-cmp config
return {
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local cmp = require "cmp"
      local snip_status_ok, luasnip = pcall(require, "luasnip")
      local lspkind_status_ok, lspkind = pcall(require, "lspkind")
      if not snip_status_ok then return end

      local function has_words_before()
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match "%s" == nil
      end

      -- opts impl
      return {
        enabled = function()
          if vim.api.nvim_get_option_value("buftype", { buf = 0 }) == "prompt" then return false end
          return vim.g.cmp_enabled
        end,
        preselect = cmp.PreselectMode.None,
        formatting = {
          -- fields order
          fields = { "abbr", "kind", "menu" },
          -- set lspkind format
          format = function(entry, vim_item)
            local kind = lspkind.cmp_format({ mode = "symbol_text", maxwidth = 45 })(entry, vim_item)
            local strings = vim.split(kind.kind, "%s", { trimempty = true })
            -- re set the kin
            kind.kind = " " .. (strings[1] or "")
            kind.menu = fixLen(strings[2] or "")
            -- the source of cmp
            local source = ({
              buffer        = "[Buffer]",
              nvim_lsp      = "[LSP]",
              luasnip       = "[LuaSnip]",
              nvim_lua      = "[Lua]",
              latex_symbols = "[LaTeX]",
            })[entry.source.name]
            -- add kind cmp source
            kind.menu = kind.menu .. " " .. source
            return kind
          end
        },
        -- snippet of the cmp
        snippet = {
          expand = function(args) luasnip.lsp_expand(args.body) end,
        },
        duplicates = {
          nvim_lsp = 1,
          luasnip = 1,
          cmp_tabnine = 1,
          buffer = 1,
          path = 1,
        },
        confirm_opts = {
          behavior = cmp.ConfirmBehavior.Replace,
          select = false,
        },
        window = {
          completion = cmp.config.window.bordered(border_opts),
          documentation = cmp.config.window.bordered(border_opts),
        },
        mapping = {
          ["<Up>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select },
          ["<Down>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select },
          ["<C-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
          ["<C-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
          ["<C-k>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
          ["<C-j>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
          ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
          ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
          ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
          ["<C-y>"] = cmp.config.disable,
          ["<C-e>"] = cmp.mapping { i = cmp.mapping.abort(), c = cmp.mapping.close() },
          ["<CR>"] = cmp.mapping.confirm { select = false },
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            elseif has_words_before() then
              cmp.complete()
            else
              fallback()
            end
          end, { "i", "s" }),
          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
        },
        -- cmp source
        sources = cmp.config.sources {
          { name = "nvim_lsp", priority = 1000 },
          { name = "luasnip",  priority = 750 },
          { name = "buffer",   priority = 500 },
          { name = "path",     priority = 250 },
        },
      }
    end
  }
}
