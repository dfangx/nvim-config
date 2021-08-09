-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/cykrosus/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/cykrosus/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/cykrosus/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/cykrosus/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/cykrosus/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/start/LuaSnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  ["fzf-lua"] = {
    loaded = true,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/start/fzf-lua"
  },
  ["fzf.vim"] = {
    config = { "require'config.fzf'" },
    loaded = true,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["goyo.vim"] = {
    commands = { "Goyo" },
    loaded = false,
    needs_bufread = false,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/opt/goyo.vim"
  },
  neorg = {
    loaded = true,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/start/neorg"
  },
  ["nord-vim"] = {
    config = { "require'config.nord'" },
    loaded = true,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/start/nord-vim"
  },
  ["nvim-compe"] = {
    config = { "require'config.compe'" },
    loaded = true,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-fzf"] = {
    loaded = true,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/start/nvim-fzf"
  },
  ["nvim-lint"] = {
    config = { "require'config.lint'" },
    loaded = false,
    needs_bufread = false,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/opt/nvim-lint"
  },
  ["nvim-lspconfig"] = {
    config = { "require'config.lsp'" },
    loaded = true,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-treesitter"] = {
    config = { "require'config.treesitter'" },
    loaded = true,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "require'config.telescope'" },
    loaded = false,
    needs_bufread = false,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/opt/telescope.nvim"
  },
  ["vim-godot"] = {
    config = { "require'config.godot'" },
    loaded = false,
    needs_bufread = true,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/opt/vim-godot"
  },
  ["vim-markdown"] = {
    config = { "require'config.markdown'" },
    loaded = true,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/start/vim-markdown"
  },
  ["vim-pencil"] = {
    config = { "require'config.pencil'" },
    loaded = false,
    needs_bufread = false,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/opt/vim-pencil"
  },
  ["vim-tmux-navigator"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/opt/vim-tmux-navigator"
  },
  vimtex = {
    config = { "require'config.vimtex'" },
    loaded = false,
    needs_bufread = true,
    path = "/home/cykrosus/.local/share/nvim/site/pack/packer/opt/vimtex"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
require'config.luasnip'
time([[Config for LuaSnip]], false)
-- Config for: vim-markdown
time([[Config for vim-markdown]], true)
require'config.markdown'
time([[Config for vim-markdown]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require'config.treesitter'
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
require'config.compe'
time([[Config for nvim-compe]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require'config.lsp'
time([[Config for nvim-lspconfig]], false)
-- Config for: fzf.vim
time([[Config for fzf.vim]], true)
require'config.fzf'
time([[Config for fzf.vim]], false)
-- Config for: nord-vim
time([[Config for nord-vim]], true)
require'config.nord'
time([[Config for nord-vim]], false)
-- Conditional loads
time("Condition for { 'vim-tmux-navigator' }", true)
if
vim.env.TMUX
then
time("Condition for { 'vim-tmux-navigator' }", false)
time([[packadd for vim-tmux-navigator]], true)
		vim.cmd [[packadd vim-tmux-navigator]]
	time([[packadd for vim-tmux-navigator]], false)
else
time("Condition for { 'vim-tmux-navigator' }", false)
end

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Goyo lua require("packer.load")({'goyo.vim'}, { cmd = "Goyo", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType gdscript ++once lua require("packer.load")({'vim-godot'}, { ft = "gdscript" }, _G.packer_plugins)]]
vim.cmd [[au FileType gdresource ++once lua require("packer.load")({'vim-godot'}, { ft = "gdresource" }, _G.packer_plugins)]]
vim.cmd [[au FileType vim ++once lua require("packer.load")({'nvim-lint'}, { ft = "vim" }, _G.packer_plugins)]]
vim.cmd [[au FileType sh ++once lua require("packer.load")({'nvim-lint'}, { ft = "sh" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vim-pencil'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType tex ++once lua require("packer.load")({'vimtex'}, { ft = "tex" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/cykrosus/.local/share/nvim/site/pack/packer/opt/vim-godot/ftdetect/gdscript.vim]], true)
vim.cmd [[source /home/cykrosus/.local/share/nvim/site/pack/packer/opt/vim-godot/ftdetect/gdscript.vim]]
time([[Sourcing ftdetect script at: /home/cykrosus/.local/share/nvim/site/pack/packer/opt/vim-godot/ftdetect/gdscript.vim]], false)
time([[Sourcing ftdetect script at: /home/cykrosus/.local/share/nvim/site/pack/packer/opt/vim-godot/ftdetect/gsl.vim]], true)
vim.cmd [[source /home/cykrosus/.local/share/nvim/site/pack/packer/opt/vim-godot/ftdetect/gsl.vim]]
time([[Sourcing ftdetect script at: /home/cykrosus/.local/share/nvim/site/pack/packer/opt/vim-godot/ftdetect/gsl.vim]], false)
time([[Sourcing ftdetect script at: /home/cykrosus/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], true)
vim.cmd [[source /home/cykrosus/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]]
time([[Sourcing ftdetect script at: /home/cykrosus/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
