return function()
  vim.fn.sign_define("DapBreakpoint", {
    text = "",
    texthl = "LspDiagnosticsSignError",
    linehl = "",
    numhl = "",
  })

  local dap = require "dap"
  -- dap.defaults.fallback.terminal_win_cmd = "50vsplit new"

  -- PHP
  dap.adapters.php = {
    type = "executable",
    command = "node",
    args = { "/home/marwan38/programs/vscode-php-debug/out/phpDebug.js" },
  }
  dap.configurations.php = {
    {
      name = "Listen for XDebug",
      type = "php",
      request = "launch",
      port = 9003,
      pathMappings = {
        ["/srv/archipro/www/marwan/"] = "${workspaceFolder}/",
      },
      stopOnEntry = false,
      ignore = {
        "**/silverstripe-cache/**/*.php",
        "**/vendor/**/*.php",
      },
      hostname = "0.0.0.0",
    },
    {
      name = "Launch currently open script",
      type = "php",
      request = "launch",
      -- program = "${file}",
      cwd = "${workspaceRoot}",
      port = 9003,
    },
  }

  require("dapui").setup {
    icons = { expanded = "▾", collapsed = "▸" },
    mappings = {
      -- Use a table to apply multiple mappings
      expand = { "<CR>", "<2-LeftMouse>" },
      open = "o",
      remove = "d",

      edit = "e",
      repl = "r",
    },
    sidebar = {
      -- You can change the order of elements in the sidebar
      elements = {
        -- Provide as ID strings or tables with "id" and "size" keys
        {
          id = "scopes",
          size = 0.25, -- Can be float or integer > 1
        },

        { id = "breakpoints", size = 0.25 },
        { id = "stacks", size = 0.25 },
        { id = "watches", size = 00.25 },
      },
      size = 40,

      position = "left", -- Can be "left", "right", "top", "bottom"
    },
    tray = {
      elements = { "repl" },
      size = 10,
      position = "bottom", -- Can be "left", "right", "top", "bottom"
    },
    floating = {
      max_height = nil, -- These can be integers or a float between 0 and 1.

      max_width = nil, -- Floats will be treated as percentage of your screen.
      mappings = {
        close = { "q", "<Esc>" },
      },
    },
    windows = { indent = 1 },
  }

  dap.adapters.node2 = {
    type = "executable",
    command = "node",
    args = { os.getenv "HOME" .. "/git/vscode-node-debug2/out/src/nodeDebug.js" },
  }
  dap.configurations.typescriptreact = {
    {
      name = "Launch",

      type = "node2",
      request = "launch",

      program = "${file}",
      cwd = vim.fn.getcwd(),
      sourceMaps = true,
      protocol = "inspector",
      console = "integratedTerminal",
    },
    {
      -- For this to work you need to make sure the node process is started with the `--inspect` flag.
      name = "Attach to process",
      type = "node2",
      request = "attach",
      processId = require("dap.utils").pick_process,
    },
    {
      name = "Jest watch current file",
      type = "node2",
      request = "launch",
      cwd = vim.fn.getcwd(),
      program = "${workspaceFolder}/node_modules/jest/bin/jest",
      args = {
        "${fileBasename}",
        "--verbose",

        "-i",
        "--no-cache",
        "--watchAll",
      },
      protocol = "inspector",
      console = "integratedTerminal",
      internalConsoleOptions = "neverOpen",
    },
  }
end
