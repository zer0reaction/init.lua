-- Numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Indent
vim.opt.smartindent = true

-- Wrap
vim.opt.wrap = true
vim.opt.linebreak = true

-- Undo stuff
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Colors
vim.opt.termguicolors = true

-- Column
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- Clipboard
-- vim.opt.clipboard = "unnamedplus"

-- Misc
vim.opt.updatetime = 50
vim.opt.isfname:append("@-@")
vim.opt.mouse=""
vim.opt.list=true
vim.opt.guicursor=""
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
