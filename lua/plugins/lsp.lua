return {
  'neovim/nvim-lspconfig',
  dependencies = {
    { 'williamboman/mason.nvim', config = true },
    'williamboman/mason-lspconfig.nvim',
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local mason_config = require("mason-lspconfig")

    mason_config.setup()

    mason_config.setup_handlers {
      function(server_name)
        require('lspconfig')[server_name].setup {
          capabilities = require("cmp_nvim_lsp").default_capabilities(),
        }
      end,
    }
  end
}
