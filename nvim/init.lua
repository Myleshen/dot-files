-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lualine").setup({
  options = {
    theme = "horizon",
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

-- require("catppuccin").setup({
--   vim.cmd.colorscheme("catppuccin-mocha"),
-- })

function TransparentBg(color)
  color = color or "tokyonight"
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
end

TransparentBg("catppuccin-mocha")
