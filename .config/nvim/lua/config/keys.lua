vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n', '<leader>i', ':ToggleRustHints<CR>', { noremap = true })


vim.api.nvim_set_keymap('n', '<C-p>', ':Commands<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-f>', ':Files<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-b>', ':Buffers<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-g>', ':Commits<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>qf', '<Plug>(coc-fix-current)', {})
vim.api.nvim_set_keymap('n', '<leader>rn', '<Plug>(coc-rename)', {})
vim.api.nvim_set_keymap('x', '<leader>f', '<Plug>(coc-format-selected)', {})
vim.api.nvim_set_keymap('n', '<leader>f', '<Plug>(coc-format-selected)', {})

-- Searching / replacing
vim.api.nvim_set_keymap('n', '<leader>h', ':nohlsearch<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>h', ':nohlsearch<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>r', ':s///g<Left><Left>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>rc', ':s///gc<Left><Left><Left>', { noremap = true })
vim.api.nvim_set_keymap('x', '<leader>r', ':s///g<Left><Left>', { noremap = true })
vim.api.nvim_set_keymap('x', '<leader>rc', ':s///gc<Left><Left><Left>', { noremap = true })

vim.api.nvim_set_keymap('n', '*', [[ :let @/='\<'.expand('<cword>').'\>'<CR>cgn ]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '*', [[ "sy:let @/=@s<CR>cgn ]], { noremap = true, silent = true })

-- Splits / windows
vim.api.nvim_set_keymap('n', '<C-c>', ':wincmd q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

vim.api.nvim_set_keymap('n', '<C-w>,', ':new<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-w>.', ':vnew<CR>', { noremap = true })

-- Files
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true })

-- Tabs
vim.api.nvim_set_keymap('n', '.1', '1gt', { noremap = true })
vim.api.nvim_set_keymap('n', '.2', '2gt', { noremap = true })
vim.api.nvim_set_keymap('n', '.3', '3gt', { noremap = true })
vim.api.nvim_set_keymap('n', '.4', '4gt', { noremap = true })
vim.api.nvim_set_keymap('n', '.5', '5gt', { noremap = true })
vim.api.nvim_set_keymap('n', '.6', '6gt', { noremap = true })
vim.api.nvim_set_keymap('n', '.7', '7gt', { noremap = true })
vim.api.nvim_set_keymap('n', '.8', '8gt', { noremap = true })
vim.api.nvim_set_keymap('n', '.9', '9gt', { noremap = true })
vim.api.nvim_set_keymap('n', '.0', ':tablast<CR>', { noremap = true })

vim.api.nvim_exec([[
    au TabLeave * let g:lasttab = tabpagenr()
]], false)

vim.api.nvim_set_keymap('n', '.-', ':exe "tabn ".g:lasttab<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '.x', 'gt', { noremap = true })
vim.api.nvim_set_keymap('n', '.y', 'gT', { noremap = true })

-- Editing
vim.api.nvim_set_keymap('n', 'Q', 'gqq', { noremap = true })

vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true })

vim.api.nvim_set_keymap('n', '<A-j>', ':m +1<CR>', { noremap = true })
vim.api.nvim_set_keymap('v', '<A-j>', ':m \'>+1<CR>gv=gv', { noremap = true })
vim.api.nvim_set_keymap('i', '<A-j>', '<Esc>:m +1<CR>==gi', { noremap = true })

vim.api.nvim_set_keymap('n', '<A-k>', ':m -2<CR>', { noremap = true })
vim.api.nvim_set_keymap('v', '<A-k>', ':m \'<-2<CR>gv=gv', { noremap = true })
vim.api.nvim_set_keymap('i', '<A-k>', '<Esc>:m -2<CR>==gi', { noremap = true })

-- Term mode
vim.api.nvim_set_keymap('t', '<C-h>', '<C-\\><C-n><C-w>h', { noremap = true })
vim.api.nvim_set_keymap('t', '<C-j>', '<C-\\><C-n><C-w>j', { noremap = true })
vim.api.nvim_set_keymap('t', '<C-k>', '<C-\\><C-n><C-w>k', { noremap = true })
vim.api.nvim_set_keymap('t', '<C-l>', '<C-\\><C-n><C-w>l', { noremap = true })

-- Commands
--vim.api.nvim_create_user_command('EditConfig', ':e $MYVIMRC', {})
--vim.api.nvim_create_user_command('ReloadConfig', ':so $MYVIMRC', {})

--vim.api.nvim_create_user_command('Fmt', [[ :call CocAction('format') ]], {})
--vim.api.nvim_create_user_command('OrganizeImports', [[ :call CocAction('runCommand', 'editor.action.organizeImport') ]], {})
--vim.api.nvim_create_user_command('Toggle')
