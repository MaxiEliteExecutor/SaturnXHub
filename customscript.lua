local AdminPanelGUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Settings = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local Frame_3 = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local Frame_4 = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local TextButton_2 = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local ScrollingFrame_3 = Instance.new("ScrollingFrame")
local UIListLayout_3 = Instance.new("UIListLayout")
local TextLabel_5 = Instance.new("TextLabel")
local Frame_5 = Instance.new("Frame")
local TextLabel_6 = Instance.new("TextLabel")
local TextButton_3 = Instance.new("TextButton")
local SettingsOpen = Instance.new("Frame")
local isclosed = false

-- Properties:
AdminPanelGUI.Name = "AdminPanelGUI"
AdminPanelGUI.Parent = game:GetService("CoreGui")
print("UI Loaded")

Main.Name = "Main"
Main.Parent = AdminPanelGUI
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1  -- For debugging
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.0316409133, 0, 0.0753205121, 0)
Main.Size = UDim2.new(0, 840, 0, 550)

Settings.Name = "Settings"
Settings.Parent = Main
Settings.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Settings.BackgroundTransparency = 0.100
Settings.BorderSizePixel = 2
Settings.ClipsDescendants = false  -- Disabled to prevent cutoff
Settings.Position = UDim2.new(0, 0, 0, 0)  -- Moved to left edge
Settings.Size = UDim2.new(0, 420, 0, 550)

TextLabel.Parent = Settings
TextLabel.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(1, 0, 0, 55)  -- Fixed size
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Settings"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 24.000

ScrollingFrame.Parent = Settings
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 10, 0, 65)
ScrollingFrame.Size = UDim2.new(1, -20, 1, -75)  -- Adjusted to fill space
ScrollingFrame.ScrollBarThickness = 0

UIListLayout.Parent = ScrollingFrame

Frame.Parent = ScrollingFrame
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 0, 0)  -- Simplified position
Frame.Size = UDim2.new(1, 0, 0, 562)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(126, 126, 126)
Frame_2.BackgroundTransparency = 0.500
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 0, 0, 0)
Frame_2.Size = UDim2.new(1, 0, 0, 538)

ScrollingFrame_2.Parent = Frame_2
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame_2.BackgroundTransparency = 1.000
ScrollingFrame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame_2.BorderSizePixel = 0
ScrollingFrame_2.Position = UDim2.new(0.0251256283, 0, 0.100371748, 0)
ScrollingFrame_2.Size = UDim2.new(0, 379, 0, 482)
ScrollingFrame_2.ScrollBarThickness = 0

UIListLayout_2.Parent = ScrollingFrame_2
UIListLayout_2.Padding = UDim.new(0, 8)

TextLabel_2.Parent = Frame_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 0, 0)  -- Fixed position
TextLabel_2.Size = UDim2.new(1, 0, 0, 55)  -- Fixed size
TextLabel_2.Font = Enum.Font.GothamBold
TextLabel_2.Text = "Add Command"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 24.000
TextLabel_2.TextWrapped = true

TextButton.Parent = TextLabel_2
TextButton.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(1, -45, 0, 10)
TextButton.Size = UDim2.new(0, 35, 0, 35)
TextButton.Font = Enum.Font.GothamBold
TextButton.Text = "+"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 16.000
TextButton.TextWrapped = true

Frame_3.Parent = Settings
Frame_3.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0, 10, 0, 110)
Frame_3.Size = UDim2.new(1, -20, 0.379999995, 220)
Frame_3.Visible = false

TextLabel_3.Parent = Frame_3
TextLabel_3.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Size = UDim2.new(1, 0, 0, 45)
TextLabel_3.Font = Enum.Font.GothamBold
TextLabel_3.Text = "Settings"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 22.000

