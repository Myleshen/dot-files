-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lualine").setup({
  options = {
    theme = "horizon",
  },
})

<<<<<<< HEAD
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

require("toggleterm").setup({
  size = function(term)
    if term.direction == "horizontal" then
      return 20
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  autochdir = true,
  shade_terminals = true,
  start_in_insert = true,
  persist_size = true,
  close_on_exit = true,
  auto_scroll = true,
  direction = "horizontal",
})
=======
>>>>>>> a09f597 (Update nvim config)
