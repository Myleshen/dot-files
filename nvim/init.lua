-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lualine").setup({
  options = {
    theme = "tokyonight",
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
