-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- VS Code風デバッグキーマップ
local dap = require("dap")

-- F5: デバッグ開始/続行
vim.keymap.set("n", "<F5>", function()
  dap.continue()
end, { desc = "Debug: Start/Continue" })

-- F9: ブレークポイントのトグル
vim.keymap.set("n", "<F9>", function()
  dap.toggle_breakpoint()
end, { desc = "Debug: Toggle Breakpoint" })

-- F10: ステップオーバー
vim.keymap.set("n", "<F10>", function()
  dap.step_over()
end, { desc = "Debug: Step Over" })

-- F11: ステップイン
vim.keymap.set("n", "<F11>", function()
  dap.step_into()
end, { desc = "Debug: Step Into" })

-- Shift+F11: ステップアウト
vim.keymap.set("n", "<S-F11>", function()
  dap.step_out()
end, { desc = "Debug: Step Out" })

-- Shift+F5: デバッグ停止
vim.keymap.set("n", "<S-F5>", function()
  dap.terminate()
end, { desc = "Debug: Stop" })

-- Ctrl+Shift+F5: 再起動
vim.keymap.set("n", "<C-S-F5>", function()
  dap.restart()
end, { desc = "Debug: Restart" })
