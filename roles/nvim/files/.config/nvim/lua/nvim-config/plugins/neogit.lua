return function ()
  local Color = Config.common.color.Color
  local hl = Config.common.hl
  local utils = Config.common.utils
  local M = {}

  require('neogit').setup {
    disable_signs = false,
    disable_hint = true,
    disable_context_highlighting = false,
    status = {
      recent_commit_count = 10,
    },
    -- customize displayed signs
    signs = {
      -- { CLOSED, OPENED }
      section = { "", "" },
      item = { "", "" },
      hunk = { "", "" },
    },
    integrations = {
      diffview = true
    },
    sections = {
      recent = {
        folded = false,
      },
    },
    -- override/add mappings
    mappings = {
      -- modify status buffer mappings
      status = {
        -- Adds a mapping with "B" as key that does the "BranchPopup" command
        ["B"] = "BranchPopup",
      }
    }
  }

  function M.fix_hl()
    local hl_fg_normal = hl.get_fg("Normal")
    local hl_bg_normal = hl.get_bg("Normal")

    local bg_normal = Color.from_hex(hl_bg_normal)
    local sign = bg_normal.lightness >= 0.5 and -1 or 1

    local bg_hunk_header_hl = bg_normal:shade(0.15 * sign)
    local bg_diff_context_hl = bg_normal:shade(0.075 * sign)

    utils.hi("NeogitHunkHeader", { bg = bg_diff_context_hl:to_css() })
    utils.hi("NeogitHunkHeaderHighlight", { bg = bg_hunk_header_hl:to_css() })
    utils.hi("NeogitDiffContextHighlight", { bg = bg_diff_context_hl:to_css() })
    utils.hi("NeogitDiffAddHighlight", {
      bg = hl.get_bg("DiffAdd", true) or bg_diff_context_hl:to_css(),
      fg = hl.get_fg("DiffAdd", true) or hl.get_fg("diffAdded") or hl_fg_normal,
      gui = hl.get_gui("DiffAdd", true),
    })
    utils.hi("NeogitDiffDeleteHighlight", {
      bg = hl.get_bg("DiffDelete", true) or bg_diff_context_hl:to_css(),
      fg = hl.get_fg("DiffDelete", true) or hl.get_fg("diffRemoved") or hl_fg_normal,
      gui = hl.get_gui("DiffDelete", true),
    })
  end

  vim.api.nvim_exec([[
    augroup neogit_config
      au!
      au FileType NeogitStatus setl nobl
      au FileType Neogit* setl nolist
      " au ColorScheme * call v:lua.Config.plugin.neogit.fix_hl()
      au FileType NeogitCommitView setl nobl
      au BufEnter,FileType NeogitCommitView set eventignore+=CursorMoved
      au BufLeave NeogitCommitView set eventignore-=CursorMoved
    augroup END
  ]], false)

  -- M.fix_hl()
  Config.plugin.neogit = M
end
