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

  -- TODO: Change to vim.api.nvim_buf_set_keymap
  vim.cmd [[
    " LSP
    nnoremap <buffer> <silent> gd <Cmd>lua vim.lsp.buf.definition()<CR>
    nnoremap <buffer> <silent> gD <C-W>v<Cmd>lua vim.lsp.buf.declaration()<CR>
    nnoremap <buffer> <silent> gy <Cmd>lua vim.lsp.buf.type_definition()<CR>
    nnoremap <buffer> <silent> gi <Cmd>lua vim.lsp.buf.implementation()<CR>
    nnoremap <buffer> <silent> <C-k> <Cmd>lua vim.lsp.buf.signature_help()<CR>
    nnoremap <buffer> <silent> gr <Cmd>Telescope lsp_references<CR>
    nnoremap <buffer> <silent> <leader>rn <Cmd>lua vim.lsp.buf.rename()<CR>
    nnoremap <buffer> <silent> <F2> <Cmd>lua vim.lsp.buf.rename()<CR>
    nnoremap <buffer> <silent> <leader>f <Cmd>lua vim.lsp.buf.formatting()<CR>
    nnoremap <buffer> <silent> K <Cmd>lua vim.lsp.buf.hover()<CR>
    nnoremap <buffer> <leader>. <Cmd>Telescope lsp_code_actions theme=get_cursor<CR>
    vnoremap <buffer> <leader>. <Cmd>Telescope lsp_range_code_actions theme=get_cursor<CR>
    nnoremap <buffer> <silent> <leader>ld <Cmd>lua vim.diagnostic.open_float()<CR>
    " nnoremap <M-O> <Cmd>lua vim.lsp.buf.organize_imports()<CR>
    nnoremap <buffer> <silent> [d <Cmd>lua vim.diagnostic.goto_prev()<CR>
    nnoremap <buffer> <silent> ]d <Cmd>lua vim.diagnostic.goto_next()<CR>
  ]]
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
