return function()
  local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

  -- These two are optional and provide syntax highlighting
  -- for Neorg tables and the @document.meta tag
  parser_configs.norg_meta = {
      install_info = {
          url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
          files = { "src/parser.c" },
          branch = "main"
      },
  }

  parser_configs.norg_table = {
      install_info = {
          url = "https://github.com/nvim-neorg/tree-sitter-norg-table",

          files = { "src/parser.c" },
          branch = "main"
      },
  }

  require("nvim-treesitter.configs").setup {
    ensure_installed = {
      "bash",
      "css",
      "dockerfile",
      "graphql",
      "html",
      "javascript",
      "jsdoc",
      "json",
      "json5",
      "lua",
      "php",
      "phpdoc",
      "regex",
      "rust",
      "scss",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "yaml",
      "norg",
      "norg_meta",
      "norg_table"
    }, -- one of "all", "maintained", or a list of languages
    indent = {
      enable = true,
    },
    highlight = {
      enable = true, -- false will disable the whole extension
      additional_vim_regex_highlighting = false,
      disable = function(lang, bufnr) -- Disable in large buffers
        return lang == "vim" or vim.api.nvim_buf_line_count(bufnr) > 10000
      end,
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
    autotag = {
      enable = true,
    },
    textobjects = {
      select = {
        enable = true,

        -- Automatically jump forward to textobj, similar to targets.vim
        lookahead = true,

        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ia"] = "@parameter.inner",
          ["aa"] = "@parameter.outer",
        },
      },
      swap = {
        enable = true,
        swap_next = {
          ["<leader>a"] = "@parameter.inner",
        },
        swap_previous = {
          ["<leader>A"] = "@parameter.inner",
        },
      },
      context_commentstring = {
        enable = true,
      },
    },
  }
end
