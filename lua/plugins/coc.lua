return {
  "neoclide/coc.nvim",
  branch = "release",
  config = function()
    function _G.check_back_space()
      local col = vim.fn.col('.') - 1
      return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
    end

    -- key bind
    vim.o.hidden = true
    vim.api.nvim_set_keymap('x', '<leader>f', "<Plug>(coc-format-selected)", { noremap = false })

    local keymap = vim.keymap
    local opts = { noremap = true, silent = true }

    -- <leader>d で定義元へジャンプ
    keymap.set('n', '<M-right>', '<Plug>(coc-definition)', opts)
    keymap.set('n', '<M-left>', '<C-o>', opts)

    -- <leader>h でドキュメント表示
    keymap.set('n', '<leader>gh', ':call CocAction("doHover")<CR>', opts)


    local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
    keymap.set("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()',
      opts)
    keymap.set("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

    -- Make <CR> to accept selected completion item or notify coc.nvim to format
    -- <C-g>u breaks current undo, please make your own choice
    keymap.set("i", "<C-n>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-n>"]], opts)
    -- keymap.set('i', '`', function()
    --   return vim.fn['coc#pum#next'](1)
    -- end, opts)
    -- keymap.set("i", "<Tab>",
    --   function()
    --     if vim.fn['coc#pum#visible']() then
    --       return vim.fn['coc#pum#next'](1)
    --     end
    --     if check_back_space() then
    --       return vim.fn['coc#refresh']()
    --     end
    --     return "<Tab>"
    --   end
    --   , { noremap = true, expr = true })
    -- keymap.set("i", "<S-Tab>", function()
    --   if vim.fn['coc#pum#visible']() then
    --     return vim.fn['coc#pum#prev'](1)
    --   end
    --   return "<S-Tab>"
    -- end, opts)
    -- keymap.set("i", "<CR>", function()
    --   if vim.fn['coc#pum#visible']() then
    --     return vim.fn['coc#pum#confirm']();
    --   end
    --   return "\r"
    -- end, opts)
    -- color highlight
    vim.api.nvim_set_hl(0, "@parameter", { fg = 0x306b72 });
    vim.api.nvim_set_hl(0, "@type", { fg = 0x729de3 });
    vim.api.nvim_set_hl(0, "@function", { fg = 0xe5b124 });
    vim.api.nvim_set_hl(0, "@variable", { fg = 0x26cdca });
    vim.api.nvim_set_hl(0, "CocSemComment", { fg = 0x505050 });
    vim.api.nvim_set_hl(0, "CocSemClass", { fg = 0x729de3, bold = true });
    vim.api.nvim_set_hl(0, "CocSemEnum", { fg = 0x397797, bold = true });
    vim.api.nvim_set_hl(0, "CocSemEnumMember", { fg = 0x397797, bold = true });
    vim.api.nvim_set_hl(0, "CocSemStruct", { fg = 0x729de3 });
    vim.api.nvim_set_hl(0, "CocSemMethod", { fg = 0xe5b124, underline = true });
    vim.api.nvim_set_hl(0, "CocSemProperty", { fg = 0x7ca6b7, underline = true });
    vim.api.nvim_set_hl(0, "CocSemMacro", { fg = 0x8f5daf, bold = true });
    vim.api.nvim_set_hl(0, "CocSemNamespace", { fg = 0x00d780, bold = true });
    -- color for language server
    vim.api.nvim_set_hl(0, "CocSemDeprecated", { strikethrough = true });
    vim.api.nvim_set_hl(0, "CocUnusedHighlight", { strikethrough = true });
  end,
  opt = true,
  event = "BufEnter"
}
