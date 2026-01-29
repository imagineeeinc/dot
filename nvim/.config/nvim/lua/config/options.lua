-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.wrap = false
opt.number = true
opt.relativenumber = false
vim.g.autoformat = false

-- Windows
if vim.loop.os_uname().sysname == "Windows_NT" then
  -- Enable powershell as your default shell
  vim.opt.shell = "pwsh.exe -NoLogo"
  vim.opt.shellcmdflag =
    "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
  vim.cmd([[
      let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
      let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
      set shellquote= shellxquote=
    ]])

  -- Set a compatible clipboard manager
  vim.g.clipboard = {
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
  }
  -- Set tree width 25
else
  -- Set tree 20
end

-- Nvide
if vim.g.neovide == true then
  vim.g.neovide_scale_factor = 0.8
  vim.o.guifont = "SpaceMono Nerd Font Regular,Space Mono Regular"
  vim.g.neovide_transparency = 0.8
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_cursor_smooth_blink = true
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  vim.g.neovide_cursor_vfx_particle_density = 80.0
end

-- nvim-qt
if vim.fn.exists(":GuiScrollBar") == 2 then
    vim.cmd("GuiScrollBar 1")
end
