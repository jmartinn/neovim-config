local M = {
  "epwalsh/obsidian.nvim",
  lazy = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}

function M.config()
  require("obsidian").setup {
    ft = "markdown",
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "/Users/jmartin/Library/Mobile Documents/iCloud~md~obsidian/Documents/personal",
        },
      },
      completion = {
        nvim_cmp = true,

        min_chars = 2,
      },
      new_notes_location = "current_dir",
      prepend_note_id = true,
      prepend_note_path = false,
      use_path_only = false,
    },
  }
end

return M
