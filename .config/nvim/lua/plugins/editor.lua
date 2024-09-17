return {
  {
    'preservim/nerdcommenter',
    config = function()
      vim.api.nvim_set_keymap('n', '<leader><leader>t', ':call nerdcommenter#Comment("n", "alignleft")<CR>', { noremap = true })
      vim.api.nvim_set_keymap('v', '<leader><leader>t', ':call nerdcommenter#Comment("x", "alignleft")<CR>', { noremap = true })
      vim.api.nvim_set_keymap('n', '<leader>t', ':call nerdcommenter#Comment("n", "toggle")<CR>', { noremap = true })
      vim.api.nvim_set_keymap('v', '<leader>t', ':call nerdcommenter#Comment("x", "toggle")<CR>', { noremap = true })
    end
  },
}
