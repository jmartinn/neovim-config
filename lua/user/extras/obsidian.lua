local M = {
  "epwalsh/obsidian.nvim",
  lazy = true,
  ft = { "markdown" },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}

function M.config()
  local home = os.getenv "HOME"
  require("obsidian").setup {
    workspaces = {
      {
        name = "personal",
        path = home .. "/Library/Mobile Documents/iCloud~md~obsidian/Documents/personal",
      },
    },
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },
    new_notes_location = "current_dir",
    log_level = vim.log.levels.INFO,
  }
end

return M
