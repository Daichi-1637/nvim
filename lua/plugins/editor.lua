return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    opts = {
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        adaptive_size = true,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
      },
      on_attach = function(bufnr)
        local api = require "nvim-tree.api"

        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- default mappings
        api.config.mappings.default_on_attach(bufnr)

        -- custom mappings
        vim.keymap.set('n', '<C-k>', api.tree.change_root_to_parent, opts('Up'))
        vim.keymap.set('n', 'l', api.tree.expand_all, opts('Expand All'))
        vim.keymap.set('n', 'l', api.node.open.edit, opts('Open'))
        vim.keymap.set('n', '<C-l>', '<C-O>', { silent = true, nowait = true })
        vim.keymap.set('n', '<CR>', api.tree.change_root_to_node, opts('CD'))
        vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts('Close Directory'))
      end
    },
  },
}
