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

-- Optional, you don't have to run setup.
require("transparent").setup({
  -- table: default groups
  groups = {
    "Normal",
    "NormalNC",
    "Comment",
    "Constant",
    "Special",
    "Identifier",
    "Statement",
    "PreProc",
    "Type",
    "Underlined",
    "Todo",
    "String",
    "Function",
    "Conditional",
    "Repeat",
    "Operator",
    "Structure",
    "LineNr",
    "NonText",
    "SignColumn",
    "CursorLine",
    "CursorLineNr",
    "StatusLine",
    "StatusLineNC",
    "EndOfBuffer",
  },
  -- table: additional groups that should be cleared
  extra_groups = {
    "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
    "NvimTreeNormal", -- NvimTree
  },
  -- table: groups you don't want to clear
  exclude_groups = {},
  -- function: code to be executed after highlight groups are cleared
  -- Also the user event "TransparentClear" will be triggered
  on_clear = function() end,
})

require("transparent").clear_prefix("NeoTree")
require("transparent").clear_prefix("lualine")
require("transparent").clear_prefix("WhichKey")
