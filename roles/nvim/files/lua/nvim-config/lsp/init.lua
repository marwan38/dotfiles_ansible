USER = vim.fn.expand "$USER"
HOME = vim.fn.expand "$HOME"
PID = vim.fn.getpid()
local cmp_lsp = require "cmp_nvim_lsp"
local utils = Config.common.utils

local M = {}

local diagnostic_signs = {
  error = "",
  warn = "",
  hint = "",
  info = "",
}

local local_settings

function M.get_local_settings()
  if local_settings then
    return local_settings
  end

  if utils.file_readable ".vim/lsp-settings.lua" then
    local code_chunk = loadfile ".vim/lsp-settings.lua"
    if code_chunk then
      local_settings = code_chunk()
    end
  else
    local_settings = {}
  end

  return local_settings
end

local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap("n", "<leader>ld", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
vim.api.nvim_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
vim.api.nvim_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)

---@diagnostic disable-next-line: unused-local
_G.LspCommonOnAttach = function(client, bufnr)
  require("illuminate").on_attach(client)

  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workleader_folder()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workleader_folder()<CR>", opts)
  vim.api.nvim_buf_set_keymap(
    bufnr,
    "n",
    "<leader>wl",
    "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workleader_folders()))<CR>",
    opts
  )
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gy", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>.", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "v", "<leader>.", "<cmd>lua vim.lsp.buf.range_code_action()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
end

_G.LspGetDefaultConfig = function()
  return vim.tbl_deep_extend("force", {
    on_attach = LspCommonOnAttach,
    capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities()),
  }, M.get_local_settings())
end

-- Null-ls
local null_ls = require "null-ls"
null_ls.setup {
  on_attach = LspCommonOnAttach,
  sources = {
    null_ls.builtins.formatting.prettier,
  },
}

-- Typescript
require "nvim-config.lsp.typescript"

-- PHP
require "nvim-config.lsp.php"

-- Lua
require "nvim-config.lsp.lua"

-- Rust
require("rust-tools").setup {
  server = LspGetDefaultConfig(),
}

-- Vim
require("lspconfig").vimls.setup(LspGetDefaultConfig())

-- JSON
require "nvim-config.lsp.json"

-- YAML
require("lspconfig").yamlls.setup(LspGetDefaultConfig())

-- GraphQL
require("lspconfig").graphql.setup(LspGetDefaultConfig())

vim.diagnostic.config {
  virtual_text = false,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
  float = {
    sources = "always",
  },
}

local border = "single"

local pop_opts = { border = border, max_width = 80 }
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, pop_opts)
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, pop_opts)

-- Override global lsp floating preview border
local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = opts.border or border
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

function M.define_diagnostic_signs(opts)
  local group = {
    -- version 0.5
    {
      highlight = "LspDiagnosticsSignError",
      sign = opts.error,
    },
    {
      highlight = "LspDiagnosticsSignWarning",
      sign = opts.warn,
    },
    {
      highlight = "LspDiagnosticsSignHint",
      sign = opts.hint,
    },
    {
      highlight = "LspDiagnosticsSignInformation",
      sign = opts.info,
    },
    -- version >=0.6
    {
      highlight = "DiagnosticSignError",
      sign = opts.error,
    },
    {
      highlight = "DiagnosticSignWarn",
      sign = opts.warn,
    },
    {
      highlight = "DiagnosticSignHint",
      sign = opts.hint,
    },
    {
      highlight = "DiagnosticSignInfo",
      sign = opts.info,
    },
  }

  for _, g in ipairs(group) do
    vim.fn.sign_define(g.highlight, { text = g.sign, texthl = g.highlight, linehl = "", numhl = "" })
  end
end

M.define_diagnostic_signs(diagnostic_signs)

---------------------------------

-- LSP auto commands
vim.api.nvim_exec(
  [[
  augroup init_lsp
    au!
    au ColorScheme * :hi def link LspReferenceText CursorLine
    au ColorScheme * :hi def link LspReferenceRead CursorLine
    au ColorScheme * :hi def link LspReferenceWrite CursorLine
    " au CursorHold   * silent! lua Config.lsp.highlight_cursor_symbol()
    " au CursorHoldI  * silent! lua Config.lsp.highlight_cursor_symbol()
    " au CursorMoved  * silent! lua Config.lsp.highlight_cursor_clear()
    " au CursorMovedI * silent! lua Config.lsp.highlight_cursor_clear()
  augroup END
  ]],
  false
)

_G.Config.lsp = M
return M
