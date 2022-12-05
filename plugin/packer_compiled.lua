-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/cyrusng/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/cyrusng/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/cyrusng/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/cyrusng/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/cyrusng/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    config = { "require'config.luasnip'" },
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/dfangx/friendly-snippets"
  },
  fzf = {
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf-lua"] = {
    config = { "require'config.fzf'" },
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua"
  },
  ["goyo.vim"] = {
    commands = { "Goyo" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/opt/goyo.vim",
    url = "https://github.com/junegunn/goyo.vim"
  },
  neorg = {
    config = { "require'config.neorg'" },
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["nord-vim"] = {
    config = { "require'config.nord'" },
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/nord-vim",
    url = "https://github.com/arcticicestudio/nord-vim"
  },
  ["nvim-cmp"] = {
    config = { "require'config.cmp'" },
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    config = { "require'config.dap'" },
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-fzf"] = {
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/nvim-fzf",
    url = "https://github.com/vijaymarupudi/nvim-fzf"
  },
  ["nvim-lint"] = {
    config = { "require'config.lint'" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/opt/nvim-lint",
    url = "https://github.com/mfussenegger/nvim-lint"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "require'config.lsp'" },
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "require'config.treesitter'" },
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["vim-ccls"] = {
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/vim-ccls",
    url = "https://github.com/m-pilia/vim-ccls"
  },
  ["vim-glsl"] = {
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/vim-glsl",
    url = "https://github.com/tikhomirov/vim-glsl"
  },
  ["vim-godot"] = {
    config = { "require'config.godot'" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/opt/vim-godot",
    url = "https://github.com/habamax/vim-godot"
  },
  ["vim-ledger"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/opt/vim-ledger",
    url = "https://github.com/ledger/vim-ledger"
  },
  ["vim-markdown"] = {
    config = { "require'config.markdown'" },
    loaded = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/start/vim-markdown",
    url = "https://github.com/preservim/vim-markdown"
  },
  ["vim-pencil"] = {
    config = { "require'config.pencil'" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/opt/vim-pencil",
    url = "https://github.com/preservim/vim-pencil"
  },
  ["vim-tmux-navigator"] = {
    cond = { "return vim.env.TMUX" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/opt/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  vimtex = {
    config = { "require'config.vimtex'" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/cyrusng/.local/share/nvim/site/pack/packer/opt/vimtex",
    url = "https://github.com/lervag/vimtex"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require'config.treesitter'
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
require'config.cmp'
time([[Config for nvim-cmp]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
require'config.dap'
time([[Config for nvim-dap]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
require'config.luasnip'
time([[Config for LuaSnip]], false)
-- Config for: nord-vim
time([[Config for nord-vim]], true)
require'config.nord'
time([[Config for nord-vim]], false)
-- Config for: vim-markdown
time([[Config for vim-markdown]], true)
require'config.markdown'
time([[Config for vim-markdown]], false)
-- Config for: neorg
time([[Config for neorg]], true)
require'config.neorg'
time([[Config for neorg]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require'config.lsp'
time([[Config for nvim-lspconfig]], false)
-- Config for: fzf-lua
time([[Config for fzf-lua]], true)
require'config.fzf'
time([[Config for fzf-lua]], false)
-- Conditional loads
time([[Conditional loading of vim-tmux-navigator]], true)
  require("packer.load")({"vim-tmux-navigator"}, {}, _G.packer_plugins)
time([[Conditional loading of vim-tmux-navigator]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Goyo lua require("packer.load")({'goyo.vim'}, { cmd = "Goyo", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType tex ++once lua require("packer.load")({'vimtex'}, { ft = "tex" }, _G.packer_plugins)]]
vim.cmd [[au FileType gdscript ++once lua require("packer.load")({'vim-godot'}, { ft = "gdscript" }, _G.packer_plugins)]]
vim.cmd [[au FileType gdresource ++once lua require("packer.load")({'vim-godot'}, { ft = "gdresource" }, _G.packer_plugins)]]
vim.cmd [[au FileType norg ++once lua require("packer.load")({'vim-pencil'}, { ft = "norg" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vim-pencil'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType ledger ++once lua require("packer.load")({'vim-ledger'}, { ft = "ledger" }, _G.packer_plugins)]]
vim.cmd [[au FileType sh ++once lua require("packer.load")({'nvim-lint'}, { ft = "sh" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/cyrusng/.local/share/nvim/site/pack/packer/opt/vim-ledger/ftdetect/ledger.vim]], true)
vim.cmd [[source /home/cyrusng/.local/share/nvim/site/pack/packer/opt/vim-ledger/ftdetect/ledger.vim]]
time([[Sourcing ftdetect script at: /home/cyrusng/.local/share/nvim/site/pack/packer/opt/vim-ledger/ftdetect/ledger.vim]], false)
time([[Sourcing ftdetect script at: /home/cyrusng/.local/share/nvim/site/pack/packer/opt/vim-godot/ftdetect/gdscript.vim]], true)
vim.cmd [[source /home/cyrusng/.local/share/nvim/site/pack/packer/opt/vim-godot/ftdetect/gdscript.vim]]
time([[Sourcing ftdetect script at: /home/cyrusng/.local/share/nvim/site/pack/packer/opt/vim-godot/ftdetect/gdscript.vim]], false)
time([[Sourcing ftdetect script at: /home/cyrusng/.local/share/nvim/site/pack/packer/opt/vim-godot/ftdetect/gsl.vim]], true)
vim.cmd [[source /home/cyrusng/.local/share/nvim/site/pack/packer/opt/vim-godot/ftdetect/gsl.vim]]
time([[Sourcing ftdetect script at: /home/cyrusng/.local/share/nvim/site/pack/packer/opt/vim-godot/ftdetect/gsl.vim]], false)
time([[Sourcing ftdetect script at: /home/cyrusng/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], true)
vim.cmd [[source /home/cyrusng/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]]
time([[Sourcing ftdetect script at: /home/cyrusng/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], false)
time([[Sourcing ftdetect script at: /home/cyrusng/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], true)
vim.cmd [[source /home/cyrusng/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]]
time([[Sourcing ftdetect script at: /home/cyrusng/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], false)
time([[Sourcing ftdetect script at: /home/cyrusng/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], true)
vim.cmd [[source /home/cyrusng/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]]
time([[Sourcing ftdetect script at: /home/cyrusng/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
