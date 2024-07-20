local opts = { noremap = true, silent = true }

--local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<C-h>", ":NvimTreeFocus<cr>", opts)

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, opts)
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, opts)
vim.keymap.set("n", "<leader>h", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "<C-b>", vim.lsp.buf.references, opts)
