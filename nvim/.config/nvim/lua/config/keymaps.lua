-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Enter normalmode from terminal mode" })

vim.api.nvim_create_user_command("Termhere", function()
  local dir = vim.fn.expand("%:p:h")
  vim.cmd("botright split | lcd " .. dir .. " | terminal")
  vim.cmd("startinsert") -- automatically puts you in insert mode
end, { desc = "Open terminal in current file's directory" })
