local db = false
script.Parent.Touched:connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") then
		local player = game.Players:GetPlayerFromCharacter(hit.Parent)
		if db == false then
			db = true
			script.Parent.BrickColor = BrickColor.new("Bright red")
			player.leaderstats.BloxyCola.Value = player.leaderstats.BloxyCola.Value + 1
			wait(1)
			script.Parent.BrickColor = BrickColor.new("Bright green")
			db = false
		end
	end
end)
