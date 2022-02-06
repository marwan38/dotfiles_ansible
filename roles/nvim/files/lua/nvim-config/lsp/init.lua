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

---@diagnostic disable-next-line: unused-local
vim.lsp.util.apply_text_document_edit = function(text_document_edit, index)
  local text_document = text_document_edit.textDocument
  local bufnr = vim.uri_to_bufnr(text_document.uri)

  vim.lsp.util.apply_text_edits(text_document_edit.edits, bufnr)
end

---@diagnostic disable-next-line: unused-local
_G.LspCommonOnAttach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
  require("illuminate").on_attach(client)
  require("lsp_signature").on_attach({
    bind = true, -- This is mandatory, otherwise border config won't get registered.
    handler_opts = {
      border = "single",
    },
  }, bufnr)
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

vim.diagnostic.config {
  virtual_text = false,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
}

local pop_opts = { border = "single", max_width = 80 }
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, pop_opts)
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, pop_opts)

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
