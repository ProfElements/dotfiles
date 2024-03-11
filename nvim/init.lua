-- Space as leader key
vim.g.mapleader = ' '
vim.g.localleader = ' '

-- I don't got any nerd fonts
vim.g.have_nerd_font = true

-- Options
require 'options'

-- Keymaps
require 'keymaps'

-- You lazy.nvim, pull yourself up by your bootstraps
require 'lazy-bootstrap'

-- Plugin setup
require 'lazy-plugins'

-- vim: ts=2 sts=2 sw=2 et
