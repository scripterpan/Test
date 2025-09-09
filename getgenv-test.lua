local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

if getgenv().Notify then
  task.spawn(function()
      while true do
        WindUI:Notify({
            Title = "getgenv.test()",
            Content = "Mangos!",
            Duration = 3, -- 3 seconds
            Icon = "bird",
        })
        task.wait(0.2)
      end
  end)
end

if getgenv().Kick then
    local player = game.Players.LocalPlayer
    player:Kick("เจมหำยาน > พอเพียงหำดำ")
end

if getgenv().JameHumYan then
    task.spawn(function()
        while true do
            setclipboard("discord.gg/jamehumyan")
            task.wait(0.5)
        end
    end)
end




