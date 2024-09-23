require("zer0.remap")
require("zer0.set")
require("zer0.lazy_init")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- keymap switching 
local keymaps = {"", "russian-jcukenwin"}
local current_keymap = 1

local function next_keymap() 
    if current_keymap < #keymaps then
        current_keymap = current_keymap + 1
    elseif current_keymap == #keymaps then
        current_keymap = 1
    end

    vim.opt.keymap = keymaps[current_keymap]

    if keymaps[current_keymap] == "" then
        print("Keymap switched to default")
    else
        print("Keymap switched to " .. keymaps[current_keymap])
    end
end 

vim.keymap.set("n", "<leader>k", function() next_keymap() end)
