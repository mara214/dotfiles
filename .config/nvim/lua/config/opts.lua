-- General settings
vim.opt.autoindent = true
vim.opt.mouse = 'a'
vim.opt.backspace = { 'indent', 'eol', 'start' }
vim.opt.clipboard:append('unnamedplus')
vim.opt.signcolumn = 'yes'
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.laststatus = 2
vim.opt.encoding = 'utf-8'
vim.opt.list = true
vim.opt.listchars = { tab = '➞ ', extends = '›', precedes = '‹', nbsp = '·', trail = '·', space = '·' }
vim.opt.wildignore:append('*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*')
vim.opt.showmode = false
vim.opt.wrap = false
vim.opt.colorcolumn = '80'
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- Tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.expandtab = true

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Search
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.gdefault = true

-- Theme
vim.opt.syntax = 'on'
vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.cmd('colorscheme base16-nixos')
