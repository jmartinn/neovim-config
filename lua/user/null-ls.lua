local M = {
  "nvimtools/none-ls.nvim",
}

function M.config()
  local null_ls = require "null-ls"

  local formatting = null_ls.builtins.formatting
  null_ls.setup {
    debug = true,
    sources = {
      formatting.stylua,
      formatting.prettier.with {
        filetypes = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "vue",
          "css",
          "scss",
          "less",
          "html",
          "json",
          "jsonc",
          "yaml",
          "graphql",
          "handlebars",
        },
      },
      formatting.black.with { extra_args = { "--fast" } },
      null_ls.builtins.completion.spell,
    },
  }
end

return M
