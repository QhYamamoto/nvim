return {
  "akinsho/git-conflict.nvim",
  version = "*",
  config = function()
    local git_conflict = require("git-conflict");

    git_conflict.setup({
      default_mappings = {
        next = { "[", "x" },
        prev = { "]", "x" },
      },
    })
  end,
}
