-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- enable spell check globally for English
vim.opt.spell = true

-- configuration
require("config.formatters")

-- custom mappings
require("mappings")

-- plugins
local copilot_plugin = require("plugins.copilot")
local harpoon_plugin = require("plugins.harpoon")
local avante_plugin = require("plugins.avante")
local git_plugin = require("plugins.git")
local go_plugin = require("plugins.go")
local visual_multi_plugin = require("plugins.visual_multi")
local csvview = require("plugins.csvview")

lvim.plugins = {}
vim.list_extend(lvim.plugins, copilot_plugin)
vim.list_extend(lvim.plugins, harpoon_plugin)
vim.list_extend(lvim.plugins, avante_plugin)
vim.list_extend(lvim.plugins, git_plugin)
vim.list_extend(lvim.plugins, go_plugin)
vim.list_extend(lvim.plugins, visual_multi_plugin)
vim.list_extend(lvim.plugins, csvview)
