lib = {}
local function Run(Callback)
	Callback = Callback or function() end
	pcall(Callback)
end
function lib:CreateWindow(Title)
	EKGamesRobloxUilib = Instance.new("ScreenGui")
	Main = Instance.new("Frame")
	Topbar = Instance.new("Frame")
	TextLabel = Instance.new("TextLabel")
	ImageButton = Instance.new("ImageButton")
	TabHolder = Instance.new("Frame")
	UIGridLayout = Instance.new("UIGridLayout")
	

	EKGamesRobloxUilib.Name = "EKGames Roblox Ui lib"
	EKGamesRobloxUilib.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	EKGamesRobloxUilib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = EKGamesRobloxUilib
	Main.BackgroundColor3 = Color3.new(0.580392, 0.580392, 0.580392)
	Main.Position = UDim2.new(0.363934427, 0, 0.221238941, 0)
	Main.Size = UDim2.new(0, 400, 0, 300)
	Main.ZIndex = -1

	Topbar.Name = "Topbar"
	Topbar.Parent = Main
	Topbar.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
	Topbar.BorderSizePixel = 0
	Topbar.Size = UDim2.new(0, 400, 0, 32)

	TextLabel.Parent = Topbar
	TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel.BackgroundTransparency = 1
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(-0.150000006, 0, -0.59375, 0)
	TextLabel.Size = UDim2.new(0, 200, 0, 69)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = Title
	TextLabel.TextColor3 = Color3.new(0, 0, 0)
	TextLabel.TextSize = 14

	ImageButton.Parent = Topbar
	ImageButton.BackgroundColor3 = Color3.new(1, 1, 1)
	ImageButton.BackgroundTransparency = 1
	ImageButton.Position = UDim2.new(0.912500024, 0, -0.0625, 0)
	ImageButton.Size = UDim2.new(0, 35, 0, 34)
	ImageButton.Image = "rbxassetid://12988319194"

	TabHolder.Name = "TabHolder"
	TabHolder.Parent = Main
	TabHolder.BackgroundColor3 = Color3.new(1, 1, 1)
	TabHolder.BackgroundTransparency = 1
	TabHolder.Position = UDim2.new(0, 0, 0.106666669, 0)
	TabHolder.Size = UDim2.new(0, 400, 0, 268)

	UIGridLayout.Archivable = false
	UIGridLayout.Parent = TabHolder
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	local function PAZTD_fake_script() -- ImageButton.LocalScript 
		local script = Instance.new('LocalScript', ImageButton)

		script.Parent.MouseButton1Down:Connect(function()
			script.Parent.Parent.Parent:Destroy()
		end)
	end
	coroutine.wrap(PAZTD_fake_script)()

end
Window = {}
function Window:CreateButton(Text, Callback)
	local Textbutton = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	

	Textbutton.Name = "Textbutton"
	Textbutton.Parent = TabHolder
	Textbutton.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
	Textbutton.Position = UDim2.new(0.25, 0, 0.653333306, 0)
	Textbutton.Size = UDim2.new(0, 200, 0, 50)
	Textbutton.ZIndex = 5
	Textbutton.Font = Enum.Font.SourceSans
	Textbutton.Text = Text
	Textbutton.TextColor3 = Color3.new(0, 0, 0)
	Textbutton.TextScaled = true
	Textbutton.TextSize = 14
	Textbutton.TextWrapped = true

	UICorner.Parent = Textbutton
	UICorner.CornerRadius = UDim.new(0.200000003, 0)
	
	Textbutton.MouseButton1Down:Connect(function()
		Run(Callback)
	end)
end