Frame_4.Parent = Main
Frame_4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame_4.BackgroundTransparency = 0.100
Frame_4.BorderSizePixel = 2
Frame_4.ClipsDescendants = false  -- Disabled to prevent cutoff
Frame_4.Position = UDim2.new(0, 430, 0, 0)  -- Moved to right of Settings
Frame_4.Size = UDim2.new(0, 420, 0, 550)

TextLabel_4.Parent = Frame_4
TextLabel_4.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Size = UDim2.new(1, 0, 0, 55)
TextLabel_4.Font = Enum.Font.GothamBold
TextLabel_4.Text = "Saturn X custom scripts"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 24.000

TextButton_2.Parent = Frame_4
TextButton_2.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
TextButton_2.BackgroundTransparency = 1.000
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.130952388, -45, 0, 10)
TextButton_2.Size = UDim2.new(0, 35, 0, 35)
TextButton_2.Font = Enum.Font.GothamBold
TextButton_2.Text = "⚙"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextScaled = true
TextButton_2.TextWrapped = true

TextBox.Parent = Frame_4
TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0, 10, 0, 65)
TextBox.Size = UDim2.new(1, -20, 0, 40)
TextBox.Font = Enum.Font.Gotham
TextBox.PlaceholderText = "Search for command..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 18.000

ScrollingFrame_3.Parent = Frame_4
ScrollingFrame_3.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ScrollingFrame_3.BorderSizePixel = 0
ScrollingFrame_3.Position = UDim2.new(0, 10, 0, 110)
ScrollingFrame_3.Size = UDim2.new(1, -20, 1, -120)  -- Adjusted to fill space
ScrollingFrame_3.ScrollBarThickness = 0

UIListLayout_3.Parent = ScrollingFrame_3
UIListLayout_3.Padding = UDim.new(0, 8)

TextLabel_5.Parent = ScrollingFrame_3
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Size = UDim2.new(0, 366, 0, 12)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = ""
TextLabel_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.TextSize = 1.000
TextLabel_5.TextTransparency = 1.000

Frame_5.Parent = Frame_4
Frame_5.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Frame_5.BorderSizePixel = 0
Frame_5.Position = UDim2.new(0, 10, 0, 110)
Frame_5.Size = UDim2.new(1, -20, 0.379999995, 220)
Frame_5.Visible = false

TextLabel_6.Parent = Frame_5
TextLabel_6.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Size = UDim2.new(1, 0, 0, 45)
TextLabel_6.Font = Enum.Font.GothamBold
TextLabel_6.Text = "Settings"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextSize = 22.000

TextButton_3.Parent = Frame_4
TextButton_3.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
TextButton_3.BackgroundTransparency = 1.000
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(1, -45, 0, 10)
TextButton_3.Size = UDim2.new(0, 35, 0, 35)
TextButton_3.Font = Enum.Font.GothamBold
TextButton_3.Text = "❌"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextScaled = true
TextButton_3.TextWrapped = true

SettingsOpen.Name = "SettingsOpen"
SettingsOpen.Parent = Main
SettingsOpen.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
SettingsOpen.BackgroundTransparency = 1.000
SettingsOpen.BorderSizePixel = 2
SettingsOpen.ClipsDescendants = true
SettingsOpen.Position = UDim2.new(0, 0, 0, 0)
SettingsOpen.Size = UDim2.new(0, 420, 0, 550)

-- Saving Setup
local FILE_PATH = "custom_commands.txt"
local HttpService = game:GetService("HttpService")

local function saveCommands(commands)
	local success, err = pcall(function()
		local data = {}
		for name, func in pairs(commands) do
			if type(func) == "string" then
				data[name] = func
			end
		end
		writefile(FILE_PATH, HttpService:JSONEncode(data))
		print("Commands Saved")
	end)
	if not success then
		warn("Failed to save commands: " .. err)
	end
end

local function loadCommands()
	local success, result = pcall(function()
		if isfile(FILE_PATH) then
			local data = HttpService:JSONDecode(readfile(FILE_PATH))
			print("Commands Loaded:", data)
			return data
		end
		return {}
	end)
	if success then
		return result
	else
		warn("Failed to load commands: " .. result)
		return {}
	end
