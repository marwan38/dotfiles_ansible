return function()
  require("indent_blankline").setup {
    show_current_context = true,
    show_current_context_start = false,
    char = "▏",
    -- space_char = ' '
    space_char_blankline = "⠀",
    use_treesitter = true,
    show_trailing_blankline_indent = false,
    buftype_exclude = { "terminal" },
    filetype_exclude = {
      "help",
      "startify",
      "dashboard",
      "packer",
      "man",
      "sagasignature",
      "sagahover",
      "lspsagafinder",
      "LspSagaCodeAction",
      "TelescopePrompt",
      "NvimTree",
      "Trouble",
      "DiffviewFiles",
      "DiffviewFileHistory",
      "Outline",
      "lspinfo",
      "lir",
    },
  }
end
