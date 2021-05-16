local team = game.Teams.Outlaws

script.Parent.Touched:connect(function(hit)
	if hit.Parent:FindFirstChild('Humanoid') then
		if hit.Parent.Humanoid.Health > 0 then
			local player = game.Players:GetPlayerFromCharacter(hit.Parent)
			if player.Team == team then
				script.Parent.CanCollide = false
				wait(1)
				script.Parent.CanCollide = true
			end
		end
	end
end)  