return {
  "kdheepak/lazygit.nvim",
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  -- optional for floating window border decoration
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  -- setting the keybinding for LazyGit with 'keys' is recommended in
  -- order to load the plugin when the command is run for the first time
  keys = {
    { "<LEADER>lg", "<CMD>LazyGit<CR>", desc = "Open lazy git" },
  },
  init = function()
    local lazy_git_config_file_path = vim.fn.expand("~/.config/nvim/lazygit/config.yml")
    vim.g.lazygit_use_custom_config_file_path = 1
    vim.g.lazygit_config_file_path = lazy_git_config_file_path
  end
}
