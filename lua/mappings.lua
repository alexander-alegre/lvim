-- Map Tab to go to the next buffer in normal mode
lvim.keys.normal_mode["<Tab>"] = ":bnext<CR>"
-- Optionally, map Shift-Tab to go to the previous buffer
lvim.keys.normal_mode["<S-Tab>"] = ":bprevious<CR>"
