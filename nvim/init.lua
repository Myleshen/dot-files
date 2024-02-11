-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("java").setup()

require("lualine").setup({
  options = {
    theme = "horizon",
  },
})

require("telescope").setup({
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      ".git",
      ".idea",
      ".vscode",
    },
  },
})
