-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

    ---- syntax
    --"rust-lang/rust.vim",
    ---- use 'mrcjkb/rustaceanvim'
    ----use 'ron-rs/ron.vim'
    ----use 'dense-analysis/ale'

    ---- ui
    --"lambdalisue/fern.vim",
    --"lambdalisue/fern-git-status.vim",
    --"lambdalisue/fern-mapping-git.vim",
    --"rainglow/vim",
    --"preservim/nerdcommenter",
    --"nvim-lua/popup.nvim",
    --"nvim-lua/plenary.nvim",
    --"nvim-telescope/telescope.nvim",

    ---- ux
    ----use 'neoclide/coc.nvim' ({ 'branch': 'release' }
    --"bronson/vim-visual-star-search",
    ----use 'junegunn/goyo.vim'
    ---- Plug 'github/copilot.vim'

    ---- customization
    --"chriskempson/base16-vim",
    --"savq/melange-nvim",
    --"itchyny/lightline.vim",
    --"maximbaz/lightline-ale",
    -- LaTeX
    --"lervag/vimtex"

-- Setup lazy.nvim
require("lazy").setup({
  spec = { import = "plugins" },
  checker = { enabled = true },
})

require('config.keys')
require('config.opts')
