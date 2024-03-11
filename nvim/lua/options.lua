-- Set numbers on side and make them relative
vim.opt.number = true
vim.opt.relativenumber = true

-- Disable use of mouse
vim.opt.mouse = ""

-- Hide mode state. 
vim.opt.showmode = false

-- Combine system and vim clipboard
vim.opt.clipboard = "unnamedplus"

-- Make wrapped lines match indentation
vim.opt.breakindent = true

-- Make a seperate undo file set save undo history
vim.opt.undofile = true

-- Make '?' search a little more fuzzy
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- I don't care for "signcolumn"
vim.opt.signcolumn = "no"

-- Save faster 4Head
vim.opt.updatetime = 250
vim.opt.timeoutlen = 500

-- Show whitespaces (tab, space and crlf)
vim.opt.list = true

-- Show replacements live
vim.opt.inccommand = "split"

-- Highlight line that cursor sits on.
vim.opt.cursorline = true

-- Make sure I can see further down my text buffer
vim.opt.scrolloff = 15
