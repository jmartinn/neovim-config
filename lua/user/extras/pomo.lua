local M = {
  "epwalsh/pomo.nvim",
  version = "*",
  lazy = true,
  cmd = { "TimerStart", "TimerRepeat" },
  dependencies = {
    "rcarriga/nvim-notify",
  },
}

return M
