vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"

vim.wo.number = true
vim.wo.list = true

vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '▲',
      [vim.diagnostic.severity.WARN] = "▲",
      [vim.diagnostic.severity.HINT] = '▲',
      [vim.diagnostic.severity.INFO] = '▲',
    }
  },
  virtual_text = false,
})