end

local function createCommandButton(name, func)
	print("Creating Command Button:", name)
	local TextButton = Instance.new("TextButton")
	local DeleteButton = Instance.new("TextButton")

	TextButton.Parent = ScrollingFrame_3
	TextButton.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
	TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.BorderSizePixel = 0
	TextButton.Size = UDim2.new(0, 400, 0, 57)
	TextButton.Font = Enum.Font.SourceSans
	TextButton.Text = name
	TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.TextSize = 44.000
	TextButton.TextWrapped = true
	TextButton.TextXAlignment = Enum.TextXAlignment.Left

	DeleteButton.Parent = TextButton
	DeleteButton.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
	DeleteButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	DeleteButton.BorderSizePixel = 0
	DeleteButton.Position = UDim2.new(0.855000019, 0, 0, 0)
	DeleteButton.Size = UDim2.new(0, 58, 0, 57)
	DeleteButton.Font = Enum.Font.SourceSans
	DeleteButton.Text = "✖️"
	DeleteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	DeleteButton.TextSize = 44.000
	DeleteButton.TextWrapped = true

	TextButton.MouseButton1Click:Connect(function()
		local scriptText = func
		local funcs, err = loadstring(scriptText)
		if funcs then
			funcs()
		else
			warn("Error in script: " .. err)
		end
	end)

	DeleteButton.MouseButton1Click:Connect(function()
		local commands = loadCommands()
		commands[name] = nil
		saveCommands(commands)
		TextButton:Destroy()
	end)
end

local function populateCommands()
	local commands = loadCommands()
	for name, func in pairs(commands) do
		createCommandButton(name, func)
	end
	print("Commands Populated")
end

-- Scripts:
local function HBOP_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		print("Add Command Clicked")
		local Frame = Instance.new("Frame")
		local TextBox = Instance.new("TextBox")
		local Func = Instance.new("TextBox")
		local TextButton2222222 = Instance.new("TextButton")

		Frame.Parent = script.Parent.Parent.Parent.ScrollingFrame
		Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frame.BorderSizePixel = 0
		Frame.Size = UDim2.new(0, 379, 0, 212)

		TextBox.Parent = Frame
		TextBox.BackgroundColor3 = Color3.fromRGB(94, 94, 94)
		TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextBox.BorderSizePixel = 0
		TextBox.Position = UDim2.new(0.0501319245, 0, 0.0765550211, 0)
		TextBox.Size = UDim2.new(0, 341, 0, 50)
		TextBox.Font = Enum.Font.SourceSans
		TextBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
		TextBox.PlaceholderText = "Name of function"
		TextBox.Text = ""
		TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextBox.TextScaled = true
		TextBox.TextSize = 44.000
		TextBox.TextWrapped = true

		Func.Name = "Func"
		Func.Parent = Frame
		Func.BackgroundColor3 = Color3.fromRGB(94, 94, 94)
		Func.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Func.BorderSizePixel = 0
		Func.Position = UDim2.new(0.0501319245, 0, 0.425837308, 0)
		Func.Size = UDim2.new(0, 341, 0, 50)
		Func.Font = Enum.Font.SourceSans
		Func.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
		Func.PlaceholderText = "function"
		Func.Text = ""
		Func.TextColor3 = Color3.fromRGB(0, 0, 0)
		Func.TextScaled = true
		Func.TextSize = 44.000
		Func.TextWrapped = true

		TextButton2222222.Parent = Frame
		TextButton2222222.BackgroundColor3 = Color3.fromRGB(94, 94, 94)
		TextButton2222222.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextButton2222222.BorderSizePixel = 0
		TextButton2222222.Position = UDim2.new(0.234828502, 0, 0.73113209, 0)
		TextButton2222222.Size = UDim2.new(0, 201, 0, 40)
		TextButton2222222.Font = Enum.Font.SourceSans
		TextButton2222222.Text = "Apply"
		TextButton2222222.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton2222222.TextScaled = true
		TextButton2222222.TextSize = 14.000
		TextButton2222222.TextWrapped = true

		local function EEOW_fake_script() -- TextButton.LocalScript 
			local script = Instance.new('LocalScript', TextButton2222222)

			script.Parent.MouseButton1Click:Connect(function()
				print("Apply Clicked")
				local name = TextBox.Text
				local funcText = Func.Text

				if name == "" or funcText == "" then
					warn("Name or function text is empty.")
					return
				end

				local commands = loadCommands()
				if commands[name] then
					warn("A command with this name already exists.")
					return
				end

				commands[name] = funcText
				saveCommands(commands)

				createCommandButton(name, funcText)
				Frame:Destroy()
			end)
		end
		coroutine.wrap(EEOW_fake_script)()
	end)
