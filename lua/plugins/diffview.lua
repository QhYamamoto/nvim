return {
  "sindrets/diffview.nvim",
  config = function()
    local keymap = vim.keymap

    keymap.set("n", "<leader>gdo", "<cmd>:DiffviewOpen<CR>", { desc = "Open diff view (HEAD~1..HEAD)" })
    keymap.set("n", "<leader>gdc", "<cmd>:DiffviewClose<CR>", { desc = "Close diff view" })

    local function get_git_rev_from_clipboard()
      local rev = vim.fn.getreg('+') -- get string from clipboard
      if rev:match('^[0-9a-fA-F]+$') then
        return rev
      else
        return nil
      end
    end

    function DiffViewOpenWithGitRev()
      local rev = get_git_rev_from_clipboard()
      if rev then
        local cmd = ':DiffviewOpen ' .. rev .. '~1..' .. rev
        print(rev)
        vim.cmd(cmd)
      else
        print("Invalid HashID on clipboard.")
      end
    end

    keymap.set(
      'n',
      '<Leader>gdr',
      '<cmd>lua DiffViewOpenWithGitRev()<CR>',
      { desc = "Open diff view ({HashId on clipboard}~1..{HashID on clipboard})", noremap = true, silent = true }
    )
  end,
}
