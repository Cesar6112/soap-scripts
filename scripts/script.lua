-- Borra todo el mapa menos lo importante
for _, objeto in ipairs(workspace:GetChildren()) do
	-- Saltarse la cámara y el terreno (el terreno se borra aparte)
	if objeto:IsA("Camera") or objeto:IsA("Terrain") then
		continue
	end

	-- Saltarse a los jugadores (sus personajes)
	if game.Players:GetPlayerFromCharacter(objeto) then
		continue
	end

	objeto:Destroy()
end

-- Si el mapa tiene terreno (pasto, montañas, agua), esto lo borra
workspace.Terrain:Clear()