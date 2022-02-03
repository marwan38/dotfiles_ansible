local opt = vim.opt

local function list(value, str, sep)
  sep = sep or ","
  str = str or ""
  value = type(value) == "table" and table.concat(value, sep) or value
  return str ~= "" and table.concat({ value, str }, sep) or value
end

opt.number = true
opt.relativenumber = true
opt.smartindent = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.expandtab = true
opt.ignorecase = true
opt.smartcase = true
opt.wildignorecase = true
opt.showcmd = true
opt.mouse = "a"
opt.hidden = true
opt.cursorline = true
opt.splitbelow = true
opt.splitright = true
opt.wrap = false
opt.linebreak = true
opt.swapfile = true
-- opt.shortmess = "filnxtToOFIA"
opt.updatetime = 300
opt.termguicolors = true
opt.backspace = list { "indent", "eol", "start" }
opt.inccommand = "split"
-- opt.foldmethod = "expr"
-- opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart = 99
opt.foldlevel = 99 -- 'foldlevelstart' isn't working correctly?
opt.scrolloff = 3
opt.completeopt = list { "noinsert", "menuone", "noselect", "preview" }
opt.virtualedit = list { "block" }
opt.signcolumn = "yes:2"
opt.colorcolumn = list { "100" }
opt.lazyredraw = true
opt.diffopt = list {
  "algorithm:histogram",
  "internal",
  "indent-heuristic",
  "filler",
  "closeoff",
  "iwhite",
  "vertical",
}
opt.list = false
opt.listchars = list {
  -- "tab: ──",
  -- "space:·",
  -- "nbsp:␣",
  -- "trail:•",
  -- "eol:↵",
  -- "precedes:«",
  -- "extends:»",
}
opt.fillchars = list {
  "vert:▏",
  "diff:╱",
  "foldclose:",
  "foldopen:",
}
opt.showbreak = "⤷ "
opt.writebackup = true
opt.undofile = true
opt.isfname:append ":"

local data_backup = vim.fn.stdpath "data" .. "/backup"
local data_undo = vim.fn.stdpath "data" .. "/undo"

opt.backupdir = data_backup
opt.undodir = data_undo

if vim.fn.isdirectory(data_backup) ~= 1 then
  vim.fn.system("mkdir " .. vim.fn.shellescape(data_backup))
end

if vim.fn.isdirectory(data_undo) ~= 1 then
  vim.fn.system("mkdir " .. vim.fn.shellescape(data_undo))
end

if vim.fn.executable "ag" == 1 then
  opt.grepprg = "ag --vimgrep $*"
  opt.grepformat = "%f:%l:%c:%m"
end

-- vim.cmd("syntax on")
-- vim.cmd "filetype plugin indent on"

local init_extra_path = vim.fn.fnamemodify(vim.fn.expand "$MYVIMRC", ":h") .. "/init_extra.vim"
if vim.fn.filereadable(init_extra_path) == 1 then
  vim.cmd("source " .. vim.fn.fnameescape(init_extra_path))
end

vim.g.mapleader = " "

if vim.fn.has "wsl" == 1 then
  vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {

      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = false,
  }
end
