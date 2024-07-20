return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    transparent = true,
    styles = {
      comments = { italic = true },
      keywords = { italic = true },
      sidebars = "transparent",
      floats = "transparent"
    },
  },
  config = function()
    vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')
  end,
}
