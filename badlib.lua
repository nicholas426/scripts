local Library = {}

function Library:CreateMain()
	
	local FruityMenu = Instance.new("ScreenGui")
	local ScrollFrame = Instance.new("ScrollingFrame")
	local Credit = Instance.new("TextLabel")
	
	
	function onKeyPress(inputObject, gameProcessedEvent)
		if inputObject.KeyCode == Enum.KeyCode.RightShift then
			if FruityMenu.Visible == false then
				FruityMenu.Visible = true
			else
				FruityMenu.Visible = false
			end
		end
	end

	game:GetService("UserInputService").InputBegan:connect(onKeyPress)
	
	

	
	FruityMenu.Name = "FruityMenu"
	FruityMenu.Parent = game:GetService("CoreGui")
	FruityMenu.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	FruityMenu.Active = true
	FruityMenu.Draggable = true

	ScrollFrame.Name = "ScrollFrame"
	ScrollFrame.Parent = FruityMenu
	ScrollFrame.Active = true
	ScrollFrame.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	ScrollFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ScrollFrame.Position = UDim2.new(0.764993846, 0, 0.168085098, 0)
	ScrollFrame.Size = UDim2.new(0, 141, 0, 285)
	ScrollFrame.CanvasPosition = Vector2.new(0, 69.2631607)
	

	Credit.Name = "Credit"
	Credit.Parent = FruityMenu
	Credit.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Credit.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Credit.Position = UDim2.new(0.764828622, 0, 0.774468064, 0)
	Credit.Size = UDim2.new(0, 141, 0, 22)
	Credit.Font = Enum.Font.SourceSans
	Credit.Text = "Created By BadBoy#7422"
	Credit.TextColor3 = Color3.fromRGB(0, 0, 0)
	Credit.TextScaled = true
	Credit.TextSize = 14.000
	Credit.TextStrokeColor3 = Color3.fromRGB(247, 0, 255)
	Credit.TextStrokeTransparency = 0.000
	Credit.TextWrapped = true	
	
	local GamerLibrary = {}
	
	function GamerLibrary:NewButton(Name)
		
		local FruityButton = Instance.new("TextButton")
		
		FruityButton.Parent = ScrollFrame
		FruityButton.BackgroundColor3 = Color3.fromRGB(131, 131, 131)
		FruityButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		FruityButton.Position = UDim2.new(-0.000957489014, 0, 0.0733191445, 0)
		FruityButton.Size = UDim2.new(0, 128, 0, 23)
		FruityButton.Font = Enum.Font.Highway
		FruityButton.Text = Name
		FruityButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		FruityButton.TextScaled = true
		FruityButton.TextSize = 14.000
		FruityButton.TextWrapped = true
		
	end
	
	return GamerLibrary;
end	
	return Library;
