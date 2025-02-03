-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- configs
-- require("lua.config.conform")

-- custom mappings
require("lua.mappings")

-- plugins
local copilot_plugin = require("lua.plugins.copilot")
local harpoon_plugin = require("lua.plugins.harpoon")
local avante_plugin = require("lua.plugins.avante")
local git_plugin = require("lua.plugins.git")
local go_plugin = require("lua.plugins.go")

lvim.plugins = {}
vim.list_extend(lvim.plugins, copilot_plugin)
vim.list_extend(lvim.plugins, harpoon_plugin)
vim.list_extend(lvim.plugins, avante_plugin)
vim.list_extend(lvim.plugins, git_plugin)
vim.list_extend(lvim.plugins, go_plugin)
