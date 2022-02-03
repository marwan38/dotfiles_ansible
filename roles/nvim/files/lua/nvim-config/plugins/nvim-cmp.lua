return function()
  local cmp = require "cmp"
  local cmp_autopairs = require "nvim-autopairs.completion.cmp"
  local cmp_buffer = require "cmp_buffer"
  local api = vim.api
  local utils = Config.common.utils

  local lsp_kinds = {
    Method = "  ",
    Function = "  ",
    Variable = "[]",
    Field = "  ",
    TypeParameter = "<>",
    Constant = "  ",
    Class = "  ",
    Interface = " 蘒",
    Struct = "  ",
    Event = "  ",
    Operator = "  ",
    Module = "  ",
    Property = "  ",
    Enum = " 練 ",
    Reference = "  ",
    Keyword = "  ",
    File = "  ",
    Folder = " ﱮ ",
    Color = "  ",
    Unit = " 塞 ",
    Snippet = "  ",
    Text = "  ",
    Constructor = "  ",
    Value = "  ",
    EnumMember = "  ",
  }

  cmp.setup {
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    mapping = {
      ["<C-d>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.close(),
      ["<CR>"] = cmp.mapping.confirm { select = true, behavior = cmp.ConfirmBehavior.Insert },
    },
    formatting = {
      -- fields = { "kind", "abbr", "menu" },
      format = require("lspkind").cmp_format { with_text = true, maxwidth = 300 },
    },
    documentation = {
      border = "single",
    },
    sources = {
      { name = "nvim_lsp" },
      { name = "vsnip" },
      { name = "spell" },
      { name = "path" },
      {
        name = "buffer",
        max_item_count = 20,
        option = {
          get_bufnrs = function()
            local bufs = {}

            for _, bufnr in ipairs(api.nvim_list_bufs()) do
              -- dap-repl errors out
              if api.nvim_buf_get_option(bufnr, "filetype") ~= "dap-repl" then
                bufs[bufnr] = true
              end
            end

            return vim.tbl_keys(bufs)
          end,
        },
      },
    },
    sorting = {
      comparators = {
        function(...)
          return cmp_buffer:compare_locality(...)
        end,
      },
    },
  }

  cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

  -- cmp.setup.cmdline(':', {
  --   completion = {
  --     autocomplete = false,
  --   },
  --   sources = {
  --     { name = 'cmdline' }
  --   }
  -- })
end
