NvimConfigDir = vim.fn.stdpath "config"

require "nvim-config.settings"
vim.cmd("source " .. NvimConfigDir .. "/mappings.vim")
require "mappings"
vim.cmd("source " .. NvimConfigDir .. "/autocommands.vim")
require "nvim-config.plugins"

-- Colorscheme tweaks and settings
require "nvim-config.colorscheme"

vim.schedule(function()
  require "nvim-config.lsp"
  -- vim.cmd "do BufRead"
end)
