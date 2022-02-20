-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/marwan38/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/marwan38/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/marwan38/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/marwan38/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/marwan38/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n�\3\0\1\a\0\22\00066\1\0\0009\1\1\0019\1\2\1\a\1\3\0X\0010�6\1\4\0'\3\5\0B\1\2\0029\2\6\0009\3\6\0019\3\a\3\5\2\3\0X\2\2�'\2\b\0X\3\1�'\2\t\0+\3\0\0009\4\6\0009\5\6\0019\5\n\5\5\4\5\0X\4\a�6\4\4\0'\6\v\0B\4\2\0029\4\f\4B\4\1\2\18\3\4\0X\4\16�9\4\r\0009\5\r\0019\5\14\5\4\4\5\0X\4\5�9\4\r\0009\5\r\0019\5\15\5\5\4\5\0X\4\6�6\4\4\0'\6\v\0B\4\2\0029\4\16\4B\4\1\2\18\3\4\0006\4\4\0'\6\17\0B\4\2\0029\4\18\0045\6\19\0=\2\20\6=\3\21\6D\4\2\0K\0\1\0\rlocation\bkey\1\0\0\28calculate_commentstring&ts_context_commentstring.internal\30get_visual_start_location\6V\6v\fcmotion\24get_cursor_location#ts_context_commentstring.utils\nblock\16__multiline\14__default\tline\nctype\18Comment.utils\frequire\20typescriptreact\rfiletype\abo\bvimN\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\rpre_hook\1\0\0\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  ["cmp-vsnip"] = {
    after_files = { "/home/marwan38/.local/share/nvim/site/pack/packer/opt/cmp-vsnip/after/plugin/cmp_vsnip.vim" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\2\n�\r\0\0\n\0M\0�\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0004\1\0\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\5\0005\5\6\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0005\6\v\0=\6\f\5=\5\r\0045\5\14\0004\6\0\0=\6\15\0054\6\0\0=\6\16\5=\5\17\0044\5\0\0=\5\18\0045\5\19\0005\6\21\0\18\a\0\0'\t\20\0B\a\2\2=\a\22\6\18\a\0\0'\t\23\0B\a\2\2=\a\24\6\18\a\0\0'\t\25\0B\a\2\2=\a\26\6\18\a\0\0'\t\27\0B\a\2\2=\a\28\6\18\a\0\0'\t\29\0B\a\2\2=\a\30\6\18\a\0\0'\t\31\0B\a\2\2=\a \6\18\a\0\0'\t!\0B\a\2\2=\a\"\6=\6#\0055\6%\0\18\a\0\0'\t$\0B\a\2\2=\a&\6\18\a\0\0'\t$\0B\a\2\2=\a'\6\18\a\0\0'\t(\0B\a\2\2=\a)\6\18\a\0\0'\t(\0B\a\2\2=\a*\6\18\a\0\0'\t+\0B\a\2\2=\a,\6\18\a\0\0'\t-\0B\a\2\2=\a.\6\18\a\0\0'\t-\0B\a\2\2=\a/\6\18\a\0\0'\t0\0B\a\2\2=\a1\6\18\a\0\0'\t0\0B\a\2\2=\a2\6\18\a\0\0'\t3\0B\a\2\2=\a4\6\18\a\0\0'\t5\0B\a\2\2=\a6\6\18\a\0\0'\t7\0B\a\2\2=\a8\6\18\a\0\0'\t\20\0B\a\2\2=\a\22\6\18\a\0\0'\t\23\0B\a\2\2=\a\24\6\18\a\0\0'\t\25\0B\a\2\2=\a\26\6\18\a\0\0'\t\27\0B\a\2\2=\a\28\6\18\a\0\0'\t\29\0B\a\2\2=\a\30\6\18\a\0\0'\t\31\0B\a\2\2=\a \6\18\a\0\0'\t!\0B\a\2\2=\a\"\6=\6\r\0055\6:\0\18\a\0\0'\t9\0B\a\2\2=\a;\6\18\a\0\0'\t<\0B\a\2\2=\a=\6\18\a\0\0'\t>\0B\a\2\2=\a?\6\18\a\0\0'\t@\0B\a\2\2=\aA\6\18\a\0\0'\tB\0B\a\2\2=\aC\6\18\a\0\0'\t$\0B\a\2\2=\a&\6\18\a\0\0'\t$\0B\a\2\2=\a'\6\18\a\0\0'\t(\0B\a\2\2=\a)\6\18\a\0\0'\t(\0B\a\2\2=\a*\6\18\a\0\0'\t+\0B\a\2\2=\a,\6\18\a\0\0'\t-\0B\a\2\2=\a.\6\18\a\0\0'\t-\0B\a\2\2=\a/\6\18\a\0\0'\t\20\0B\a\2\2=\a\22\6\18\a\0\0'\t\23\0B\a\2\2=\a\24\6\18\a\0\0'\t\25\0B\a\2\2=\a\26\6\18\a\0\0'\t\27\0B\a\2\2=\a\28\6\18\a\0\0'\t\29\0B\a\2\2=\a\30\6\18\a\0\0'\t\31\0B\a\2\2=\a \6\18\a\0\0'\t!\0B\a\2\2=\a\"\6=\6D\0055\6F\0\18\a\0\0'\tE\0B\a\2\2=\a\22\6\18\a\0\0'\tG\0B\a\2\2=\aH\6=\6I\5=\5J\4B\2\2\0016\2K\0009\2L\2=\1\3\2K\0\1\0\vConfig\a_G\17key_bindings\17option_panel\6q\nclose\1\0\0\vselect\23file_history_panel\azM\20close_all_folds\azR\19open_all_folds\6y\14copy_hash\f<C-A-d>\21open_in_diffview\ag!\1\0\0\foptions\6R\18refresh_files\6U\16unstage_all\6S\14stage_all\6s\6-\23toggle_stage_entry\18<2-LeftMouse>\6o\17select_entry\t<cr>\16focus_entry\t<up>\6k\15prev_entry\v<down>\6j\1\0\0\15next_entry\tview\14<leader>b\17toggle_files\14<leader>e\16focus_files\f<C-w>gf\18goto_file_tab\15<C-w><C-f>\20goto_file_split\agf\19goto_file_edit\f<s-tab>\22select_prev_entry\n<tab>\1\0\0\22select_next_entry\1\0\1\21disable_defaults\1\nhooks\17default_args\24DiffviewFileHistory\17DiffviewOpen\1\0\0\15file_panel\17tree_options\1\0\2\20folder_statuses\16only_folded\17flatten_dirs\2\1\0\4\nwidth\3#\vheight\3\n\rposition\tleft\18listing_style\ttree\nsigns\1\0\2\14fold_open\b\16fold_closed\b\nicons\1\0\2\18folder_closed\b\16folder_open\b\1\0\3\14use_icons\2\21enhanced_diff_hl\2\18diff_binaries\1\nsetup\rdiffview\22diffview_callback\20diffview.config\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["feline.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\b\0\0156\0\0\0009\0\1\0009\0\2\0'\2\3\0+\3\1\0B\0\3\0016\0\4\0009\0\5\0009\0\6\0B\0\1\0016\0\4\0009\0\5\0009\0\a\0B\0\1\1K\0\1\0\nsetup\vupdate\vfeline\vConfigm    augroup feline_config\n      au!\n      au ColorScheme * lua Config.feline.reload()\n    augroup END\n  \14nvim_exec\bapi\bvim\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/feline.nvim",
    url = "https://github.com/feline-nvim/feline.nvim"
  },
  ["friendly-snippets"] = {
    after = { "nvim-cmp" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n�\15\0\0\5\0$\0*6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0005\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\0025\3\28\0=\3\29\0026\3\30\0009\3\31\3=\3 \2B\0\2\0016\0\30\0009\0!\0009\0\"\0'\2#\0+\3\1\0B\0\3\1K\0\1\0�\1    hi def link GitSignsAdd diffAdded\n    hi def link GitSignsChange diffChanged\n    hi def link GitSignsDelete diffRemoved\n  \14nvim_exec\bapi\19_extmark_signs\23_has_sign_extmarks\bvim\16count_chars\1\21\0\0\b⒈\b⒉\b⒊\b⒋\b⒌\b⒍\b⒎\b⒏\b⒐\b⒑\b⒒\b⒓\b⒔\b⒕\b⒖\b⒗\b⒘\b⒙\b⒚\b⒛\28current_line_blame_opts\1\0\1\ndelay\3\0\19preview_config\1\0\1\vborder\frounded\14diff_opts\1\0\3\21indent_heuristic\2\14algorithm\14histogram\rinternal\2\fkeymaps\tn [c\1\2\1\0@&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0@&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'\texpr\2\1\0\f\17n <leader>hr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>hs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>hu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\vbuffer\2\17v <leader>hsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>hp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\fnoremap\2\17n <leader>hb0<cmd>lua require\"gitsigns\".blame_line()<CR>\to ih2:<C-U>lua require\"gitsigns\".text_object()<CR>\tx ih2:<C-U>lua require\"gitsigns\".text_object()<CR>\17n <leader>hR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17v <leader>hrT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\nsigns\1\0\a\30_refresh_staged_on_update\1\18sign_priority\3\6\14word_diff\2\nnumhl\1\vlinehl\1\23current_line_blame\2\20update_debounce\3�\1\14topdelete\1\0\4\ttext\b‾\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\17changedelete\1\0\4\ttext\b▍\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\vdelete\1\0\4\ttext\b▍\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\vchange\1\0\4\ttext\b▍\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\badd\1\0\0\1\0\4\ttext\b▍\ahl\16GitSignsAdd\vlinehl\18GitSignsAddLn\nnumhl\18GitSignsAddNr\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21filetype_exclude\1\18\0\0\thelp\rstartify\14dashboard\vpacker\bman\18sagasignature\14sagahover\18lspsagafinder\22LspSagaCodeAction\20TelescopePrompt\rNvimTree\fTrouble\18DiffviewFiles\24DiffviewFileHistory\fOutline\flspinfo\blir\20buftype_exclude\1\2\0\0\rterminal\1\0\6\tchar\b▏\31show_current_context_start\1#show_trailing_blankline_indent\1\19use_treesitter\2\25show_current_context\2\25space_char_blankline\b⠀\nsetup\21indent_blankline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lir-git-status.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/lir-git-status.nvim",
    url = "https://github.com/tamago324/lir-git-status.nvim"
  },
  ["lir.nvim"] = {
    config = { "\27LJ\2\n|\0\0\3\0\b\0\0156\0\0\0009\0\1\0009\0\2\0+\2\2\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0\15\0\0\0X\1\4�6\0\3\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0\rwincmd q\bcmd\17lir_is_float\6w\bvim\18remove_buffer\blib\vConfigE\0\0\3\1\4\0\b-\0\0\0009\0\0\0B\0\1\0016\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\5�\fnorm! j\bcmd\bvim\16toggle_markE\0\0\3\1\4\0\b-\0\0\0009\0\0\0B\0\1\0016\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\5�\fnorm! k\bcmd\bvim\16toggle_mark \0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\1\vborder\vsingle�\2\0\1\n\1\15\00166\1\0\0009\1\1\0019\1\2\1\f\3\0\0X\3\1�'\3\3\0'\4\4\0B\1\3\0026\2\0\0009\2\1\0029\2\5\2\18\4\1\0B\2\2\2\t\2\0\0X\2\v�6\2\0\0009\2\1\0029\2\6\0026\4\0\0009\4\a\0049\4\b\4B\4\1\2'\5\4\0B\2\3\2\18\1\2\0X\2\14�6\2\0\0009\2\1\0029\2\t\2\18\4\1\0B\2\2\2\t\2\0\0X\2\a�6\2\0\0009\2\1\0029\2\6\2\18\4\1\0'\5\n\0B\2\3\2\18\1\2\0006\2\0\0009\2\v\2'\4\f\0006\5\0\0009\5\1\0059\5\r\5-\a\0\0009\a\14\a\18\t\1\0B\a\2\0A\5\0\2&\4\5\4B\2\2\1K\0\1\0\1�\25path_remove_trailing\16fnameescape\ae \bcmd\a:h\16isdirectory\bcwd\tloop\16fnamemodify\17filereadable\a:p\6%\vexpand\afn\bvim\0�\1\0\1\t\2\a\0\24+\1\0\0\15\0\0\0X\2\14�-\2\0\0009\2\0\0026\4\1\0009\4\2\0049\4\3\0046\6\1\0009\6\2\0069\6\4\6\18\b\0\0B\6\2\2'\a\5\0B\4\3\0A\2\0\2\18\1\2\0-\2\1\0009\2\6\2\f\4\1\0X\4\1�+\4\0\0B\2\2\1K\0\1\0\1�\3�\tinit\a:p\vexpand\16fnamemodify\afn\bvim\25path_remove_trailing�\2\0\1\a\2\r\00156\1\0\0009\1\1\0019\1\2\1\f\3\0\0X\3\1�'\3\3\0'\4\4\0B\1\3\0026\2\0\0009\2\1\0029\2\5\2\18\4\1\0B\2\2\2\t\2\0\0X\2\v�6\2\0\0009\2\1\0029\2\6\0026\4\0\0009\4\a\0049\4\b\4B\4\1\2'\5\4\0B\2\3\2\18\1\2\0X\2\14�6\2\0\0009\2\1\0029\2\t\2\18\4\1\0B\2\2\2\t\2\0\0X\2\a�6\2\0\0009\2\1\0029\2\6\2\18\4\1\0'\5\n\0B\2\3\2\18\1\2\0-\2\0\0009\2\v\2\15\0\1\0X\4\6�-\4\1\0009\4\f\4\18\6\1\0B\4\2\2\14\0\4\0X\5\1�+\4\0\0B\2\2\1K\0\1\0\3�\1�\25path_remove_trailing\vtoggle\a:h\16isdirectory\bcwd\tloop\16fnamemodify\17filereadable\a:p\6%\vexpand\afn\bvim\0�\t\1\0\f\0P\0q4\0\0\0006\1\0\0009\1\1\0019\1\2\0016\2\0\0009\2\1\0029\2\3\0026\3\4\0'\5\5\0B\3\2\0026\4\4\0'\6\6\0B\4\2\0026\5\4\0'\a\a\0B\5\2\0026\6\4\0'\b\b\0B\6\2\0026\a\4\0'\t\t\0B\a\2\0029\a\n\a5\t\v\0005\n\r\0009\v\f\4=\v\14\n9\v\f\4=\v\15\n9\v\f\4=\v\16\n9\v\17\4=\v\18\n9\v\19\4=\v\20\n9\v\21\4=\v\22\n9\v\23\4=\v\24\n9\v\23\4=\v\25\n3\v\26\0=\v\27\n9\v\28\4=\v\29\n9\v\30\4=\v\31\n9\v \4=\v!\n9\v\"\4=\v#\n9\v$\4=\v%\n9\v&\4=\v'\n9\v(\4=\v)\n9\v*\4=\v+\n9\v,\5=\v-\n3\v.\0=\v/\n3\v0\0=\v1\n9\v\"\6=\v2\n9\v3\6=\v4\n9\v5\6=\v6\n=\n7\t5\n8\0003\v9\0=\v:\n=\n;\tB\a\2\0016\a\4\0'\t<\0B\a\2\0029\a\n\a5\t=\0B\a\2\0013\a?\0=\a>\0003\aA\0=\a@\0003\aC\0=\aB\0009\aD\2'\tE\0'\nF\0005\vG\0B\a\4\0019\aD\2'\tH\0'\nI\0005\vJ\0B\a\4\0019\aD\2'\tK\0'\nH\0B\a\3\0016\aL\0009\aM\a9\aN\a'\tO\0+\n\1\0B\a\3\0016\a\0\0=\0\t\a2\0\0�K\0\1\0�\1    command! -bar -nargs=? -complete=dir LirExplore call v:lua.Config.lir.explore(<f-args>)\n    command! -bar -nargs=? -complete=dir LirFloat call v:lua.Config.lir.open_float(<f-args>)\n  \14nvim_exec\bapi\bvim\25DevIconLirFolderNode\1\0\1\fdefault\2\14Directory\18LirFolderIcon\1\0\1\nforce\2\16NormalFloat\19LirFloatNormal\fhi_link\0\17toggle_float\0\15open_float\0\fexplore\1\0\1\17show_ignored\2\19lir.git_status\nfloat\rwin_opts\0\1\0\1\rwinblend\3\0\rmappings\6p\npaste\6x\bcut\6y\6K\0\6J\0\6t\16toggle_mark\6d\vdelete\n<C-h>\23toggle_show_hidden\agy\14yank_path\n<C-]>\acd\6c\tcopy\6r\vrename\6a\fnewfile\6m\nmkdir\6q\0\6h\6-\aup\n<C-t>\ftabedit\n<C-v>\vvsplit\n<C-s>\nsplit\6l\6o\t<CR>\1\0\0\tedit\1\0\3\16hide_cursor\2\20devicons_enable\2\22show_hidden_files\2\nsetup\blir\26lir.clipboard.actions\21lir.mark.actions\16lir.actions\14lir.float\frequire\ahl\nutils\vcommon\vConfig\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/lir.nvim",
    url = "https://github.com/tamago324/lir.nvim"
  },
  ["lsp-trouble.nvim"] = {
    config = { "\27LJ\2\nC\0\0\4\1\3\0\5-\0\0\0009\0\0\0'\2\1\0'\3\2\0D\0\3\0\1�\fTrouble\rfiletype\25find_buf_with_option+\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\fTrouble\bcmd\bvim;\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\28wincmd p | TroubleClose\bcmd\bvim�\5\1\0\b\0\22\0\0316\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0016\2\0\0'\4\5\0B\2\2\0029\2\6\0025\4\a\0005\5\b\0=\5\t\0045\5\n\0=\5\v\4B\2\2\0019\2\f\0003\4\r\0003\5\14\0003\6\15\0005\a\16\0B\2\5\0027\2\17\0006\2\18\0009\2\19\0029\2\20\2'\4\21\0+\5\1\0B\2\3\0012\0\0�K\0\1\0g    augroup LspTroubleConfig\n      au!\n      au FileType Trouble setlocal cc=\n    augroup END\n    \14nvim_exec\bapi\bvim\27LspTroubleCustomToggle\1\0\2\nfocus\2\20remember_height\2\0\0\0\23create_buf_toggler\nsigns\1\0\4\thint\b\fwarning\b\16information\b\nerror\b\16action_keys\1\0\v\rprevious\6k\16close_folds\azM\vcancel\n<esc>\19toggle_preview\6P\16toggle_mode\6m\tjump\t<cr>\frefresh\6R\fpreview\6p\tnext\6j\nclose\6q\15open_folds\azR\1\0\n\14fold_open\b\17auto_preview\1\29use_lsp_diagnostic_signs\1\vheight\3\n\tmode\26workspace_diagnostics\16fold_closed\b\15auto_close\1\14auto_open\1\17indent_lines\2\nicons\2\nsetup\ftrouble\nutils\vcommon\vConfig\20nvim-config.lib\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/lsp-trouble.nvim",
    url = "https://github.com/folke/lsp-trouble.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\4\15max_height\3\f\14max_width\3P\16hint_prefix\t● \16hint_enable\1\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  neorg = {
    config = { "\27LJ\2\n�\3\0\0\a\0\23\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\21\0005\3\3\0004\4\0\0=\4\4\0035\4\b\0005\5\6\0005\6\5\0=\6\a\5=\5\t\4=\4\n\0035\4\f\0005\5\v\0=\5\t\4=\4\r\0035\4\15\0005\5\14\0=\5\t\4=\4\16\0034\4\0\0=\4\17\0034\4\0\0=\4\18\0034\4\0\0=\4\19\0034\4\0\0=\4\20\3=\3\22\2B\0\2\1K\0\1\0\tload\1\0\0\19core.presenter\22core.norg.qol.toc\24core.norg.concealer\22core.norg.journal\25core.norg.completion\1\0\0\1\0\1\vengine\rnvim-cmp\18core.gtd.base\1\0\0\1\0\1\14workspace\twork\21core.norg.dirman\vconfig\1\0\0\15workspaces\1\0\1\14autochdir\2\1\0\2\thome\17~/notes/home\twork\17~/notes/work\18core.defaults\1\0\0\nsetup\nneorg\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n�\5\0\0\5\0\27\00166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1)\0�\0005\1\b\0005\2\6\0005\3\a\0>\0\3\3>\3\2\2=\2\t\0015\2\n\0005\3\v\0>\0\3\3>\3\2\2=\2\f\0015\2\r\0005\3\14\0\24\4\0\0>\4\3\3>\3\2\2=\2\15\0015\2\16\0005\3\17\0\24\4\0\0>\4\3\3>\3\2\2=\2\18\0015\2\19\0004\3\3\0>\0\1\3>\3\2\2=\2\20\0015\2\21\0004\3\3\0>\0\1\3>\3\2\2=\2\22\0015\2\23\0004\3\3\0>\0\1\3>\3\2\2=\2\24\0016\2\0\0'\4\25\0B\2\2\0029\2\26\2\18\4\1\0B\2\2\1K\0\1\0\17set_mappings\21neoscroll.config\azb\1\2\0\0\azb\azz\1\2\0\0\azz\azt\1\2\0\0\azt\n<C-f>\1\3\0\0#vim.api.nvim_win_get_height(0)\ttrue\1\2\0\0\vscroll\n<C-b>\1\3\0\0$-vim.api.nvim_win_get_height(0)\ttrue\1\2\0\0\vscroll\n<C-d>\1\3\0\0 math.max(vim.wo.scroll, 16)\ttrue\1\2\0\0\vscroll\n<C-u>\1\0\0\1\3\0\0!-math.max(vim.wo.scroll, 16)\ttrue\1\2\0\0\vscroll\rmappings\1\0\5\22respect_scrolloff\1\rstop_eof\2\16hide_cursor\2\20easing_function\14quadratic\25cursor_scrolls_alone\2\1\b\0\0\n<C-u>\n<C-d>\n<C-b>\n<C-f>\azt\azz\azb\nsetup\14neoscroll\frequire\4\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    after = { "nvim-cmp" },
    loaded = true,
    only_config = true
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\nk\0\3\15\1\5\0\17'\3\0\0006\4\1\0\18\6\2\0B\4\2\4H\a\t�6\t\2\0009\t\3\t'\v\4\0\18\f\3\0-\r\0\0008\r\a\r\18\14\b\0B\t\5\2\18\3\t\0F\a\3\3R\a�L\3\2\0\0�\r%s %s %d\vformat\vstring\npairs\5�\6\1\0\a\0\18\0\0275\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\f\0005\4\4\0003\5\5\0=\5\6\0045\5\a\0=\5\b\0044\5\3\0005\6\t\0>\6\1\0055\6\n\0>\6\2\5=\5\v\4=\4\r\3B\1\2\0016\1\14\0009\1\15\0019\1\16\1'\3\17\0+\4\1\0B\1\3\0012\0\0�K\0\1\0\\    hi! BufferLineDiagnostic gui=bold\n    hi! BufferLineDiagnosticVisible gui=bold\n    \14nvim_exec\bapi\bvim\foptions\1\0\0\foffsets\1\0\3\ttext\19Source Control\rfiletype\18DiffviewFiles\15text_align\vcenter\1\0\3\ttext\nFiles\rfiletype\rNvimTree\15text_align\vcenter\20separator_style\1\3\0\0\b▏\b▕\26diagnostics_indicator\0\1\0\16\24persist_buffer_sort\2\20show_close_icon\1\28show_buffer_close_icons\2\16diagnostics\rnvim_lsp\rtab_size\3\18\22max_prefix_length\3\15\20max_name_length\3\18\23right_trunc_marker\b\22left_trunc_marker\b\15close_icon\b\18modified_icon\b●\22buffer_close_icon\b\fnumbers\tnone\tview\fdefault\27always_show_bufferline\2\25enforce_regular_tabs\1\nsetup\15bufferline\frequire\1\0\4\tinfo\b\fwarning\b\thint\b\nerror\b\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    after = { "cmp-vsnip" },
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim�\1\0\0\n\1\a\0\0224\0\0\0006\1\0\0-\3\0\0009\3\1\3B\3\1\0A\1\0\4X\4\t�-\6\0\0009\6\2\6\18\b\5\0'\t\3\0B\6\3\2\6\6\4\0X\6\2�+\6\2\0<\6\5\0E\4\3\3R\4�6\1\5\0009\1\6\1\18\3\0\0D\1\2\0\3�\rtbl_keys\bvim\rdap-repl\rfiletype\24nvim_buf_get_option\19nvim_list_bufs\vipairs.\2\0\4\1\1\0\5-\0\0\0\18\2\0\0009\0\0\0G\3\0\0C\0\1\0\2�\21compare_locality�\t\1\0\14\0009\0\\6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\4\0009\3\5\0036\4\6\0009\4\a\0049\4\b\0045\5\t\0009\6\n\0005\b\14\0005\t\f\0003\n\v\0=\n\r\t=\t\15\b5\t\18\0009\n\16\0009\n\17\n)\f��B\n\2\2=\n\19\t9\n\16\0009\n\17\n)\f\4\0B\n\2\2=\n\20\t9\n\16\0009\n\21\nB\n\1\2=\n\22\t9\n\16\0009\n\23\nB\n\1\2=\n\24\t9\n\16\0009\n\25\n5\f\26\0009\r\27\0009\r\28\r=\r\29\fB\n\2\2=\n\30\t=\t\16\b5\t\"\0006\n\0\0'\f\31\0B\n\2\0029\n \n5\f!\0B\n\2\2=\n#\t=\t$\b5\t%\0=\t&\b4\t\6\0005\n'\0>\n\1\t5\n(\0>\n\2\t5\n)\0>\n\3\t5\n*\0>\n\4\t5\n+\0005\v-\0003\f,\0=\f.\v=\v/\n>\n\5\t=\t0\b5\t2\0004\n\3\0003\v1\0>\v\1\n=\n3\t=\t4\bB\6\2\0019\0065\0\18\b\6\0009\0066\6'\t7\0009\n8\1B\n\1\0A\6\2\0012\0\0�K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\fsorting\16comparators\1\0\0\0\fsources\voption\15get_bufnrs\1\0\0\0\1\0\2\19max_item_count\3\20\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\nspell\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\18documentation\1\0\1\vborder\vsingle\15formatting\vformat\1\0\0\1\0\2\rmaxwidth\3�\2\tmode\16symbol_text\15cmp_format\flspkind\t<CR>\rbehavior\vInsert\20ConfirmBehavior\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\nEvent\n  \nColor\n  \vStruct\n  \15EnumMember\n  \14Interface\t 蘒\nValue\n  \nClass\n  \16Constructor\n  \rConstant\n  \tText\n  \18TypeParameter\n<>\fSnippet\n  \nField\n  \tUnit\n 塞 \rVariable\n[]\rFunction\n  \vFolder\n ﱮ \vMethod\n  \tFile\n  \fKeyword\n  \14Reference\n  \tEnum\n 練 \rProperty\n  \vModule\n  \rOperator\n  \nutils\vcommon\vConfig\bapi\bvim\15cmp_buffer\"nvim-autopairs.completion.cmp\bcmp\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n�\2\0\0\4\0\v\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0B\0\3\1K\0\1\0\1\0\t\vRRGGBB\2\bRGB\2\bcss\1\vcss_fn\1\vhsl_fn\1\vrgb_fn\1\nnames\1\tmode\15background\rRRGGBBAA\2\tsass\1\0\5\vcss_fn\2\vhsl_fn\2\vrgb_fn\2\nnames\2\bcss\2\tscss\1\0\5\vcss_fn\2\vhsl_fn\2\vrgb_fn\2\nnames\2\bcss\2\bcss\1\0\5\vcss_fn\2\vhsl_fn\2\vrgb_fn\2\nnames\2\bcss\2\1\3\0\0\6*\t!git\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\n�\14\0\0\b\0@\0l6\0\0\0009\0\1\0009\0\2\0009\0\3\0006\1\4\0009\1\5\0019\1\6\1'\3\a\0005\4\b\0B\1\3\0016\1\t\0'\3\n\0B\1\2\0029\2\v\0015\3\r\0004\4\3\0\18\5\0\0'\6\14\0&\5\6\5>\5\1\4=\4\15\3=\3\f\0029\2\16\0014\3\3\0005\4\17\0005\5\18\0=\5\19\0045\5\20\0=\5\21\4>\4\1\0035\4\22\0>\4\2\3=\3\f\0026\2\t\0'\4\23\0B\2\2\0029\2\24\0025\4\26\0005\5\25\0=\5\27\0045\5\29\0005\6\28\0=\6\30\5=\5\31\0045\5$\0004\6\5\0005\a \0>\a\1\0065\a!\0>\a\2\0065\a\"\0>\a\3\0065\a#\0>\a\4\6=\6%\5=\5&\0045\5(\0005\6'\0=\6%\5=\5)\0045\5*\0005\6,\0005\a+\0=\a-\6=\6\31\5=\5.\0045\5/\0=\0050\4B\2\2\0019\2\v\0015\0032\0004\4\3\0006\0053\0009\0054\5'\a\3\0B\5\2\2'\0065\0&\5\6\5>\5\1\4=\4\15\3=\0031\0029\2\16\0014\3\4\0005\0047\0006\5\4\0009\5\5\0059\0058\5B\5\1\2=\0059\4>\4\1\0035\4:\0006\5\t\0'\a;\0B\5\2\0029\5<\5=\5=\4>\4\2\0035\4>\0006\5\4\0009\5\5\0059\0058\5B\5\1\2=\0059\0045\5?\0=\5\15\4>\4\3\3=\0036\2K\0\1\0\1\6\0\0\20${fileBasename}\14--verbose\a-i\15--no-cache\15--watchAll\1\0\a\fprogram2${workspaceFolder}/node_modules/jest/bin/jest\frequest\vlaunch\tname\28Jest watch current file\fconsole\23integratedTerminal\rprotocol\14inspector\27internalConsoleOptions\14neverOpen\ttype\nnode2\14processId\17pick_process\14dap.utils\1\0\3\tname\22Attach to process\frequest\vattach\ttype\nnode2\bcwd\vgetcwd\1\0\a\fprogram\f${file}\ttype\nnode2\fconsole\23integratedTerminal\15sourceMaps\2\rprotocol\14inspector\frequest\vlaunch\tname\vLaunch\20typescriptreact1/git/vscode-node-debug2/out/src/nodeDebug.js\vgetenv\aos\1\0\2\fcommand\tnode\ttype\15executable\nnode2\fwindows\1\0\1\vindent\3\1\rfloating\nclose\1\0\0\1\3\0\0\6q\n<Esc>\1\0\0\ttray\1\0\2\rposition\vbottom\tsize\3\n\1\2\0\0\trepl\fsidebar\relements\1\0\2\rposition\tleft\tsize\3(\1\0\2\tsize\4\0����\3\aid\fwatches\1\0\2\tsize\4\0����\3\aid\vstacks\1\0\2\tsize\4\0����\3\aid\16breakpoints\1\0\2\tsize\4\0����\3\aid\vscopes\rmappings\vexpand\1\0\4\tedit\6e\trepl\6r\vremove\6d\topen\6o\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\rexpanded\b▾\14collapsed\b▸\nsetup\ndapui\1\0\5\bcwd\21${workspaceRoot}\ttype\bphp\tport\3�F\frequest\vlaunch\tname!Launch currently open script\vignore\1\3\0\0#**/silverstripe-cache/**/*.php\23**/vendor/**/*.php\17pathMappings\1\0\1\30/srv/archipro/www/marwan/\24${workspaceFolder}/\1\0\6\tport\3�F\rhostname\f0.0.0.0\16stopOnEntry\1\ttype\bphp\frequest\vlaunch\tname\22Listen for XDebug\19configurations\targs//programs/vscode-php-debug/out/phpDebug.js\1\0\2\fcommand\tnode\ttype\15executable\bphp\radapters\bdap\frequire\1\0\4\ttext\b\vlinehl\5\vtexthl\28LspDiagnosticsSignError\nnumhl\5\18DapBreakpoint\16sign_define\afn\bvim\tHOME\nutils\vcommon\vConfig\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lsp-ts-utils"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-lsp-ts-utils",
    url = "https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-pqf.git"] = {
    config = { "\27LJ\2\nq\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nsigns\1\0\0\1\0\4\tinfo\b\fwarning\b\thint\b\nerror\b\nsetup\bpqf\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-pqf.git",
    url = "https://gitlab.com/yorickpeterse/nvim-pqf"
  },
  ["nvim-spectre"] = {
    config = { "\27LJ\2\n�\18\0\0\a\0<\0G6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\3=\3\25\0025\3#\0005\4\26\0005\5\27\0=\5\28\0045\5\30\0005\6\29\0=\6\31\0055\6 \0=\6!\5=\5\"\4=\4$\0035\4%\0005\5&\0=\5\28\0045\5(\0005\6'\0=\6\31\0055\6)\0=\6!\5=\5\"\4=\4*\3=\3+\0025\3-\0005\4,\0=\4.\0035\0040\0005\5/\0=\5\31\4=\4\"\3=\0031\0025\0034\0005\0042\0005\0053\0=\5\"\4=\0045\0035\0046\0=\0047\3=\0038\2B\0\2\0016\0009\0009\0:\0'\2;\0B\0\2\1K\0\1\0i    augroup SpectreConfig\n    au!\n    au FileType spectre_panel setlocal nolist\n    augroup END\n    \bcmd\bvim\fdefault\freplace\1\0\1\bcmd\bsed\tfind\1\0\0\1\2\0\0\16ignore-case\1\0\1\bcmd\aag\19replace_engine\1\0\0\1\0\3\ticon\b[I]\nvalue\18--ignore-case\tdesc\16ignore case\bsed\1\0\0\1\0\1\bcmd\bsed\16find_engine\aag\1\0\3\ticon\b[H]\nvalue\r--hidden\tdesc\16hidden file\1\0\0\1\0\3\ticon\b[I]\nvalue\a-i\tdesc\16ignore case\1\3\0\0\14--vimgrep\a-s\1\0\1\bcmd\aag\arg\1\0\0\foptions\vhidden\1\0\3\ticon\b[H]\nvalue\r--hidden\tdesc\16hidden file\16ignore-case\1\0\0\1\0\3\ticon\b[I]\nvalue\18--ignore-case\tdesc\16ignore case\targs\1\6\0\0\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\1\0\1\bcmd\arg\fmapping\25toggle_ignore_hidden\1\0\3\bcmd=<cmd>lua require('spectre').change_options('hidden')<CR>\bmap\ath\tdesc\25toggle search hidden\23toggle_ignore_case\1\0\3\bcmdB<cmd>lua require('spectre').change_options('ignore-case')<CR>\bmap\ati\tdesc\23toggle ignore case\21change_view_mode\1\0\3\bcmd2<cmd>lua require('spectre').change_view()<CR>\bmap\14<leader>v\tdesc\28change result view mode\16run_replace\1\0\3\bcmd:<cmd>lua require('spectre.actions').run_replace()<CR>\bmap\14<leader>R\tdesc\16replace all\21show_option_menu\1\0\3\bcmd3<cmd>lua require('spectre').show_options()<CR>\bmap\14<leader>o\tdesc\16show option\16replace_cmd\1\0\3\bcmd:<cmd>lua require('spectre.actions').replace_cmd()<CR>\bmap\14<leader>c\tdesc\30input replace vim command\15send_to_qf\1\0\3\bcmd9<cmd>lua require('spectre.actions').send_to_qf()<CR>\bmap\n<c-q>\tdesc\30send all item to quickfix\15enter_file\1\0\3\bcmd;<cmd>lua require('spectre.actions').select_entry()<CR>\bmap\t<cr>\tdesc\22goto current file\16delete_line\1\0\0\1\0\3\bcmd-<cmd>lua require('spectre').delete()<CR>\bmap\add\tdesc\24toggle current item\14highlight\1\0\3\freplace\rDiffText\aui\vString\vsearch\20DiffAddAsDelete\1\0\a\19is_insert_mode\1\23is_open_target_win\2\20replace_vim_cmd\tcfdo\rline_sep�\1└─────────────────────────────────────────\19color_devicons\2\19result_padding\n│  \19line_sep_start�\1┌─────────────────────────────────────────\nsetup\fspectre\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre"
  },
  ["nvim-treesitter"] = {
    after = { "neorg" },
    loaded = true,
    only_config = true
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\frainbow\1\0\0\vcolors\1\b\0\0\f#bf616a\f#d08770\f#ebcb8b\f#a3be8c\f#88c0d0\f#5e81ac\f#b48ead\1\0\3\19max_file_lines\3�\v\18extended_mode\2\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    after = { "lsp-trouble.nvim", "nvim-bufferline.lua", "nvim-spectre", "diffview.nvim", "telescope.nvim", "lir.nvim" },
    loaded = true,
    only_config = true
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["startuptime.vim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/startuptime.vim",
    url = "https://github.com/tweekmonster/startuptime.vim"
  },
  ["suda.vim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/suda.vim",
    url = "https://github.com/lambdalisue/suda.vim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  tabular = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/tabular",
    url = "https://github.com/godlygeek/tabular"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nn\0\2\a\4\2\1\16\14\0\1\0X\2\1�K\0\1\0009\2\0\1*\3\0\0\1\3\2\0X\2\2�K\0\1\0X\2\6�-\2\0\0009\2\1\2-\4\1\0-\5\2\0-\6\3\0B\2\4\1K\0\1\0\0\0\0�\1�\2�\27buffer_previewer_maker\tsize��\fi\1\3\a\1\6\0\17\14\0\2\0X\3\1�4\2\0\0006\3\0\0009\3\1\0039\3\2\3\18\5\0\0B\3\2\2\18\0\3\0006\3\0\0009\3\3\0039\3\4\3\18\5\0\0003\6\5\0B\3\3\0012\0\0�K\0\1\0\2�\0\ffs_stat\tloop\vexpand\afn\bvimN\0\0\6\1\4\0\t6\0\0\0009\0\1\0'\2\2\0\18\4\2\0009\2\3\2-\5\0\0B\2\3\0A\0\0\1K\0\1\0\1�\vformat\22DiffviewOpen %s^!\bcmd\bvim�\1\1\0\6\1\t\0\20-\0\0\0009\0\0\0B\0\1\0029\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0+\5\2\0B\2\3\0016\2\2\0009\2\5\2'\4\6\0B\2\2\0016\2\2\0009\2\a\0023\4\b\0B\2\2\0012\0\0�K\0\1\0\1�\0\rschedule\15stopinsert\bcmd\19nvim_win_close\bapi\bvim\nvalue\23get_selected_entry�\f\1\0\r\0A\0p6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0023\3\4\0006\4\0\0'\6\5\0B\4\2\0029\4\6\0045\6*\0005\a\b\0005\b\a\0=\b\t\a5\b\n\0005\t\v\0=\t\f\b5\t\r\0=\t\14\b=\b\15\a5\b\16\0=\b\17\a6\b\0\0'\n\18\0B\b\2\0029\b\19\b=\b\20\a4\b\0\0=\b\21\a6\b\0\0'\n\18\0B\b\2\0029\b\22\b=\b\23\a4\b\0\0=\b\24\a5\b\25\0=\b\26\a5\b\27\0=\b\28\a5\b%\0005\t\31\0009\n\29\0009\v\30\0 \n\v\n=\n \t6\n\0\0'\f\1\0B\n\2\0029\n!\n=\n\"\t6\n\0\0'\f\1\0B\n\2\0029\n#\n=\n$\t=\t&\b5\t'\0006\n\0\0'\f\1\0B\n\2\0029\n!\n=\n\"\t6\n\0\0'\f\1\0B\n\2\0029\n#\n=\n$\t=\t(\b=\b)\a=\a+\0065\a-\0005\b,\0=\b.\a5\b/\0=\b0\a5\b5\0005\t4\0005\n2\0003\v1\0=\v3\n=\n&\t=\t)\b=\b6\a=\a7\0065\a9\0005\b8\0=\b:\a5\b<\0005\t;\0=\t=\b=\b>\a=\a?\6B\4\2\0016\4\0\0'\6\5\0B\4\2\0029\4@\4'\6:\0B\4\2\0016\4\0\0'\6\5\0B\4\2\0029\4@\4'\6>\0B\4\2\0012\0\0�K\0\1\0\19load_extension\15extensions\16media_files\14filetypes\1\0\1\rfind_cmd\afd\1\b\0\0\bpng\twebp\bjpg\tjpeg\bmp4\twebm\bpdf\bfzf\1\0\0\1\0\4\25override_file_sorter\2\28override_generic_sorter\1\nfuzzy\2\14case_mode\15smart_case\fpickers\16git_commits\1\0\0\1\0\0\f<C-M-d>\1\0\0\0\14git_files\1\0\1\18results_title\1\15find_files\1\0\0\1\0\1\18results_title\1\rdefaults\1\0\0\rmappings\6n\1\0\0\6i\1\0\0\n<c-p>\23cycle_history_prev\n<c-n>\23cycle_history_next\n<c-q>\1\0\0\16open_qflist\19send_to_qflist\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b─\b│\b─\b│\b┌\b┐\b┘\b└\vborder\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\16file_sorter\19get_fuzzy_file\22telescope.sorters\17path_display\1\2\0\0\rabsolute\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\1\vmirror\1\1\0\3\19preview_cutoff\3x\nwidth\4\0����\3\20prompt_position\btop\22vimgrep_arguments\1\0\v\23selection_strategy\nreset\18results_title\1\17initial_mode\vinsert\17entry_prefix\a  \rwinblend\3\0\20selection_caret\t➤ \18prompt_prefix\n  \19color_devicons\2\ruse_less\2\20layout_strategy\15horizontal\21sorting_strategy\14ascending\1\b\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\nsetup\14telescope\0\25telescope.previewers\28telescope.actions.state\22telescope.actions\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-abolish",
    url = "https://github.com/tpope/vim-abolish"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-illuminate"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-log-highlighting"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/vim-log-highlighting",
    url = "https://github.com/MTDL9/vim-log-highlighting"
  },
  ["vim-markdown"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/vim-markdown",
    url = "https://github.com/plasticboy/vim-markdown"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-test"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/vim-test",
    url = "https://github.com/vim-test/vim-test"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    after_files = { "/home/marwan38/.local/share/nvim/site/pack/packer/opt/vim-vsnip-integ/after/plugin/vsnip_integ.vim" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  },
  vimux = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vimux",
    url = "https://github.com/preservim/vimux"
  },
  vimwiki = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vimwiki",
    url = "https://github.com/vimwiki/vimwiki"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["winshift.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\23moving_win_options\1\0\4\twrap\1\17cursorcolumn\1\15cursorline\1\16colorcolumn\5\1\0\2\21focused_hl_group\21LspReferenceRead\25highlight_moving_win\2\nsetup\rwinshift\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/winshift.nvim",
    url = "https://github.com/sindrets/winshift.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: vim-test
time([[Setup for vim-test]], true)
try_loadstring("\27LJ\2\n�\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0}            let test#strategy = \"floaterm\"\n            let test#php#phpunit#executable = './vendor/bin/phpunit'\n        \bcmd\bvim\0", "setup", "vim-test")
time([[Setup for vim-test]], false)
time([[packadd for vim-test]], true)
vim.cmd [[packadd vim-test]]
time([[packadd for vim-test]], false)
-- Setup for: dashboard-nvim
time([[Setup for dashboard-nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\1\14\0\f\0+4\1\0\0)\2��6\3\0\0\18\5\0\0B\3\2\4X\6\r�6\b\2\0009\b\3\b9\b\4\b9\n\5\a:\n\1\nB\b\2\2=\b\1\a6\b\6\0009\b\a\b\18\n\2\0009\v\1\aB\b\3\2\18\2\b\0E\6\3\3R\6�6\3\0\0\18\5\0\0B\3\2\4X\6\15�9\b\5\a9\t\5\a:\t\1\t6\n\b\0009\n\t\n'\f\n\0009\r\1\a!\r\r\2B\n\3\2&\t\n\t>\t\1\b'\b\v\0\18\t\6\0&\b\t\b<\a\b\1E\6\3\3R\6�L\1\2\0\6k\6 \brep\vstring\bmax\tmath\16description\18nvim_strwidth\bapi\bvim\16display_len\vipairs�\15\1\0\b\0 \0R3\0\0\0006\1\1\0009\1\2\1'\2\4\0=\2\3\0016\1\1\0009\1\5\0019\1\6\1)\3\0\0B\1\2\2)\2\30\0\1\1\2\0X\2\5�6\2\1\0009\2\2\0024\3\0\0=\3\a\2X\2\4�6\2\1\0009\2\2\0025\3\b\0=\3\a\0026\2\1\0009\2\t\0026\4\1\0009\4\5\0049\4\n\4'\6\v\0+\a\2\0B\4\3\2'\5\f\0B\2\3\0026\3\1\0009\3\2\0034\4\3\0'\5\14\0:\6\2\2&\5\6\5>\5\1\4=\4\r\0034\3\b\0005\4\16\0005\5\15\0=\5\17\4>\4\1\0035\4\19\0005\5\18\0=\5\17\4>\4\2\0035\4\21\0005\5\20\0=\5\17\4>\4\3\0035\4\23\0005\5\22\0=\5\17\4>\4\4\0035\4\25\0005\5\24\0=\5\17\4>\4\5\0035\4\27\0005\5\26\0=\5\17\4>\4\6\0035\4\29\0005\5\28\0=\5\17\4>\4\a\0036\4\1\0009\4\2\4\18\5\0\0\18\a\3\0B\5\2\2=\5\30\0046\4\1\0009\4\5\0049\4\n\4'\6\31\0+\a\1\0B\4\3\1K\0\1\0t    augroup DashboardConfig\n      au!\n      au FileType dashboard nnoremap <buffer> q :q<CR>\n    augroup END\n  \29dashboard_custom_section\1\0\1\fcommand\20Telescope marks\1\2\0\0\22  Jump to Mark\1\0\1\fcommand\24Telescope live_grep\1\2\0\0\19  Find Word\1\0\1\fcommand\16SessionLoad\1\2\0\0\27  Load Last Session\1\0\1\fcommand\23Telescope oldfiles\1\2\0\0\29  Recently Used Files\1\0\1\fcommand\25Telescope git_status\1\2\0\0\20  Git Status\1\0\1\fcommand3lua require\"nvim-config.lib\".workspace_files()\1\2\0\0\19  Find File\16description\1\0\1\fcommand\21DashboardNewFile\1\2\0\0\18  New File\t \27dashbord_custom_footer\6\n\fversion\14nvim_exec\nsplit\1\b\0\0�\1⠀⢀⣴⣦⠀⠀⠀⠀⢰⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀�\1⣰⣿⣿⣿⣷⡀⠀⠀⢸⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀�\1⣿⣿⣿⣿⣿⣿⣄⠀⢸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀�\1⣿⣿⣿⠈⢿⣿⣿⣦⢸⣿⣿⡇⠀⣠⠴⠒⠢⣄⠀⠀⣠⠴⠲⠦⣄⠐⣶⣆⠀⠀⢀⣶⡖⢰⣶⠀⢰⣶⣴⡶⣶⣆⣴⡶⣶⣶⡄�\1⣿⣿⣿⠀⠀⠻⣿⣿⣿⣿⣿⡇⢸⣁⣀⣀⣀⣘⡆⣼⠁⠀⠀⠀⠘⡇⠹⣿⡄⠀⣼⡿⠀⢸⣿⠀⢸⣿⠁⠀⢸⣿⡏⠀⠀⣿⣿�\1⠹⣿⣿⠀⠀⠀⠙⣿⣿⣿⡿⠃⢸⡀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⢀⡏⠀⢻⣿⣸⣿⠁⠀⢸⣿⠀⢸⣿⠀⠀⢸⣿⡇⠀⠀⣿⣿�\1⠀⠈⠻⠀⠀⠀⠀⠈⠿⠋⠀⠀⠈⠳⢤⣀⣠⠴⠀⠈⠧⣄⣀⡠⠞⠁⠀⠀⠿⠿⠃⠀⠀⢸⣿⠀⢸⣿⠀⠀⠸⣿⡇⠀⠀⣿⡿\28dashboard_custom_header\24nvim_win_get_height\bapi\14telescope dashboard_default_executive\6g\bvim\0\0", "setup", "dashboard-nvim")
time([[Setup for dashboard-nvim]], false)
time([[packadd for dashboard-nvim]], true)
vim.cmd [[packadd dashboard-nvim]]
time([[packadd for dashboard-nvim]], false)
-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\a\0\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0+\3\1\0B\0\3\0016\0\0\0009\0\4\0'\1\6\0=\1\5\0K\0\1\0\24MkdpOpenInNewWindow\21mkdp_browserfunc\6gfunction! MkdpOpenInNewWindow(url)\nlua require'nvim-config.lib'.mkdp_open_in_new_window(vim.fn.eval(\"a:url\"))\nendfunction\n\14nvim_exec\bapi\bvim\0", "setup", "markdown-preview.nvim")
time([[Setup for markdown-preview.nvim]], false)
time([[packadd for markdown-preview.nvim]], true)
vim.cmd [[packadd markdown-preview.nvim]]
time([[packadd for markdown-preview.nvim]], false)
-- Setup for: vim-illuminate
time([[Setup for vim-illuminate]], true)
try_loadstring("\27LJ\2\n�\1\0\0\2\0\6\0\r6\0\0\0009\0\1\0)\1�\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0K\0\1\0\1\v\0\0\aqf\14dashboard\vpacker\20TelescopePrompt\rNvimTree\fTrouble\18DiffviewFiles\24DiffviewFileHistory\fOutline\blir\27Illuminate_ftblacklist$Illuminate_highlightUnderCursor\21Illuminate_delay\6g\bvim\0", "setup", "vim-illuminate")
time([[Setup for vim-illuminate]], false)
time([[packadd for vim-illuminate]], true)
vim.cmd [[packadd vim-illuminate]]
time([[packadd for vim-illuminate]], false)
-- Setup for: symbols-outline.nvim
time([[Setup for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\4\0\n\0\0156\0\0\0009\0\1\0005\1\3\0005\2\4\0=\2\5\0014\2\0\0=\2\6\1=\1\2\0006\0\0\0009\0\a\0009\0\b\0'\2\t\0+\3\1\0B\0\3\1K\0\1\0�\1    hi! link FocusedSymbol Visual\n    augroup SymbolsOutlineConfig\n      au!\n      au FileType Outline set nolist winfixwidth winfixheight signcolumn=no\n    augroup END\n    \14nvim_exec\bapi\18lsp_blacklist\fkeymaps\1\0\6\18rename_symbol\6r\18goto_location\t<Cr>\17hover_symbol\14<C-space>\19focus_location\6o\nclose\6q\17code_actions\14<leader>.\1\0\4\27highlight_hovered_item\2\17auto_preview\1\rposition\nright\16show_guides\2\20symbols_outline\6g\bvim\0", "setup", "symbols-outline.nvim")
time([[Setup for symbols-outline.nvim]], false)
time([[packadd for symbols-outline.nvim]], true)
vim.cmd [[packadd symbols-outline.nvim]]
time([[packadd for symbols-outline.nvim]], false)
-- Setup for: FixCursorHold.nvim
time([[Setup for FixCursorHold.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1�\0=\1\2\0K\0\1\0\26cursorhold_updatetime\6g\bvim\0", "setup", "FixCursorHold.nvim")
time([[Setup for FixCursorHold.nvim]], false)
time([[packadd for FixCursorHold.nvim]], true)
vim.cmd [[packadd FixCursorHold.nvim]]
time([[packadd for FixCursorHold.nvim]], false)
-- Setup for: emmet-vim
time([[Setup for emmet-vim]], true)
try_loadstring("\27LJ\2\n=\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\n<C-Z>\26user_emmet_leader_key\6g\bvim\0", "setup", "emmet-vim")
time([[Setup for emmet-vim]], false)
time([[packadd for emmet-vim]], true)
vim.cmd [[packadd emmet-vim]]
time([[packadd for emmet-vim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n�\15\0\0\5\0$\0*6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0005\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\0025\3\28\0=\3\29\0026\3\30\0009\3\31\3=\3 \2B\0\2\0016\0\30\0009\0!\0009\0\"\0'\2#\0+\3\1\0B\0\3\1K\0\1\0�\1    hi def link GitSignsAdd diffAdded\n    hi def link GitSignsChange diffChanged\n    hi def link GitSignsDelete diffRemoved\n  \14nvim_exec\bapi\19_extmark_signs\23_has_sign_extmarks\bvim\16count_chars\1\21\0\0\b⒈\b⒉\b⒊\b⒋\b⒌\b⒍\b⒎\b⒏\b⒐\b⒑\b⒒\b⒓\b⒔\b⒕\b⒖\b⒗\b⒘\b⒙\b⒚\b⒛\28current_line_blame_opts\1\0\1\ndelay\3\0\19preview_config\1\0\1\vborder\frounded\14diff_opts\1\0\3\21indent_heuristic\2\14algorithm\14histogram\rinternal\2\fkeymaps\tn [c\1\2\1\0@&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0@&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'\texpr\2\1\0\f\17n <leader>hr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>hs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>hu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\vbuffer\2\17v <leader>hsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>hp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\fnoremap\2\17n <leader>hb0<cmd>lua require\"gitsigns\".blame_line()<CR>\to ih2:<C-U>lua require\"gitsigns\".text_object()<CR>\tx ih2:<C-U>lua require\"gitsigns\".text_object()<CR>\17n <leader>hR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17v <leader>hrT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\nsigns\1\0\a\30_refresh_staged_on_update\1\18sign_priority\3\6\14word_diff\2\nnumhl\1\vlinehl\1\23current_line_blame\2\20update_debounce\3�\1\14topdelete\1\0\4\ttext\b‾\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\17changedelete\1\0\4\ttext\b▍\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\vdelete\1\0\4\ttext\b▍\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\vchange\1\0\4\ttext\b▍\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\badd\1\0\0\1\0\4\ttext\b▍\ahl\16GitSignsAdd\vlinehl\18GitSignsAddLn\nnumhl\18GitSignsAddNr\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\1\a\0\22\00066\1\0\0009\1\1\0019\1\2\1\a\1\3\0X\0010�6\1\4\0'\3\5\0B\1\2\0029\2\6\0009\3\6\0019\3\a\3\5\2\3\0X\2\2�'\2\b\0X\3\1�'\2\t\0+\3\0\0009\4\6\0009\5\6\0019\5\n\5\5\4\5\0X\4\a�6\4\4\0'\6\v\0B\4\2\0029\4\f\4B\4\1\2\18\3\4\0X\4\16�9\4\r\0009\5\r\0019\5\14\5\4\4\5\0X\4\5�9\4\r\0009\5\r\0019\5\15\5\5\4\5\0X\4\6�6\4\4\0'\6\v\0B\4\2\0029\4\16\4B\4\1\2\18\3\4\0006\4\4\0'\6\17\0B\4\2\0029\4\18\0045\6\19\0=\2\20\6=\3\21\6D\4\2\0K\0\1\0\rlocation\bkey\1\0\0\28calculate_commentstring&ts_context_commentstring.internal\30get_visual_start_location\6V\6v\fcmotion\24get_cursor_location#ts_context_commentstring.utils\nblock\16__multiline\14__default\tline\nctype\18Comment.utils\frequire\20typescriptreact\rfiletype\abo\bvimN\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\rpre_hook\1\0\0\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n�\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\29html_break_line_filetype\1\6\0\0\thtml\bvue\20typescriptreact\vsvelte\20javascriptreact\21disable_filetype\1\0\2\22ignored_next_char\19[%w%%%'%[%\"%.]\30enable_check_bracket_line\2\1\2\0\0\20TelescopePrompt\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n�\5\0\0\5\0\27\00166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1)\0�\0005\1\b\0005\2\6\0005\3\a\0>\0\3\3>\3\2\2=\2\t\0015\2\n\0005\3\v\0>\0\3\3>\3\2\2=\2\f\0015\2\r\0005\3\14\0\24\4\0\0>\4\3\3>\3\2\2=\2\15\0015\2\16\0005\3\17\0\24\4\0\0>\4\3\3>\3\2\2=\2\18\0015\2\19\0004\3\3\0>\0\1\3>\3\2\2=\2\20\0015\2\21\0004\3\3\0>\0\1\3>\3\2\2=\2\22\0015\2\23\0004\3\3\0>\0\1\3>\3\2\2=\2\24\0016\2\0\0'\4\25\0B\2\2\0029\2\26\2\18\4\1\0B\2\2\1K\0\1\0\17set_mappings\21neoscroll.config\azb\1\2\0\0\azb\azz\1\2\0\0\azz\azt\1\2\0\0\azt\n<C-f>\1\3\0\0#vim.api.nvim_win_get_height(0)\ttrue\1\2\0\0\vscroll\n<C-b>\1\3\0\0$-vim.api.nvim_win_get_height(0)\ttrue\1\2\0\0\vscroll\n<C-d>\1\3\0\0 math.max(vim.wo.scroll, 16)\ttrue\1\2\0\0\vscroll\n<C-u>\1\0\0\1\3\0\0!-math.max(vim.wo.scroll, 16)\ttrue\1\2\0\0\vscroll\rmappings\1\0\5\22respect_scrolloff\1\rstop_eof\2\16hide_cursor\2\20easing_function\14quadratic\25cursor_scrolls_alone\2\1\b\0\0\n<C-u>\n<C-d>\n<C-b>\n<C-f>\azt\azz\azb\nsetup\14neoscroll\frequire\4\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n�\4\0\0\5\0\24\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\22\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\3=\3\23\2B\0\2\1K\0\1\0\roverride\1\0\1\fdefault\2\20lir_folder_icon\1\0\3\ncolor\f#7ebae4\ticon\b\tname\18LirFolderNode\rmakefile\1\0\3\ncolor\f#6d8086\ticon\b\tname\rMakefile\rMakefile\1\0\3\ncolor\f#6d8086\ticon\b\tname\rMakefile\tlisp\1\0\3\ncolor\f#264B8B\ticon\bﬦ\tname\tLisp\ael\1\0\3\ncolor\f#5D439C\ticon\bﬦ\tname\nElisp\atl\1\0\3\ncolor\f#51a0cf\ticon\b\tname\tTeal\6m\1\0\3\ncolor\f#599eff\ticon\b\tname\fCModule\acs\1\0\3\ncolor\f#0d5786\ticon\b\tname\aCs\bxml\1\0\0\1\0\3\ncolor\f#e37933\ticon\b\tname\bXml\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n[\0\2\5\0\3\0\14\6\0\0\0X\2\n�6\2\0\0009\2\1\0029\2\2\2\18\4\1\0B\2\2\2)\3\16'\0\3\2\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\24nvim_buf_line_count\bapi\bvim�\t\1\0\a\0+\00046\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0005\1\f\0005\2\n\0005\3\v\0=\3\6\2=\2\b\1=\1\t\0006\1\0\0'\3\r\0B\1\2\0029\1\14\0015\3\16\0005\4\15\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0003\5\21\0=\5\22\4=\4\23\0035\4\24\0005\5\25\0=\5\26\4=\4\27\0035\4\28\0=\4\29\0035\4 \0005\5\30\0005\6\31\0=\6\26\5=\5!\0045\5\"\0005\6#\0=\6$\0055\6%\0=\6&\5=\5'\0045\5(\0=\5)\4=\4*\3B\1\2\1K\0\1\0\16textobjects\26context_commentstring\1\0\1\venable\2\tswap\18swap_previous\1\0\1\14<leader>A\21@parameter.inner\14swap_next\1\0\1\14<leader>a\21@parameter.inner\1\0\1\venable\2\vselect\1\0\0\1\0\4\aaf\20@function.outer\aaa\21@parameter.outer\aif\20@function.inner\aia\21@parameter.inner\1\0\2\venable\2\14lookahead\2\fautotag\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\21node_incremental\bgrn\1\0\1\venable\2\14highlight\fdisable\0\1\0\2&additional_vim_regex_highlighting\1\venable\2\vindent\1\0\1\venable\2\21ensure_installed\1\0\0\1\23\0\0\tbash\bcss\15dockerfile\fgraphql\thtml\15javascript\njsdoc\tjson\njson5\blua\bphp\nregex\trust\tscss\ttoml\btsx\15typescript\bvim\tyaml\tnorg\14norg_meta\15norg_table\nsetup\28nvim-treesitter.configs\1\0\0\1\2\0\0\17src/parser.c\1\0\2\vbranch\tmain\burl9https://github.com/nvim-neorg/tree-sitter-norg-table\15norg_table\17install_info\1\0\0\nfiles\1\2\0\0\17src/parser.c\1\0\2\vbranch\tmain\burl8https://github.com/nvim-neorg/tree-sitter-norg-meta\14norg_meta\23get_parser_configs\28nvim-treesitter.parsers\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\4\15max_height\3\f\14max_width\3P\16hint_prefix\t● \16hint_enable\1\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-pqf.git
time([[Config for nvim-pqf.git]], true)
try_loadstring("\27LJ\2\nq\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nsigns\1\0\0\1\0\4\tinfo\b\fwarning\b\thint\b\nerror\b\nsetup\bpqf\frequire\0", "config", "nvim-pqf.git")
time([[Config for nvim-pqf.git]], false)
-- Config for: nvim-ts-rainbow
time([[Config for nvim-ts-rainbow]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\frainbow\1\0\0\vcolors\1\b\0\0\f#bf616a\f#d08770\f#ebcb8b\f#a3be8c\f#88c0d0\f#5e81ac\f#b48ead\1\0\3\19max_file_lines\3�\v\18extended_mode\2\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-ts-rainbow")
time([[Config for nvim-ts-rainbow]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\n�\14\0\0\b\0@\0l6\0\0\0009\0\1\0009\0\2\0009\0\3\0006\1\4\0009\1\5\0019\1\6\1'\3\a\0005\4\b\0B\1\3\0016\1\t\0'\3\n\0B\1\2\0029\2\v\0015\3\r\0004\4\3\0\18\5\0\0'\6\14\0&\5\6\5>\5\1\4=\4\15\3=\3\f\0029\2\16\0014\3\3\0005\4\17\0005\5\18\0=\5\19\0045\5\20\0=\5\21\4>\4\1\0035\4\22\0>\4\2\3=\3\f\0026\2\t\0'\4\23\0B\2\2\0029\2\24\0025\4\26\0005\5\25\0=\5\27\0045\5\29\0005\6\28\0=\6\30\5=\5\31\0045\5$\0004\6\5\0005\a \0>\a\1\0065\a!\0>\a\2\0065\a\"\0>\a\3\0065\a#\0>\a\4\6=\6%\5=\5&\0045\5(\0005\6'\0=\6%\5=\5)\0045\5*\0005\6,\0005\a+\0=\a-\6=\6\31\5=\5.\0045\5/\0=\0050\4B\2\2\0019\2\v\0015\0032\0004\4\3\0006\0053\0009\0054\5'\a\3\0B\5\2\2'\0065\0&\5\6\5>\5\1\4=\4\15\3=\0031\0029\2\16\0014\3\4\0005\0047\0006\5\4\0009\5\5\0059\0058\5B\5\1\2=\0059\4>\4\1\0035\4:\0006\5\t\0'\a;\0B\5\2\0029\5<\5=\5=\4>\4\2\0035\4>\0006\5\4\0009\5\5\0059\0058\5B\5\1\2=\0059\0045\5?\0=\5\15\4>\4\3\3=\0036\2K\0\1\0\1\6\0\0\20${fileBasename}\14--verbose\a-i\15--no-cache\15--watchAll\1\0\a\fprogram2${workspaceFolder}/node_modules/jest/bin/jest\frequest\vlaunch\tname\28Jest watch current file\fconsole\23integratedTerminal\rprotocol\14inspector\27internalConsoleOptions\14neverOpen\ttype\nnode2\14processId\17pick_process\14dap.utils\1\0\3\tname\22Attach to process\frequest\vattach\ttype\nnode2\bcwd\vgetcwd\1\0\a\fprogram\f${file}\ttype\nnode2\fconsole\23integratedTerminal\15sourceMaps\2\rprotocol\14inspector\frequest\vlaunch\tname\vLaunch\20typescriptreact1/git/vscode-node-debug2/out/src/nodeDebug.js\vgetenv\aos\1\0\2\fcommand\tnode\ttype\15executable\nnode2\fwindows\1\0\1\vindent\3\1\rfloating\nclose\1\0\0\1\3\0\0\6q\n<Esc>\1\0\0\ttray\1\0\2\rposition\vbottom\tsize\3\n\1\2\0\0\trepl\fsidebar\relements\1\0\2\rposition\tleft\tsize\3(\1\0\2\tsize\4\0����\3\aid\fwatches\1\0\2\tsize\4\0����\3\aid\vstacks\1\0\2\tsize\4\0����\3\aid\16breakpoints\1\0\2\tsize\4\0����\3\aid\vscopes\rmappings\vexpand\1\0\4\tedit\6e\trepl\6r\vremove\6d\topen\6o\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\rexpanded\b▾\14collapsed\b▸\nsetup\ndapui\1\0\5\bcwd\21${workspaceRoot}\ttype\bphp\tport\3�F\frequest\vlaunch\tname!Launch currently open script\vignore\1\3\0\0#**/silverstripe-cache/**/*.php\23**/vendor/**/*.php\17pathMappings\1\0\1\30/srv/archipro/www/marwan/\24${workspaceFolder}/\1\0\6\tport\3�F\rhostname\f0.0.0.0\16stopOnEntry\1\ttype\bphp\frequest\vlaunch\tname\22Listen for XDebug\19configurations\targs//programs/vscode-php-debug/out/phpDebug.js\1\0\2\fcommand\tnode\ttype\15executable\bphp\radapters\bdap\frequire\1\0\4\ttext\b\vlinehl\5\vtexthl\28LspDiagnosticsSignError\nnumhl\5\18DapBreakpoint\16sign_define\afn\bvim\tHOME\nutils\vcommon\vConfig\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: winshift.nvim
time([[Config for winshift.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\23moving_win_options\1\0\4\twrap\1\17cursorcolumn\1\15cursorline\1\16colorcolumn\5\1\0\2\21focused_hl_group\21LspReferenceRead\25highlight_moving_win\2\nsetup\rwinshift\frequire\0", "config", "winshift.nvim")
time([[Config for winshift.nvim]], false)
-- Config for: feline.nvim
time([[Config for feline.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\b\0\0156\0\0\0009\0\1\0009\0\2\0'\2\3\0+\3\1\0B\0\3\0016\0\4\0009\0\5\0009\0\6\0B\0\1\0016\0\4\0009\0\5\0009\0\a\0B\0\1\1K\0\1\0\nsetup\vupdate\vfeline\vConfigm    augroup feline_config\n      au!\n      au ColorScheme * lua Config.feline.reload()\n    augroup END\n  \14nvim_exec\bapi\bvim\0", "config", "feline.nvim")
time([[Config for feline.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd vim-vsnip ]]
vim.cmd [[ packadd friendly-snippets ]]
vim.cmd [[ packadd nvim-cmp ]]

-- Config for: nvim-cmp
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim�\1\0\0\n\1\a\0\0224\0\0\0006\1\0\0-\3\0\0009\3\1\3B\3\1\0A\1\0\4X\4\t�-\6\0\0009\6\2\6\18\b\5\0'\t\3\0B\6\3\2\6\6\4\0X\6\2�+\6\2\0<\6\5\0E\4\3\3R\4�6\1\5\0009\1\6\1\18\3\0\0D\1\2\0\3�\rtbl_keys\bvim\rdap-repl\rfiletype\24nvim_buf_get_option\19nvim_list_bufs\vipairs.\2\0\4\1\1\0\5-\0\0\0\18\2\0\0009\0\0\0G\3\0\0C\0\1\0\2�\21compare_locality�\t\1\0\14\0009\0\\6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\4\0009\3\5\0036\4\6\0009\4\a\0049\4\b\0045\5\t\0009\6\n\0005\b\14\0005\t\f\0003\n\v\0=\n\r\t=\t\15\b5\t\18\0009\n\16\0009\n\17\n)\f��B\n\2\2=\n\19\t9\n\16\0009\n\17\n)\f\4\0B\n\2\2=\n\20\t9\n\16\0009\n\21\nB\n\1\2=\n\22\t9\n\16\0009\n\23\nB\n\1\2=\n\24\t9\n\16\0009\n\25\n5\f\26\0009\r\27\0009\r\28\r=\r\29\fB\n\2\2=\n\30\t=\t\16\b5\t\"\0006\n\0\0'\f\31\0B\n\2\0029\n \n5\f!\0B\n\2\2=\n#\t=\t$\b5\t%\0=\t&\b4\t\6\0005\n'\0>\n\1\t5\n(\0>\n\2\t5\n)\0>\n\3\t5\n*\0>\n\4\t5\n+\0005\v-\0003\f,\0=\f.\v=\v/\n>\n\5\t=\t0\b5\t2\0004\n\3\0003\v1\0>\v\1\n=\n3\t=\t4\bB\6\2\0019\0065\0\18\b\6\0009\0066\6'\t7\0009\n8\1B\n\1\0A\6\2\0012\0\0�K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\fsorting\16comparators\1\0\0\0\fsources\voption\15get_bufnrs\1\0\0\0\1\0\2\19max_item_count\3\20\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\nspell\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\18documentation\1\0\1\vborder\vsingle\15formatting\vformat\1\0\0\1\0\2\rmaxwidth\3�\2\tmode\16symbol_text\15cmp_format\flspkind\t<CR>\rbehavior\vInsert\20ConfirmBehavior\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\nEvent\n  \nColor\n  \vStruct\n  \15EnumMember\n  \14Interface\t 蘒\nValue\n  \nClass\n  \16Constructor\n  \rConstant\n  \tText\n  \18TypeParameter\n<>\fSnippet\n  \nField\n  \tUnit\n 塞 \rVariable\n[]\rFunction\n  \vFolder\n ﱮ \vMethod\n  \tFile\n  \fKeyword\n  \14Reference\n  \tEnum\n 練 \rProperty\n  \vModule\n  \rOperator\n  \nutils\vcommon\vConfig\bapi\bvim\15cmp_buffer\"nvim-autopairs.completion.cmp\bcmp\frequire\0", "config", "nvim-cmp")

vim.cmd [[ packadd cmp-vsnip ]]
vim.cmd [[ packadd vim-vsnip-integ ]]
vim.cmd [[ packadd neorg ]]

-- Config for: neorg
try_loadstring("\27LJ\2\n�\3\0\0\a\0\23\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\21\0005\3\3\0004\4\0\0=\4\4\0035\4\b\0005\5\6\0005\6\5\0=\6\a\5=\5\t\4=\4\n\0035\4\f\0005\5\v\0=\5\t\4=\4\r\0035\4\15\0005\5\14\0=\5\t\4=\4\16\0034\4\0\0=\4\17\0034\4\0\0=\4\18\0034\4\0\0=\4\19\0034\4\0\0=\4\20\3=\3\22\2B\0\2\1K\0\1\0\tload\1\0\0\19core.presenter\22core.norg.qol.toc\24core.norg.concealer\22core.norg.journal\25core.norg.completion\1\0\0\1\0\1\vengine\rnvim-cmp\18core.gtd.base\1\0\0\1\0\1\14workspace\twork\21core.norg.dirman\vconfig\1\0\0\15workspaces\1\0\1\14autochdir\2\1\0\2\thome\17~/notes/home\twork\17~/notes/work\18core.defaults\1\0\0\nsetup\nneorg\frequire\0", "config", "neorg")

vim.cmd [[ packadd nvim-spectre ]]

-- Config for: nvim-spectre
try_loadstring("\27LJ\2\n�\18\0\0\a\0<\0G6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\3=\3\25\0025\3#\0005\4\26\0005\5\27\0=\5\28\0045\5\30\0005\6\29\0=\6\31\0055\6 \0=\6!\5=\5\"\4=\4$\0035\4%\0005\5&\0=\5\28\0045\5(\0005\6'\0=\6\31\0055\6)\0=\6!\5=\5\"\4=\4*\3=\3+\0025\3-\0005\4,\0=\4.\0035\0040\0005\5/\0=\5\31\4=\4\"\3=\0031\0025\0034\0005\0042\0005\0053\0=\5\"\4=\0045\0035\0046\0=\0047\3=\0038\2B\0\2\0016\0009\0009\0:\0'\2;\0B\0\2\1K\0\1\0i    augroup SpectreConfig\n    au!\n    au FileType spectre_panel setlocal nolist\n    augroup END\n    \bcmd\bvim\fdefault\freplace\1\0\1\bcmd\bsed\tfind\1\0\0\1\2\0\0\16ignore-case\1\0\1\bcmd\aag\19replace_engine\1\0\0\1\0\3\ticon\b[I]\nvalue\18--ignore-case\tdesc\16ignore case\bsed\1\0\0\1\0\1\bcmd\bsed\16find_engine\aag\1\0\3\ticon\b[H]\nvalue\r--hidden\tdesc\16hidden file\1\0\0\1\0\3\ticon\b[I]\nvalue\a-i\tdesc\16ignore case\1\3\0\0\14--vimgrep\a-s\1\0\1\bcmd\aag\arg\1\0\0\foptions\vhidden\1\0\3\ticon\b[H]\nvalue\r--hidden\tdesc\16hidden file\16ignore-case\1\0\0\1\0\3\ticon\b[I]\nvalue\18--ignore-case\tdesc\16ignore case\targs\1\6\0\0\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\1\0\1\bcmd\arg\fmapping\25toggle_ignore_hidden\1\0\3\bcmd=<cmd>lua require('spectre').change_options('hidden')<CR>\bmap\ath\tdesc\25toggle search hidden\23toggle_ignore_case\1\0\3\bcmdB<cmd>lua require('spectre').change_options('ignore-case')<CR>\bmap\ati\tdesc\23toggle ignore case\21change_view_mode\1\0\3\bcmd2<cmd>lua require('spectre').change_view()<CR>\bmap\14<leader>v\tdesc\28change result view mode\16run_replace\1\0\3\bcmd:<cmd>lua require('spectre.actions').run_replace()<CR>\bmap\14<leader>R\tdesc\16replace all\21show_option_menu\1\0\3\bcmd3<cmd>lua require('spectre').show_options()<CR>\bmap\14<leader>o\tdesc\16show option\16replace_cmd\1\0\3\bcmd:<cmd>lua require('spectre.actions').replace_cmd()<CR>\bmap\14<leader>c\tdesc\30input replace vim command\15send_to_qf\1\0\3\bcmd9<cmd>lua require('spectre.actions').send_to_qf()<CR>\bmap\n<c-q>\tdesc\30send all item to quickfix\15enter_file\1\0\3\bcmd;<cmd>lua require('spectre.actions').select_entry()<CR>\bmap\t<cr>\tdesc\22goto current file\16delete_line\1\0\0\1\0\3\bcmd-<cmd>lua require('spectre').delete()<CR>\bmap\add\tdesc\24toggle current item\14highlight\1\0\3\freplace\rDiffText\aui\vString\vsearch\20DiffAddAsDelete\1\0\a\19is_insert_mode\1\23is_open_target_win\2\20replace_vim_cmd\tcfdo\rline_sep�\1└─────────────────────────────────────────\19color_devicons\2\19result_padding\n│  \19line_sep_start�\1┌─────────────────────────────────────────\nsetup\fspectre\frequire\0", "config", "nvim-spectre")

vim.cmd [[ packadd nvim-bufferline.lua ]]

-- Config for: nvim-bufferline.lua
try_loadstring("\27LJ\2\nk\0\3\15\1\5\0\17'\3\0\0006\4\1\0\18\6\2\0B\4\2\4H\a\t�6\t\2\0009\t\3\t'\v\4\0\18\f\3\0-\r\0\0008\r\a\r\18\14\b\0B\t\5\2\18\3\t\0F\a\3\3R\a�L\3\2\0\0�\r%s %s %d\vformat\vstring\npairs\5�\6\1\0\a\0\18\0\0275\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\f\0005\4\4\0003\5\5\0=\5\6\0045\5\a\0=\5\b\0044\5\3\0005\6\t\0>\6\1\0055\6\n\0>\6\2\5=\5\v\4=\4\r\3B\1\2\0016\1\14\0009\1\15\0019\1\16\1'\3\17\0+\4\1\0B\1\3\0012\0\0�K\0\1\0\\    hi! BufferLineDiagnostic gui=bold\n    hi! BufferLineDiagnosticVisible gui=bold\n    \14nvim_exec\bapi\bvim\foptions\1\0\0\foffsets\1\0\3\ttext\19Source Control\rfiletype\18DiffviewFiles\15text_align\vcenter\1\0\3\ttext\nFiles\rfiletype\rNvimTree\15text_align\vcenter\20separator_style\1\3\0\0\b▏\b▕\26diagnostics_indicator\0\1\0\16\24persist_buffer_sort\2\20show_close_icon\1\28show_buffer_close_icons\2\16diagnostics\rnvim_lsp\rtab_size\3\18\22max_prefix_length\3\15\20max_name_length\3\18\23right_trunc_marker\b\22left_trunc_marker\b\15close_icon\b\18modified_icon\b●\22buffer_close_icon\b\fnumbers\tnone\tview\fdefault\27always_show_bufferline\2\25enforce_regular_tabs\1\nsetup\15bufferline\frequire\1\0\4\tinfo\b\fwarning\b\thint\b\nerror\b\0", "config", "nvim-bufferline.lua")

vim.cmd [[ packadd lsp-trouble.nvim ]]

-- Config for: lsp-trouble.nvim
try_loadstring("\27LJ\2\nC\0\0\4\1\3\0\5-\0\0\0009\0\0\0'\2\1\0'\3\2\0D\0\3\0\1�\fTrouble\rfiletype\25find_buf_with_option+\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\fTrouble\bcmd\bvim;\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\28wincmd p | TroubleClose\bcmd\bvim�\5\1\0\b\0\22\0\0316\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0016\2\0\0'\4\5\0B\2\2\0029\2\6\0025\4\a\0005\5\b\0=\5\t\0045\5\n\0=\5\v\4B\2\2\0019\2\f\0003\4\r\0003\5\14\0003\6\15\0005\a\16\0B\2\5\0027\2\17\0006\2\18\0009\2\19\0029\2\20\2'\4\21\0+\5\1\0B\2\3\0012\0\0�K\0\1\0g    augroup LspTroubleConfig\n      au!\n      au FileType Trouble setlocal cc=\n    augroup END\n    \14nvim_exec\bapi\bvim\27LspTroubleCustomToggle\1\0\2\nfocus\2\20remember_height\2\0\0\0\23create_buf_toggler\nsigns\1\0\4\thint\b\fwarning\b\16information\b\nerror\b\16action_keys\1\0\v\rprevious\6k\16close_folds\azM\vcancel\n<esc>\19toggle_preview\6P\16toggle_mode\6m\tjump\t<cr>\frefresh\6R\fpreview\6p\tnext\6j\nclose\6q\15open_folds\azR\1\0\n\14fold_open\b\17auto_preview\1\29use_lsp_diagnostic_signs\1\vheight\3\n\tmode\26workspace_diagnostics\16fold_closed\b\15auto_close\1\14auto_open\1\17indent_lines\2\nicons\2\nsetup\ftrouble\nutils\vcommon\vConfig\20nvim-config.lib\frequire\0", "config", "lsp-trouble.nvim")

vim.cmd [[ packadd diffview.nvim ]]

-- Config for: diffview.nvim
try_loadstring("\27LJ\2\n�\r\0\0\n\0M\0�\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0004\1\0\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\5\0005\5\6\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0005\6\v\0=\6\f\5=\5\r\0045\5\14\0004\6\0\0=\6\15\0054\6\0\0=\6\16\5=\5\17\0044\5\0\0=\5\18\0045\5\19\0005\6\21\0\18\a\0\0'\t\20\0B\a\2\2=\a\22\6\18\a\0\0'\t\23\0B\a\2\2=\a\24\6\18\a\0\0'\t\25\0B\a\2\2=\a\26\6\18\a\0\0'\t\27\0B\a\2\2=\a\28\6\18\a\0\0'\t\29\0B\a\2\2=\a\30\6\18\a\0\0'\t\31\0B\a\2\2=\a \6\18\a\0\0'\t!\0B\a\2\2=\a\"\6=\6#\0055\6%\0\18\a\0\0'\t$\0B\a\2\2=\a&\6\18\a\0\0'\t$\0B\a\2\2=\a'\6\18\a\0\0'\t(\0B\a\2\2=\a)\6\18\a\0\0'\t(\0B\a\2\2=\a*\6\18\a\0\0'\t+\0B\a\2\2=\a,\6\18\a\0\0'\t-\0B\a\2\2=\a.\6\18\a\0\0'\t-\0B\a\2\2=\a/\6\18\a\0\0'\t0\0B\a\2\2=\a1\6\18\a\0\0'\t0\0B\a\2\2=\a2\6\18\a\0\0'\t3\0B\a\2\2=\a4\6\18\a\0\0'\t5\0B\a\2\2=\a6\6\18\a\0\0'\t7\0B\a\2\2=\a8\6\18\a\0\0'\t\20\0B\a\2\2=\a\22\6\18\a\0\0'\t\23\0B\a\2\2=\a\24\6\18\a\0\0'\t\25\0B\a\2\2=\a\26\6\18\a\0\0'\t\27\0B\a\2\2=\a\28\6\18\a\0\0'\t\29\0B\a\2\2=\a\30\6\18\a\0\0'\t\31\0B\a\2\2=\a \6\18\a\0\0'\t!\0B\a\2\2=\a\"\6=\6\r\0055\6:\0\18\a\0\0'\t9\0B\a\2\2=\a;\6\18\a\0\0'\t<\0B\a\2\2=\a=\6\18\a\0\0'\t>\0B\a\2\2=\a?\6\18\a\0\0'\t@\0B\a\2\2=\aA\6\18\a\0\0'\tB\0B\a\2\2=\aC\6\18\a\0\0'\t$\0B\a\2\2=\a&\6\18\a\0\0'\t$\0B\a\2\2=\a'\6\18\a\0\0'\t(\0B\a\2\2=\a)\6\18\a\0\0'\t(\0B\a\2\2=\a*\6\18\a\0\0'\t+\0B\a\2\2=\a,\6\18\a\0\0'\t-\0B\a\2\2=\a.\6\18\a\0\0'\t-\0B\a\2\2=\a/\6\18\a\0\0'\t\20\0B\a\2\2=\a\22\6\18\a\0\0'\t\23\0B\a\2\2=\a\24\6\18\a\0\0'\t\25\0B\a\2\2=\a\26\6\18\a\0\0'\t\27\0B\a\2\2=\a\28\6\18\a\0\0'\t\29\0B\a\2\2=\a\30\6\18\a\0\0'\t\31\0B\a\2\2=\a \6\18\a\0\0'\t!\0B\a\2\2=\a\"\6=\6D\0055\6F\0\18\a\0\0'\tE\0B\a\2\2=\a\22\6\18\a\0\0'\tG\0B\a\2\2=\aH\6=\6I\5=\5J\4B\2\2\0016\2K\0009\2L\2=\1\3\2K\0\1\0\vConfig\a_G\17key_bindings\17option_panel\6q\nclose\1\0\0\vselect\23file_history_panel\azM\20close_all_folds\azR\19open_all_folds\6y\14copy_hash\f<C-A-d>\21open_in_diffview\ag!\1\0\0\foptions\6R\18refresh_files\6U\16unstage_all\6S\14stage_all\6s\6-\23toggle_stage_entry\18<2-LeftMouse>\6o\17select_entry\t<cr>\16focus_entry\t<up>\6k\15prev_entry\v<down>\6j\1\0\0\15next_entry\tview\14<leader>b\17toggle_files\14<leader>e\16focus_files\f<C-w>gf\18goto_file_tab\15<C-w><C-f>\20goto_file_split\agf\19goto_file_edit\f<s-tab>\22select_prev_entry\n<tab>\1\0\0\22select_next_entry\1\0\1\21disable_defaults\1\nhooks\17default_args\24DiffviewFileHistory\17DiffviewOpen\1\0\0\15file_panel\17tree_options\1\0\2\20folder_statuses\16only_folded\17flatten_dirs\2\1\0\4\nwidth\3#\vheight\3\n\rposition\tleft\18listing_style\ttree\nsigns\1\0\2\14fold_open\b\16fold_closed\b\nicons\1\0\2\18folder_closed\b\16folder_open\b\1\0\3\14use_icons\2\21enhanced_diff_hl\2\18diff_binaries\1\nsetup\rdiffview\22diffview_callback\20diffview.config\frequire\0", "config", "diffview.nvim")

vim.cmd [[ packadd lir.nvim ]]

-- Config for: lir.nvim
try_loadstring("\27LJ\2\n|\0\0\3\0\b\0\0156\0\0\0009\0\1\0009\0\2\0+\2\2\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0\15\0\0\0X\1\4�6\0\3\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0\rwincmd q\bcmd\17lir_is_float\6w\bvim\18remove_buffer\blib\vConfigE\0\0\3\1\4\0\b-\0\0\0009\0\0\0B\0\1\0016\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\5�\fnorm! j\bcmd\bvim\16toggle_markE\0\0\3\1\4\0\b-\0\0\0009\0\0\0B\0\1\0016\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\5�\fnorm! k\bcmd\bvim\16toggle_mark \0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\1\vborder\vsingle�\2\0\1\n\1\15\00166\1\0\0009\1\1\0019\1\2\1\f\3\0\0X\3\1�'\3\3\0'\4\4\0B\1\3\0026\2\0\0009\2\1\0029\2\5\2\18\4\1\0B\2\2\2\t\2\0\0X\2\v�6\2\0\0009\2\1\0029\2\6\0026\4\0\0009\4\a\0049\4\b\4B\4\1\2'\5\4\0B\2\3\2\18\1\2\0X\2\14�6\2\0\0009\2\1\0029\2\t\2\18\4\1\0B\2\2\2\t\2\0\0X\2\a�6\2\0\0009\2\1\0029\2\6\2\18\4\1\0'\5\n\0B\2\3\2\18\1\2\0006\2\0\0009\2\v\2'\4\f\0006\5\0\0009\5\1\0059\5\r\5-\a\0\0009\a\14\a\18\t\1\0B\a\2\0A\5\0\2&\4\5\4B\2\2\1K\0\1\0\1�\25path_remove_trailing\16fnameescape\ae \bcmd\a:h\16isdirectory\bcwd\tloop\16fnamemodify\17filereadable\a:p\6%\vexpand\afn\bvim\0�\1\0\1\t\2\a\0\24+\1\0\0\15\0\0\0X\2\14�-\2\0\0009\2\0\0026\4\1\0009\4\2\0049\4\3\0046\6\1\0009\6\2\0069\6\4\6\18\b\0\0B\6\2\2'\a\5\0B\4\3\0A\2\0\2\18\1\2\0-\2\1\0009\2\6\2\f\4\1\0X\4\1�+\4\0\0B\2\2\1K\0\1\0\1�\3�\tinit\a:p\vexpand\16fnamemodify\afn\bvim\25path_remove_trailing�\2\0\1\a\2\r\00156\1\0\0009\1\1\0019\1\2\1\f\3\0\0X\3\1�'\3\3\0'\4\4\0B\1\3\0026\2\0\0009\2\1\0029\2\5\2\18\4\1\0B\2\2\2\t\2\0\0X\2\v�6\2\0\0009\2\1\0029\2\6\0026\4\0\0009\4\a\0049\4\b\4B\4\1\2'\5\4\0B\2\3\2\18\1\2\0X\2\14�6\2\0\0009\2\1\0029\2\t\2\18\4\1\0B\2\2\2\t\2\0\0X\2\a�6\2\0\0009\2\1\0029\2\6\2\18\4\1\0'\5\n\0B\2\3\2\18\1\2\0-\2\0\0009\2\v\2\15\0\1\0X\4\6�-\4\1\0009\4\f\4\18\6\1\0B\4\2\2\14\0\4\0X\5\1�+\4\0\0B\2\2\1K\0\1\0\3�\1�\25path_remove_trailing\vtoggle\a:h\16isdirectory\bcwd\tloop\16fnamemodify\17filereadable\a:p\6%\vexpand\afn\bvim\0�\t\1\0\f\0P\0q4\0\0\0006\1\0\0009\1\1\0019\1\2\0016\2\0\0009\2\1\0029\2\3\0026\3\4\0'\5\5\0B\3\2\0026\4\4\0'\6\6\0B\4\2\0026\5\4\0'\a\a\0B\5\2\0026\6\4\0'\b\b\0B\6\2\0026\a\4\0'\t\t\0B\a\2\0029\a\n\a5\t\v\0005\n\r\0009\v\f\4=\v\14\n9\v\f\4=\v\15\n9\v\f\4=\v\16\n9\v\17\4=\v\18\n9\v\19\4=\v\20\n9\v\21\4=\v\22\n9\v\23\4=\v\24\n9\v\23\4=\v\25\n3\v\26\0=\v\27\n9\v\28\4=\v\29\n9\v\30\4=\v\31\n9\v \4=\v!\n9\v\"\4=\v#\n9\v$\4=\v%\n9\v&\4=\v'\n9\v(\4=\v)\n9\v*\4=\v+\n9\v,\5=\v-\n3\v.\0=\v/\n3\v0\0=\v1\n9\v\"\6=\v2\n9\v3\6=\v4\n9\v5\6=\v6\n=\n7\t5\n8\0003\v9\0=\v:\n=\n;\tB\a\2\0016\a\4\0'\t<\0B\a\2\0029\a\n\a5\t=\0B\a\2\0013\a?\0=\a>\0003\aA\0=\a@\0003\aC\0=\aB\0009\aD\2'\tE\0'\nF\0005\vG\0B\a\4\0019\aD\2'\tH\0'\nI\0005\vJ\0B\a\4\0019\aD\2'\tK\0'\nH\0B\a\3\0016\aL\0009\aM\a9\aN\a'\tO\0+\n\1\0B\a\3\0016\a\0\0=\0\t\a2\0\0�K\0\1\0�\1    command! -bar -nargs=? -complete=dir LirExplore call v:lua.Config.lir.explore(<f-args>)\n    command! -bar -nargs=? -complete=dir LirFloat call v:lua.Config.lir.open_float(<f-args>)\n  \14nvim_exec\bapi\bvim\25DevIconLirFolderNode\1\0\1\fdefault\2\14Directory\18LirFolderIcon\1\0\1\nforce\2\16NormalFloat\19LirFloatNormal\fhi_link\0\17toggle_float\0\15open_float\0\fexplore\1\0\1\17show_ignored\2\19lir.git_status\nfloat\rwin_opts\0\1\0\1\rwinblend\3\0\rmappings\6p\npaste\6x\bcut\6y\6K\0\6J\0\6t\16toggle_mark\6d\vdelete\n<C-h>\23toggle_show_hidden\agy\14yank_path\n<C-]>\acd\6c\tcopy\6r\vrename\6a\fnewfile\6m\nmkdir\6q\0\6h\6-\aup\n<C-t>\ftabedit\n<C-v>\vvsplit\n<C-s>\nsplit\6l\6o\t<CR>\1\0\0\tedit\1\0\3\16hide_cursor\2\20devicons_enable\2\22show_hidden_files\2\nsetup\blir\26lir.clipboard.actions\21lir.mark.actions\16lir.actions\14lir.float\frequire\ahl\nutils\vcommon\vConfig\0", "config", "lir.nvim")

vim.cmd [[ packadd telescope.nvim ]]

-- Config for: telescope.nvim
try_loadstring("\27LJ\2\nn\0\2\a\4\2\1\16\14\0\1\0X\2\1�K\0\1\0009\2\0\1*\3\0\0\1\3\2\0X\2\2�K\0\1\0X\2\6�-\2\0\0009\2\1\2-\4\1\0-\5\2\0-\6\3\0B\2\4\1K\0\1\0\0\0\0�\1�\2�\27buffer_previewer_maker\tsize��\fi\1\3\a\1\6\0\17\14\0\2\0X\3\1�4\2\0\0006\3\0\0009\3\1\0039\3\2\3\18\5\0\0B\3\2\2\18\0\3\0006\3\0\0009\3\3\0039\3\4\3\18\5\0\0003\6\5\0B\3\3\0012\0\0�K\0\1\0\2�\0\ffs_stat\tloop\vexpand\afn\bvimN\0\0\6\1\4\0\t6\0\0\0009\0\1\0'\2\2\0\18\4\2\0009\2\3\2-\5\0\0B\2\3\0A\0\0\1K\0\1\0\1�\vformat\22DiffviewOpen %s^!\bcmd\bvim�\1\1\0\6\1\t\0\20-\0\0\0009\0\0\0B\0\1\0029\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0+\5\2\0B\2\3\0016\2\2\0009\2\5\2'\4\6\0B\2\2\0016\2\2\0009\2\a\0023\4\b\0B\2\2\0012\0\0�K\0\1\0\1�\0\rschedule\15stopinsert\bcmd\19nvim_win_close\bapi\bvim\nvalue\23get_selected_entry�\f\1\0\r\0A\0p6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0023\3\4\0006\4\0\0'\6\5\0B\4\2\0029\4\6\0045\6*\0005\a\b\0005\b\a\0=\b\t\a5\b\n\0005\t\v\0=\t\f\b5\t\r\0=\t\14\b=\b\15\a5\b\16\0=\b\17\a6\b\0\0'\n\18\0B\b\2\0029\b\19\b=\b\20\a4\b\0\0=\b\21\a6\b\0\0'\n\18\0B\b\2\0029\b\22\b=\b\23\a4\b\0\0=\b\24\a5\b\25\0=\b\26\a5\b\27\0=\b\28\a5\b%\0005\t\31\0009\n\29\0009\v\30\0 \n\v\n=\n \t6\n\0\0'\f\1\0B\n\2\0029\n!\n=\n\"\t6\n\0\0'\f\1\0B\n\2\0029\n#\n=\n$\t=\t&\b5\t'\0006\n\0\0'\f\1\0B\n\2\0029\n!\n=\n\"\t6\n\0\0'\f\1\0B\n\2\0029\n#\n=\n$\t=\t(\b=\b)\a=\a+\0065\a-\0005\b,\0=\b.\a5\b/\0=\b0\a5\b5\0005\t4\0005\n2\0003\v1\0=\v3\n=\n&\t=\t)\b=\b6\a=\a7\0065\a9\0005\b8\0=\b:\a5\b<\0005\t;\0=\t=\b=\b>\a=\a?\6B\4\2\0016\4\0\0'\6\5\0B\4\2\0029\4@\4'\6:\0B\4\2\0016\4\0\0'\6\5\0B\4\2\0029\4@\4'\6>\0B\4\2\0012\0\0�K\0\1\0\19load_extension\15extensions\16media_files\14filetypes\1\0\1\rfind_cmd\afd\1\b\0\0\bpng\twebp\bjpg\tjpeg\bmp4\twebm\bpdf\bfzf\1\0\0\1\0\4\25override_file_sorter\2\28override_generic_sorter\1\nfuzzy\2\14case_mode\15smart_case\fpickers\16git_commits\1\0\0\1\0\0\f<C-M-d>\1\0\0\0\14git_files\1\0\1\18results_title\1\15find_files\1\0\0\1\0\1\18results_title\1\rdefaults\1\0\0\rmappings\6n\1\0\0\6i\1\0\0\n<c-p>\23cycle_history_prev\n<c-n>\23cycle_history_next\n<c-q>\1\0\0\16open_qflist\19send_to_qflist\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b─\b│\b─\b│\b┌\b┐\b┘\b└\vborder\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\16file_sorter\19get_fuzzy_file\22telescope.sorters\17path_display\1\2\0\0\rabsolute\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\1\vmirror\1\1\0\3\19preview_cutoff\3x\nwidth\4\0����\3\20prompt_position\btop\22vimgrep_arguments\1\0\v\23selection_strategy\nreset\18results_title\1\17initial_mode\vinsert\17entry_prefix\a  \rwinblend\3\0\20selection_caret\t➤ \18prompt_prefix\n  \19color_devicons\2\ruse_less\2\20layout_strategy\15horizontal\21sorting_strategy\14ascending\1\b\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\nsetup\14telescope\0\25telescope.previewers\28telescope.actions.state\22telescope.actions\frequire\0", "config", "telescope.nvim")

time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType md ++once lua require("packer.load")({'vim-markdown'}, { ft = "md" }, _G.packer_plugins)]]
vim.cmd [[au FileType log ++once lua require("packer.load")({'vim-log-highlighting'}, { ft = "log" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-colorizer.lua', 'indent-blankline.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/marwan38/.local/share/nvim/site/pack/packer/opt/vim-log-highlighting/ftdetect/log.vim]], true)
vim.cmd [[source /home/marwan38/.local/share/nvim/site/pack/packer/opt/vim-log-highlighting/ftdetect/log.vim]]
time([[Sourcing ftdetect script at: /home/marwan38/.local/share/nvim/site/pack/packer/opt/vim-log-highlighting/ftdetect/log.vim]], false)
time([[Sourcing ftdetect script at: /home/marwan38/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], true)
vim.cmd [[source /home/marwan38/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]]
time([[Sourcing ftdetect script at: /home/marwan38/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
