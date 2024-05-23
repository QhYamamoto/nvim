return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
    "nvim-telescope/telescope-project.nvim",
    "ThePrimeagen/harpoon"
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    local project_actions = require("telescope._extensions.project.actions")
    telescope.setup({
      extensions = {
        project = {
          base_dirs = {
            "~/dev/toppan-kumagaya",
            "~/dev/integritis"
          },
          theme = "dropdown",
          order_by = "asc",
          search_by = "title",
          sync_with_nvim_tree = true,
          on_project_selected = function(prompt_bufnr)
            project_actions.change_working_directory(prompt_bufnr)
            vim.cmd("SessionRestore")
            require("harpoon.ui").nav_file(1)
          end
        }
      },
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
          },
        },
      }
    })

    telescope.load_extension("fzf")
    telescope.load_extension("project")

    local keymap = vim.keymap

    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope resume<CR>", { desc = "Fuzzy find with cache" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", { desc = "Find string under cursor in cwd" })
    keymap.set("n", "<leader>fp", "<cmd>Telescope project<CR>", { desc = "Find project" })
    keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find todos" })
  end
}
