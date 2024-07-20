local options = {
  encoding = "utf-8",
  fileencoding = "utf-8",
  cmdheight = 2,
  cursorline = true,
  number = true,
  termguicolors = true,
  winblend = 0,
  pumblend = 0,
  clipboard = "unnamedplus",
  expandtab = true,
  tabstop = 2,
  shiftwidth = 2,
  ambiwidth = 'single',
  listchars = { tab = "→\\ ", trail = ".", eol = "↲" }
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
