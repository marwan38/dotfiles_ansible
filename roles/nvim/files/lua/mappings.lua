local ok, err = pcall(require, "which-key")
if not ok then
  return
end

local wk = require "which-key"

wk.register {
  ["<leader>d"] = {
    name = "Debug",
    t = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
    b = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
    c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },

    C = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run To Cursor" },
    d = { "<cmd>lua require'dap'.disconnect()<cr>", "Disconnect" },
    g = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
    i = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
    o = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
    u = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
    U = { "<cmd>lua require'dapui'.toggle()<cr>", "UI Toggle" },
    p = { "<cmd>lua require'dap'.pause.toggle()<cr>", "Pause" },
    r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },

    s = { "<cmd>lua require'dap'.continue()<cr>", "Start" },
    q = { "<cmd>lua require'dap'.close()<cr>", "Quit" },
  },
}

wk.register({
  ["<leader>t"] = {
    name = "+Testing",
    n = { "<cmd>TestNearest<cr>", "Test nearest" },
    f = { "<cmd>TestFile<cr>", "Test file" },
    l = { "<cmd>TestLast<cr>", "Test Last" },
  },
}, {
  mode = "n",
})
