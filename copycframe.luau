local Plugin = {
	["PluginName"] = "Chat Spy",
	["PluginDescription"] = "Spy on Messages",
	["Commands"] = {
		["chatspy"] = {
			["ListName"] = "chatspy",
			["Description"] = "Spy on Messages",
			["Aliases"] = {},
			["Function"] = function(args, speaker)
				setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
			end,
		},
	},
}
return Plugi
