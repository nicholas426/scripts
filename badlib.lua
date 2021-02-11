local Library = {}

function Library:CreateMain()
	
	local FruityMenu = Instance.new("ScreenGui")
	local ScrollFrame = Instance.new("ScrollingFrame")
	
	
	function onKeyPress(inputObject, gameProcessedEvent)
		if inputObject.KeyCode == Enum.KeyCode.RightShift then
			if ScrollFrame.Visible == false then
				ScrollFrame.Visible = true
			else
				ScrollFrame.Visible = false
			end
		end
	end

	game:GetService("UserInputService").InputBegan:connect(onKeyPress)
	
	

	
	FruityMenu.Name = "FruityMenu"
	FruityMenu.Parent = game:GetService("CoreGui")
	FruityMenu.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScrollFrame.Active = true
	ScrollFrame.Draggable = true

	ScrollFrame.Name = "ScrollFrame"
	ScrollFrame.Parent = FruityMenu
	ScrollFrame.Active = true
	ScrollFrame.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	ScrollFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ScrollFrame.Position = UDim2.new(0.763769865, 0, 0.214893609, 0)
	ScrollFrame.Size = UDim2.new(0, 141, 0, 285)
		
	
	local GamerLibrary = {}
	
	function GamerLibrary:NewButton(Name)
		
		local FruityButton = Instance.new("TextButton")
		
		FruityButton.Name = "FruityButton"
		FruityButton.Parent = ScrollFrame
		FruityButton.BackgroundColor3 = Color3.fromRGB(131, 131, 131)
		FruityButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		FruityButton.Position = UDim2.new(-0.000957489014, 0, -8.51079822e-05, 0)
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
