return {
  {
    'lambdalisue/fern.vim',
    config = function()
      vim.g['fern#opener'] = 'edit'
      vim.g['fern#default_hidden'] = 1
      vim.g['fern#default_exclude'] = '.git/'
      vim.g['fern#drawer_width'] = 40
      vim.g['fern#disable_default_mappings'] = 1
      --vim.api.nvim_create_user_command('FernToggle', ':Fern .', {})
      vim.api.nvim_set_keymap('n', '<C-e>', ':Fern . -drawer -keep -toggle<CR>', { noremap = true })
    end
  },
  {
    'lambdalisue/fern-git-status.vim',
    config = function()
    end
  },
  { 'rainglow/vim' },
  { 'nvim-lua/popup.nvim' },
  { 'nvim-lua/plenary.nvim' },
  {
    'nvim-telescope/telescope.nvim',
    config = function()
      require('telescope').setup({
        defaults = {
          initial_mode = "insert",
          layout_strategy = "vertical",
          file_sorter =  require'telescope.sorters'.get_fzy_sorter,
          mappings = {
            i = {
              ["<esc>"] = require('telescope.actions').close
            },
          },
        },
        pickers = {
          buffers = {
            sort_lastused = true
          },
        },
      })
    end
  }
}
