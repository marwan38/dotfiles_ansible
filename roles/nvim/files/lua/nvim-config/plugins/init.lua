local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
end

local function conf(config_name)
  return require(string.format("nvim-config.plugins.%s", config_name))
end

-- Stop loading built in plugins
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_gzip = 1
vim.cmd [[
let g:matchparen_timeout = 2
let g:matchparen_insert_timeout = 2
]]

-- require("packer").init({
-- 	max_jobs = 50
-- })

return require("packer").startup {
  ---@diagnostic disable-next-line: unused-local
  function(use, use_rocks)
    use "wbthomason/packer.nvim"
    use { "nvim-lua/popup.nvim" }
    use { "nvim-lua/plenary.nvim" }

    -- SYNTAX
    use { "plasticboy/vim-markdown", ft = "md" }
    use { "MTDL9/vim-log-highlighting", ft = "log" }
    use {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("todo-comments").setup {}
      end,
    }

    -- BEHAVIOUR
    use {
      "antoinemadec/FixCursorHold.nvim",
      setup = function()
        vim.g.cursorhold_updatetime = 250
      end,
    }
    use { "kyazdani42/nvim-web-devicons", config = conf "nvim-web-devicons" }
    use {
      "nvim-treesitter/nvim-treesitter",
      config = conf "treesitter",
      requires = {
        "nvim-treesitter/nvim-treesitter-textobjects",
        "JoosepAlviste/nvim-ts-context-commentstring",
        "windwp/nvim-ts-autotag",
        {
          "p00f/nvim-ts-rainbow",
          config = conf "nvim-ts-rainbow",
        },
        "nvim-treesitter/playground",
      },
    }
    use { "neovim/nvim-lspconfig" }
    use { "jose-elias-alvarez/null-ls.nvim" }
    use { "jose-elias-alvarez/nvim-lsp-ts-utils" }
    use "simrat39/rust-tools.nvim"
    use { "onsails/lspkind-nvim" }
    use {
      "ray-x/lsp_signature.nvim",
      config = function()
        require("lsp_signature").setup {
          hint_enable = false,
          hint_prefix = "● ",
          max_width = 80,
          max_height = 12,
          handler_opts = {
            border = "single",
          },
        }
      end,
    }

    use { "mfussenegger/nvim-dap", config = conf "dap" }
    use { "rcarriga/nvim-dap-ui", requires = "nvim-dap" }

    use {
      "hrsh7th/nvim-cmp",
      requires = {
        { "hrsh7th/cmp-nvim-lsp" },
        { "f3fora/cmp-spell" },
        { "hrsh7th/cmp-path" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-cmdline" },
      },
      after = { "nvim-autopairs", "friendly-snippets" },
      config = conf "nvim-cmp",
    }
    use {
      "hrsh7th/cmp-vsnip",
      after = "nvim-cmp",
      requires = {
        {
          "hrsh7th/vim-vsnip",
          requires = {
            { "hrsh7th/vim-vsnip-integ", after = "vim-vsnip" },
            { "rafamadriz/friendly-snippets", after = "vim-vsnip" },
          },
        },
      },
    }

    use {
      "tamago324/lir.nvim",
      requires = { "tamago324/lir-git-status.nvim" },
      config = conf "lir",
      after = "nvim-web-devicons",
    }
    use {
      "https://gitlab.com/yorickpeterse/nvim-pqf.git",
      config = function()
        require("pqf").setup {
          signs = {
            error = "",
            warning = "",
            info = "",
            hint = "",
          },
        }
      end,
    }
    use { "windwp/nvim-autopairs", config = conf "nvim-autopairs" }
    use { "norcalli/nvim-colorizer.lua", config = conf "nvim-colorizer", event = "BufRead" }
    use {
      "numToStr/Comment.nvim",
      config = function()
        require("Comment").setup {
          ---@param ctx Ctx
          pre_hook = function(ctx)
            -- Only calculate commentstring for tsx filetypes
            if vim.bo.filetype == "typescriptreact" then
              local U = require "Comment.utils"

              -- Detemine whether to use linewise or blockwise commentstring
              local type = ctx.ctype == U.ctype.line and "__default" or "__multiline"

              -- Determine the location where to calculate commentstring from
              local location = nil
              if ctx.ctype == U.ctype.block then
                location = require("ts_context_commentstring.utils").get_cursor_location()
              elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
                location = require("ts_context_commentstring.utils").get_visual_start_location()
              end

              return require("ts_context_commentstring.internal").calculate_commentstring {
                key = type,
                location = location,
              }
            end
          end,
        }
      end,
    }
    use { "nvim-telescope/telescope.nvim", config = conf "telescope", after = "nvim-web-devicons" }
    use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
    use { "nvim-telescope/telescope-media-files.nvim" }
    use { "akinsho/nvim-bufferline.lua", config = conf "nvim-bufferline", after = "nvim-web-devicons" }
    use {
      "karb94/neoscroll.nvim",
      config = conf "neoscroll",
      cond = vim.g.neovide or vim.g.nvui,
    }
    use { "windwp/nvim-spectre", config = conf "spectre", after = "nvim-web-devicons" }
    use {
      "mattn/emmet-vim",
      setup = function()
        vim.g.user_emmet_leader_key = "<C-Z>"
      end,
    }
    use { "tpope/vim-abolish" }
    use { "tpope/vim-unimpaired" }
    use { "tpope/vim-surround" }
    use {
      "phaazon/hop.nvim",
      config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        require("hop").setup {}
      end,
    }

    use { "godlygeek/tabular" }
    use { "tweekmonster/startuptime.vim" }
    use {
      "RRethy/vim-illuminate",
      setup = function()
        vim.g.Illuminate_delay = 250
        vim.g.Illuminate_highlightUnderCursor = 1
        vim.g.Illuminate_ftblacklist = {
          "qf",
          "dashboard",
          "packer",
          "TelescopePrompt",
          "NvimTree",
          "Trouble",
          "DiffviewFiles",
          "DiffviewFileHistory",
          "Outline",
          "lir",
        }
      end,
    }
    use {
      "folke/which-key.nvim",
      config = function()
        require("which-key").setup()
      end,
    }

    use {
      "vim-test/vim-test",
      setup = function()
        vim.cmd [[
            let test#strategy = "vimux"
            let test#php#phpunit#executable = './vendor/bin/phpunit'
        ]]
      end,
      requires = {
        "preservim/vimux",
      },
    }

    -- MISC
    use { "feline-nvim/feline.nvim", config = conf "feline" }
    use {
      "lewis6991/gitsigns.nvim",
      config = conf "gitsigns",
      requires = {
        "nvim-lua/plenary.nvim",
      },
    }
    use { "lukas-reineke/indent-blankline.nvim", config = conf "indent-blankline", event = "BufRead" }
    use { "folke/lsp-trouble.nvim", config = conf "lsp-trouble", after = "nvim-web-devicons" }
    use { "sindrets/diffview.nvim", config = conf "diffview", after = "nvim-web-devicons" }
    use { "sindrets/winshift.nvim", config = conf "winshift" }
    use { "simrat39/symbols-outline.nvim", setup = conf "symbols-outline" }
    use { "tpope/vim-fugitive" }
    -- use {
    --   'rhysd/conflict-marker.vim',
    --   setup = function ()
    --     vim.g.conflict_marker_begin = '^<<<<<<< .*$'
    --     vim.g.conflict_marker_common_ancestors = '^||||||| .*$'
    --     vim.g.conflict_marker_separator = '^=======$'
    --     vim.g.conflict_marker_end   = '^>>>>>>> .*$'
    --     vim.g.conflict_marker_highlight_group = ''
    --     vim.api.nvim_exec([[
    --       hi! link ConflictMarkerBegin DiffAdd
    --       hi! link ConflictMarkerOurs DiffAdd
    --       hi! link ConflictMarkerCommonAncestors DiffText
    --       hi! link ConflictMarkerCommonAncestorsHunk DiffText
    --       hi! link ConflictMarkerSeparator DiffText
    --       hi! link ConflictMarkerTheirs DiffChange
    --       hi! link ConflictMarkerEnd DiffText
    --     ]], false)
    --   end
    -- }
    use { "glepnir/dashboard-nvim", setup = conf "dashboard" }
    use { "ryanoasis/vim-devicons" }
    use {
      "iamcco/markdown-preview.nvim",
      run = "cd app && yarn install",
      setup = function()
        vim.api.nvim_exec(
          [[
function! MkdpOpenInNewWindow(url)
lua require'nvim-config.lib'.mkdp_open_in_new_window(vim.fn.eval("a:url"))
endfunction
]],
          false
        )
        vim.g.mkdp_browserfunc = "MkdpOpenInNewWindow"
      end,
    }
    use {
      "vimwiki/vimwiki",
      branch = "dev",
    }
    use { "lambdalisue/suda.vim" }

    -- THEMES
    -- use { "rktjmp/lush.nvim" }
    -- use { "rakr/vim-one" }
    -- use { "ayu-theme/ayu-vim" }
    -- use { "phanviet/vim-monokai-pro" }
    -- use { "tomasiser/vim-code-dark" }
    -- use { "w0ng/vim-hybrid" }
    -- use { "nanotech/jellybeans.vim" }
    -- use { "cocopon/iceberg.vim" }
    -- use { "junegunn/seoul256.vim" }
    -- use { "arzg/vim-colors-xcode" }
    -- use { "haishanh/night-owl.vim" }
    -- use { "KeitaNakamura/neodark.vim" }
    -- use { "dim13/smyck.vim" }
    -- use { "barlog-m/oceanic-primal-vim", branch = "main" }
    -- use { "jacoborus/tender.vim" }
    -- use { "ntk148v/vim-horizon" }
    -- use { "ajh17/Spacegray.vim" }
    -- use { "sainnhe/gruvbox-material" }
    -- use { "gruvbox-community/gruvbox" }
    -- use { "kjssad/quantum.vim" }
    -- use { "juanedi/predawn.vim" }
    -- use { "glepnir/zephyr-nvim" }
    -- use { "folke/tokyonight.nvim" }
    -- use { "Mofiqul/dracula.nvim" }
    -- use { "sindrets/material.nvim" }
    -- use { "sindrets/rose-pine-neovim", as = "rose-pine" }
    -- use { "mcchrish/zenbones.nvim", requires = "rktjmp/lush.nvim" }
    -- use { "sainnhe/everforest" }
    -- use { "Cybolic/palenight.vim" }
    -- use { "olimorris/onedarkpro.nvim", branch = "main" }
    -- use { "RRethy/nvim-base16" }
    -- use { "NTBBloodbath/doom-one.nvim" }
    use { "catppuccin/nvim", as = "catppuccin" }
  end,
  -- config = {
  --   profile = {
  --     enable = true,
  --     threshold = 1,
  --   },
  -- },
}
