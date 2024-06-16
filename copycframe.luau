local Plugin = {
	["PluginName"] = "Copy CFrame",
	["PluginDescription"] = "Copy Your CFrame",
	["Commands"] = {
		["chatspy"] = {
			["ListName"] = "copycframe",
			["Description"] = "Copy Your CFrame",
			["Aliases"] = {},
			["Function"] = function(args, speaker)
				setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
			end,
		},
	},
}
return Plugin
