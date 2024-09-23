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
