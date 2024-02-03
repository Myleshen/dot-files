-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- require("java").setup()

-- require("lspconfig").jdtls.setup({})

require("lualine").setup({
  options = {
    theme = "horizon",
  },
})
