--[[
     /  /\         /__/\         /  /\         /  /\          ___        ___          /__/\
    /  /:/         \  \:\       /  /:/_       /  /::\        /__/\      /  /\        |  |::\
   /  /:/           \__\:\     /  /:/ /\     /  /:/\:\       \  \:\    /  /:/        |  |:|:\
  /  /:/  ___   ___ /  /::\   /  /:/ /:/_   /  /:/  \:\       \  \:\  /__/::\      __|__|:|\:\
 /__/:/  /  /\ /__/\  /:/\:\ /__/:/ /:/ /\ /__/:/ \__\:\  ___  \__\:\ \__\/\:\__  /__/::::| \:\
 \  \:\ /  /:/ \  \:\/:/__\/ \  \:\/:/ /:/ \  \:\ /  /:/ /__/\ |  |:|    \  \:\/\ \  \:\~~\__\/
  \  \:\  /:/   \  \::/       \  \::/ /:/   \  \:\  /:/  \  \:\|  |:|     \__\::/  \  \:\
   \  \:\/:/     \  \:\        \  \:\/:/     \  \:\/:/    \  \:\__|:|     /__/:/    \  \:\
    \  \::/       \  \:\        \  \::/       \  \::/      \__\::::/      \__\/      \  \:\
     \__\/         \__\/         \__\/         \__\/           ~~~~                   \__\/

	A config switcher written in Lua by NTBBloodbath and Vhyrro.
--]]

-- Defines the profiles you want to use
local profiles = {
	--[[
	Here's an example:

		<name_of_config> = { <path_to_config>, {
				plugins = "packer", -- Where to install plugins under site/pack
				preconfigure = "packer:opt" -- Whether or not to preconfigure a plugin manager for you
			}
		}

	More in-depth information can be found in cheovim's README on GitHub.
	--]]


	-- @see https://github.com/NTBBloodbath/cheovim#wrench-configuration
	default = {
		"/home/backtolife/git.workspace/lua.workspace/zaza",
		{
			url = false,
			setup = function() end,
			config = "PackerSync",
			plugins = "packer",
			preconfigure = "packer:start:master",
		},
	},

	-- @see https://github.com/NTBBloodbath/cheovim#wrench-configuration
	vscode = {
		"/home/backtolife/git.workspace/lua.workspace/zaza",
		{
			url = false,
			setup = function() end,
			config = "PackerSync",
			plugins = "packer",
			preconfigure = "packer:start:master",
		},
	},
}

local get_profile_key = function()
	if vim.g.vscode == 1 then
		return "vscode"
	end

	return "default"
end

-- return <name_of_config>, <list_of_profiles>
return "default", profiles