end
coroutine.wrap(HBOP_fake_script)()

local function WFSMZ_fake_script() -- TextLabel_4.Drag 
	local script = Instance.new('LocalScript', TextLabel_4)
	local UIS = game:GetService('UserInputService')
	local frame = script.Parent.Parent.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	local IsClosed = true
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	script.Parent.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if IsClosed == true then
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if dragToggle then
					updateInput(input)
				end
			end
		end
	end)

	script.Parent.AncestryChanged:Connect(function()
		IsClosed = false
	end)
end
coroutine.wrap(WFSMZ_fake_script)()

local function SUBZ_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)
	local TweenService = game:GetService("TweenService")
	local button = script.Parent
	local frame = script.Parent.Parent.Parent.Settings
	local openFrame = script.Parent.Parent.Parent.SettingsOpen
	local isOpen = false
	local openPosition = openFrame.Position
	local closedPosition = frame.Position
	local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)

	local function toggleFrame()
		local targetPosition = isOpen and closedPosition or openPosition
		local targetTransparency = isOpen and 0.1 or 1
		local tween = TweenService:Create(frame, tweenInfo, {
			Position = targetPosition,
			BackgroundTransparency = targetTransparency
		})
		tween:Play()
		task.delay(0.2, function()
			for _, child in pairs(frame:GetChildren()) do
				if child:IsA("GuiObject") then
					child.Transparency = targetTransparency
					if child.Name == "ScrollingFrame" then
						child.Visible = not isOpen
					end
				end
			end
		end)
		isOpen = not isOpen
	end

	button.MouseButton1Click:Connect(toggleFrame)
	toggleFrame()
end
coroutine.wrap(SUBZ_fake_script)()

local function AUTWD_fake_script() -- TextBox.LocalScript 
	local script = Instance.new('LocalScript', TextBox)
	local Text = script.Parent
	local success, result = pcall(function()
		game:GetService("RunService").RenderStepped:Connect(function()
			if isclosed == false then
				local filterText = Text.Text
				local descendants = script.Parent.Parent.ScrollingFrame:GetDescendants()
				for _, obj in ipairs(descendants) do
					if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
						if filterText == "" then
							obj.Visible = true
						else
							if string.find(obj.Text:lower(), filterText:lower()) then
								obj.Visible = true
							else
								obj.Visible = false
							end
						end
					end
				end
			end
		end)
	end)
	if success then
		print("Ok")
	else
		print("Failed to Run script. Error:" .. result)
	end
end
coroutine.wrap(AUTWD_fake_script)()

local function EZZXVV_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)
	script.Parent.MouseButton1Click:Connect(function()
		isclosed = true
		script.Parent.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(EZZXVV_fake_script)()

-- Initialize with error checking
local function initialize()
	local success, err = pcall(function()
		if isclosed == false then
			wait(0.1)
			if isclosed == false then
				populateCommands()
			end
			print("Initialization Complete")
		end
	end)
	if not success then
		warn("Initialization failed: " .. err)
	end
end
coroutine.wrap(initialize)()
