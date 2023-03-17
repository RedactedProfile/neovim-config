require("kharrison.remap")

vim.opt.shell = os.getenv("SHELL")
vim.opt.syntax = "on"
vim.opt.ruler = true
vim.opt.relativenumber = true
vim.opt.number = true

--vim.cmd([[colorscheme predawn]])
--vim.cmd([[colorscheme gruvbox]])
vim.opt.background = "dark"

-- Encoding
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.fileencodings = "utf-8"
vim.opt.bomb = true
vim.opt.binary = true

-- Use modeline overrides
vim.opt.modeline = true
vim.opt.modelines = 10

vim.opt.title = true
vim.opt.titleold = "Terminal"
vim.opt.titlestring = "%F"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"



local trwin = vim.api.nvim_get_current_win()
local trbuf = vim.api.nvim_create_buf(true, true)
vim.cmd('split')
local bwin = vim.api.nvim_get_current_win()
-- vim.cmd('term')
-- local bbuf = vim.api.nvim_create_buf(true, true)
vim.api.nvim_win_set_buf(trwin, trbuf)
