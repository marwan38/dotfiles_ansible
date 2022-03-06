return function()
  require("nvim-autopairs").setup {
    disable_filetype = { "TelescopePrompt" },
    check_ts = true,
    enable_check_bracket_line = false,
  }
end
