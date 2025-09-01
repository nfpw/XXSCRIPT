--[[
	credits: 
	"GetTextBounds" function taken from linoria library -- https://github.com/violin-suzutsuki/LinoriaLib
	this ui library fork from Bracket V3 -- https://github.com/AlexR32/Bracket/blob/main/BracketV3.lua
	i didnt really stick with 1 style i just did whatever i wanted at some parts used ai help bc im lazy -- https://github.com/nfpw
]]

local Library = {Toggle = true, FirstTab = nil, TabCount = 0, ColorTable = {}, Whitelist = {}, CurrentTab = nil, WhitelistEnabled = false}
local cloneref = cloneref or function(v) return v; end
local function getservice(v) return cloneref(game:GetService(v)); end
local http_request = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request;
local shared = (getgenv and getgenv()) or shared or _G
local ReplicatedStorage = getservice("ReplicatedStorage")
local UserInputService = getservice("UserInputService")
local TweenService = getservice("TweenService")
local HttpService = getservice("HttpService")
local TextService = getservice("TextService")
local RunService = getservice("RunService")
local Players = getservice("Players")

local IsMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
shared.Anka = shared.Anka or {}
shared.Anka.Elements = shared.Anka.Elements or {}
shared.Anka.ElementCounter = 0

--[[
local Assets = {
	testicon = {
		url = "https://ssss.png";
		filename = "ssss.png";
		rbxassetid = "rbxassetid://123456789";
	};
	HolderImage = {
		url = "https://Holder.png";
		filename = "Holder.png";
		rbxassetid = "rbxassetid://2484276666";
	};
}
]]

local function requesturl(i, v)
	if RunService:IsStudio() then	
		return nil
	end
	if v == nil and not RunService:IsStudio() then
		local req = http_request({
			Url = i,
			Method = "GET"
		})
		if req.StatusCode ~= 200 then
			return nil, req.StatusCode
		end
		return req.Body
	end
	local baseurl = "https://raw.githubusercontent.com/nfpw/Anka/main/Assests/"
	local req = http_request({
		Url = baseurl..i,
		Method = "GET"
	})
	if req.StatusCode ~= 200 then
		return nil, req.StatusCode
	end
	return req.Body
end

local function asset(name: string, v)
	if shared.Anka.AnkaLoadAssets then
		local asset = Assets[name]
		if not asset then
			return
		end
		if not getcustomasset then
			v.Image = asset.rbxassetid
			return
		end
		if not isfile(asset.filename) then
			local success, err = pcall(function()
				local content = requesturl(asset.url)
				if content then
					writefile(asset.filename, content)
				end
			end)
			if not success then
				v.Image = asset.rbxassetid
				return
			end
		end
		pcall(function()
			v.Image = getcustomasset(asset.filename)
		end)
	end
end

local function makedraggable(ClickObject: GuiObject, Object: GuiObject)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	ClickObject.InputBegan:Connect(function(Input)
		if UserInputService:GetFocusedTextBox() == nil then
			if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = Input.Position
				StartPosition = Object.Position
				Input.Changed:Connect(function()
					if Input.UserInputState == Enum.UserInputState.End then
						Dragging = false
					end
				end)
			end
		end
	end)

	ClickObject.InputChanged:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
			DragInput = Input
		end
	end)

	UserInputService.InputChanged:Connect(function(Input)
		if Input == DragInput and Dragging then
			local Delta = Input.Position - DragStart
			Object.Position = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
		end
	end)
end

local function makeresizable(MainFrame: GuiObject, MinHeight: number, MaxHeight: number, MinWidth: number, MaxWidth: number)
	if MainFrame.Size.X.Offset == 0 or MainFrame.Size.Y.Offset == 0 then
		local initialWidth = math.clamp(400, MinWidth, MaxWidth)
		local initialHeight = math.clamp(300, MinHeight, MaxHeight)
		MainFrame.Size = UDim2.new(0, initialWidth, 0, initialHeight)
	end

	local CornerResizeHandle = Instance.new("TextButton")
	CornerResizeHandle.Name = "CornerResizeHandle"
	CornerResizeHandle.Parent = MainFrame
	CornerResizeHandle.BackgroundTransparency = 1
	CornerResizeHandle.Size = UDim2.new(0, 20, 0, 20)
	CornerResizeHandle.Position = UDim2.new(1, -20, 1, -20)
	CornerResizeHandle.ZIndex = 11
	CornerResizeHandle.Text = ">"
	CornerResizeHandle.TextColor3 = Color3.fromRGB(150, 150, 150)
	CornerResizeHandle.TextSize = 16
	CornerResizeHandle.Font = Enum.Font.SourceSansBold
	CornerResizeHandle.Rotation = 45

	local Dragging = false
	local DraggingCorner = false
	local StartPos = nil
	local StartSize = nil

	local function UpdateTabSizes(NewSize)
		local tbContainer = MainFrame:FindFirstChild("Holder"):FindFirstChild("TBContainer")
		if tbContainer then
			local holder = tbContainer:FindFirstChild("Holder")
			if holder then
				local tabButtons = {}
				for _, child in pairs(holder:GetChildren()) do
					if child:IsA("TextButton") then
						table.insert(tabButtons, child)
					end
				end
				local tabCount = #tabButtons
				if tabCount > 0 then
					local buttonWidth = math.floor((NewSize.X.Offset - 19) / tabCount)
					for i, TabButton in pairs(tabButtons) do
						TabButton.Size = UDim2.new(0, buttonWidth, 1, 0)
						TabButton.Position = UDim2.new(0, (buttonWidth * (i-1)) + (i * 2), 0, 0)
					end
				end
			end
		end
		local tContainer = MainFrame:FindFirstChild("Holder"):FindFirstChild("TContainer")
		if tContainer then
			for _, Tab in pairs(tContainer:GetChildren()) do
				if Tab:IsA("ScrollingFrame") then
					Tab.Size = UDim2.new(1, 0, 1, 0)
					if Tab:FindFirstChild("LeftSide") then
						Tab.LeftSide.Size = UDim2.new(0.5, -5, 1, 0)
					end
					if Tab:FindFirstChild("RightSide") then
						Tab.RightSide.Size = UDim2.new(0.5, -5, 1, 0)
					end
					Tab.CanvasSize = UDim2.new(0, 0, 0, math.max(
						Tab.LeftSide and Tab.LeftSide.ListLayout.AbsoluteContentSize.Y or 0,
						Tab.RightSide and Tab.RightSide.ListLayout.AbsoluteContentSize.Y or 0
						) + 15)
				end
			end
		end
	end

	task.spawn(function()
		repeat task.wait() until MainFrame:FindFirstChild("Holder") and MainFrame.Holder:FindFirstChild("TBContainer") and MainFrame.Holder.TBContainer:FindFirstChild("Holder")
		task.wait(1.4)
		UpdateTabSizes(MainFrame.Size)
	end)

	CornerResizeHandle.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
			DraggingCorner = true
			StartPos = Input.Position
			StartSize = MainFrame.Size
			Input.Changed:Connect(function()
				if Input.UserInputState == Enum.UserInputState.End then
					DraggingCorner = false
				end
			end)
		end
	end)

	UserInputService.InputChanged:Connect(function(Input)
		if Dragging and (Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch) then
			local Delta = Input.Position.Y - StartPos
			local NewHeight = math.clamp(StartSize.Y.Offset + Delta, MinHeight, MaxHeight)
			local NewSize = UDim2.new(StartSize.X.Scale, StartSize.X.Offset, 0, NewHeight)
			MainFrame.Size = NewSize
			UpdateTabSizes(NewSize)
		elseif DraggingCorner and (Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch) then
			local Delta = Input.Position - StartPos
			local NewWidth = math.clamp(StartSize.X.Offset + Delta.X, MinWidth, MaxWidth)
			local NewHeight = math.clamp(StartSize.Y.Offset + Delta.Y, MinHeight, MaxHeight)
			local NewSize = UDim2.new(0, NewWidth, 0, NewHeight)
			MainFrame.Size = NewSize
			UpdateTabSizes(NewSize)
		end
	end)
end

local function crebutton(Screen: GuiObject, Main: GuiObject, Config: {Color: Color3}, Toggle: (boolean?) -> ())
	if not IsMobile then return nil end

	local ReopenButton = Instance.new("Frame")
	ReopenButton.Name = "ReopenButton"
	ReopenButton.Parent = Screen
	ReopenButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	ReopenButton.Size = UDim2.new(0, 45, 0, 45)
	ReopenButton.Position = UDim2.new(0.85, 50, 0.8, -200)
	ReopenButton.Visible = true
	local borderFrame1 = Instance.new("Frame")
	borderFrame1.Name = "BorderFrame1"
	borderFrame1.Size = UDim2.new(1, -2, 1, -2)
	borderFrame1.Position = UDim2.new(0, 1, 0, 1)
	borderFrame1.BackgroundColor3 = Color3.fromRGB(52, 53, 52)
	borderFrame1.BorderSizePixel = 0
	borderFrame1.Parent = ReopenButton
	local borderFrame2 = Instance.new("Frame")
	borderFrame2.Name = "BorderFrame2"
	borderFrame2.Size = UDim2.new(1, -2, 1, -2)
	borderFrame2.Position = UDim2.new(0, 1, 0, 1)
	borderFrame2.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	borderFrame2.BorderSizePixel = 0
	borderFrame2.Parent = borderFrame1
	local borderFrame3 = Instance.new("Frame")
	borderFrame3.Name = "BorderFrame3"
	borderFrame3.Size = UDim2.new(1, -6, 1, -6)
	borderFrame3.Position = UDim2.new(0, 3, 0, 3)
	borderFrame3.BackgroundColor3 = Color3.fromRGB(52, 53, 52)
	borderFrame3.BorderSizePixel = 0
	borderFrame3.Parent = borderFrame2
	local innerFrame = Instance.new("Frame")
	innerFrame.Name = "InnerFrame"
	innerFrame.Size = UDim2.new(1, -2, 1, -2)
	innerFrame.Position = UDim2.new(0, 1, 0, 1)
	innerFrame.BackgroundColor3 = Color3.fromRGB(5, 5, 4)
	innerFrame.BorderSizePixel = 0
	innerFrame.Parent = borderFrame3
	local frameGradient = Instance.new("UIGradient")
	frameGradient.Name = "FrameGradient"
	frameGradient.Rotation = 90
	frameGradient.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Config.Color:Lerp(Color3.fromRGB(5, 5, 4), 0.1)),
		ColorSequenceKeypoint.new(0.5, Color3.fromRGB(5, 5, 4)),
		ColorSequenceKeypoint.new(1, Config.Color:Lerp(Color3.fromRGB(5, 5, 4), 0.1))
	})
	frameGradient.Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0.7),
		NumberSequenceKeypoint.new(0.5, 0.9),
		NumberSequenceKeypoint.new(1, 0.7)
	})
	frameGradient.Parent = innerFrame
	local gradientFrame = Instance.new("Frame")
	gradientFrame.Name = "GradientFrame"
	gradientFrame.Size = UDim2.new(1, 0, 0, 1)
	gradientFrame.Position = UDim2.new(0, 0, 0, 0)
	gradientFrame.BackgroundColor3 = Config.Color
	gradientFrame.BorderSizePixel = 0
	gradientFrame.Parent = innerFrame
	local gradient = Instance.new("UIGradient")
	gradient.Name = "TopGradient"
	gradient.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Config.Color),
		ColorSequenceKeypoint.new(0.25, Config.Color:Lerp(Color3.fromRGB(180, 100, 160), 0.5)),
		ColorSequenceKeypoint.new(0.75, Config.Color:Lerp(Color3.fromRGB(180, 230, 100), 0.5)),
		ColorSequenceKeypoint.new(1, Config.Color:Lerp(Color3.fromRGB(180, 100, 160), 0.5))
	}
	gradient.Parent = gradientFrame
	local lineee = Instance.new("Frame")
	lineee.Name = "lineee"
	lineee.Size = UDim2.new(1, 0, 0, 1)
	lineee.Position = UDim2.new(0, 0, 0, 1)
	lineee.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	lineee.BackgroundTransparency = 0.2
	lineee.BorderSizePixel = 0
	lineee.Parent = innerFrame
	local textLabel = Instance.new("TextLabel")
	textLabel.Name = "ButtonText"
	textLabel.Size = UDim2.new(1, 0, 1, 0)
	textLabel.Position = UDim2.new(0, 0, 0, 0)
	textLabel.BackgroundTransparency = 1
	textLabel.Text = "+"
	textLabel.TextColor3 = Config.Color
	textLabel.TextScaled = true
	textLabel.TextSize = 30
	textLabel.Font = Enum.Font.Code
	textLabel.TextXAlignment = Enum.TextXAlignment.Center
	textLabel.TextYAlignment = Enum.TextYAlignment.Center
	textLabel.Parent = innerFrame
	local textGradient = Instance.new("UIGradient")
	textGradient.Name = "TextGradient"
	textGradient.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Config.Color),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
	})
	textGradient.Transparency = NumberSequence.new(0.5)
	textGradient.Parent = textLabel

	table.insert(Library.ColorTable, gradientFrame)
	table.insert(Library.ColorTable, textLabel)
	table.insert(Library.ColorTable, frameGradient)
	table.insert(Library.ColorTable, gradient)
	
	makedraggable(ReopenButton, ReopenButton)
	local deltabooleanomg = false
	
	innerFrame.InputEnded:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.Touch or Input.UserInputType == Enum.UserInputType.MouseButton1 then
			deltabooleanomg = not deltabooleanomg
			Toggle(deltabooleanomg)
		end
	end)
	
	task.delay(1.2, function()
		ReopenButton.Visible = true
	end)
	
	return ReopenButton
end

function Library:CreateWindow(Config: {WindowName: string, Color: Color3, MinHeight: number?, MaxHeight: number?, InitialHeight: number?}, Parent: Instance): Window
	local WindowInit: Window = {}

	if Config == nil then 
		Config = {
			WindowName = "Developer Mode",
			Color = Color3.fromRGB(255, 128, 64),
			Keybind = Enum.KeyCode.RightShift,
			MinHeight = 100,
			MaxHeight = 600,
			InitialHeight = 400,
			MinWidth = 300,
			MaxWidth = 800,
			InitialWidth = 500,
			Assets = false
		}
	else
		if Config.Assets == nil then
			Config.Assets = false
		end
		Config.Keybind = Config.Keybind or Enum.KeyCode.RightShift
		Config.WindowName = Config.WindowName or "Developer Mode"
		Config.Color = Config.Color or Color3.fromRGB(255, 128, 64)
		Config.MinHeight = Config.MinHeight or 100
		Config.MaxHeight = Config.MaxHeight or 600
		Config.InitialHeight = Config.InitialHeight or 400
		Config.MinWidth = Config.MinWidth or 300
		Config.MaxWidth = Config.MaxWidth or 800
		Config.InitialWidth = Config.InitialWidth or 500
	end 

	if Config.Assets then
		shared.Anka.AnkaLoadAssets = true
	end

	local Folder = nil
	if RunService:IsStudio() then
		Folder = ReplicatedStorage.Bracket
	else
		Folder = loadstring(requesturl("https://raw.githubusercontent.com/nfpw/XXSCRIPT/refs/heads/main/Library/Folder/ModuleFolder.lua"))()
	end
	repeat wait() until Folder ~= nil

	--[[
	if shared.Anka.AnkaLoadAssets then
		for _, descendant in ipairs(Folder:GetDescendants()) do
			if descendant:IsA("ImageLabel") or descendant:IsA("ImageButton") then
				local matched = false
				for assetName, assetData in pairs(Assets) do
					local baseFilename = assetData.filename:match("^(.*)%.%w+$")
					if baseFilename == descendant.Name then
						asset(assetName, descendant)
					end
				end
			end
		end
	end
	]]

	local Screen = Folder.Bracket:Clone()
	local Main = Screen.Main
	local Holder = Main.Holder

	local Topbar = Main.Topbar
	local TContainer = Holder.TContainer
	local TBContainer = Holder.TBContainer.Holder

	Main.Size = UDim2.new(0, Config.InitialWidth, 0, Config.InitialHeight)
	makeresizable(Main, Config.MinHeight, Config.MaxHeight, Config.MinWidth, Config.MaxWidth)

	Screen.Name = HttpService:GenerateGUID(false)
	Screen.Parent = Parent
	Topbar.WindowName.Text = Config.WindowName
	function Library:SetWindowName(str)
		Topbar.WindowName.Text = str
	end
	local TestScreenGui = Instance.new("ScreenGui")
	TestScreenGui.Parent = Screen

	local Notifications = nil
	if RunService:IsStudio() then
		Notifications = require(ReplicatedStorage.notif).New(TestScreenGui, Color3.fromRGB(255, 128, 64))
	else
		Notifications = loadstring(requesturl("https://raw.githubusercontent.com/nfpw/XXSCRIPT/refs/heads/main/Library/NotificationModule.lua"))().New(TestScreenGui, Config.Color)
	end
	repeat wait() until Notifications ~= nil

	local Toggle; Toggle = function(State) 
		if State then 
			Main.Visible = true 
			if WindowInit.ReopenButton then
				WindowInit.ReopenButton.Visible = true 
			end
		else 
			for _, Pallete in pairs(Screen:GetChildren()) do 
				if Pallete:IsA("Frame") and Pallete.Name ~= "Main" and Pallete.Name ~= "Hud" then 
					Pallete.Visible = false 
				end 
			end 
			Screen.ToolTip.Visible = false 
			Main.Visible = false
			if WindowInit.ReopenButton then
				WindowInit.ReopenButton.Visible = true 
			end
		end 
		Library.Toggle = State 
	end

	local function UpdateUIGradients(rootInstance: Instance, updateCallback: (UIGradient) -> ())
		for _, descendant in ipairs(rootInstance:GetDescendants()) do
			if descendant:IsA("UIGradient") then
				local parentName = descendant.Parent and descendant.Parent.Name
				if parentName ~= "BrightnessOverlay" and parentName ~= "SaturationOverlay" and parentName ~= "GradientFrame" and parentName ~= "ColorSlider" and parentName ~= "TransparencySlider" and parentName ~= "Frame" then
					pcall(function()
						updateCallback(descendant)
					end)
				end
			end
		end
	end

	RunService.RenderStepped:Connect(function(dt)
		UpdateUIGradients(Screen, function(gradient)
			gradient.Rotation = (gradient.Rotation + 45 * dt) % 360
		end)
	end)

	local ReopenButton = crebutton(Screen, Main, Config, Toggle)

	local SearchBar = Topbar.SearchBar
	SearchBar.MouseEnter:Connect(function()
		if not SearchBar:IsFocused() then
			TweenService:Create(SearchBar, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()
		end
	end)
	SearchBar.MouseLeave:Connect(function()
		if not SearchBar:IsFocused() then
			TweenService:Create(SearchBar, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(25, 25, 25)}):Play()
		end
	end)
	SearchBar.Focused:Connect(function()
		TweenService:Create(SearchBar, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}):Play()
	end)
	SearchBar.FocusLost:Connect(function()
		TweenService:Create(SearchBar, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(25, 25, 25)}):Play()
	end)

	makedraggable(Topbar, Main)

	local Close = Topbar.Close
	if IsMobile then
		Close.InputBegan:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
				Close.TextColor3 = Config.Color
			end
		end)
		Close.InputEnded:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
				Close.TextColor3 = Color3.fromRGB(150, 150, 150)
				Screen.ToolTip.Visible = false
				Toggle(false)
			end
		end)
	else
		Close.Visible = false
	end

	WindowInit.ReopenButton = ReopenButton
	WindowInit.ToggleVisibility = Toggle
	table.insert(Library.ColorTable, ReopenButton)

	local AllSections = {}
	local IsTabSwitching = false

	local function FilterSections(SearchText)
		SearchText = string.lower(SearchText)
		local CurrentTab = Library.CurrentTab or TContainer:FindFirstChild(Library.FirstTab .. " T")
		if not CurrentTab then return end
		for SectionFrame, SectionData in pairs(AllSections) do
			if SectionData.TabParent == CurrentTab then
				local SectionName = SectionData.Name
				local Found = string.find(string.lower(SectionName), SearchText)
				if SearchText == "" then
					SectionFrame.Visible = true
					SectionFrame.Title.TextColor3 = Color3.fromRGB(150, 150, 150)
					if SectionFrame:FindFirstChild("Highlight") then
						SectionFrame.Highlight:Destroy()
					end
				else
					if Found then
						SectionFrame.Visible = true
						SectionFrame.Title.TextColor3 = Config.Color
						if not SectionFrame:FindFirstChild("Highlight") then
							local Highlight = Instance.new("Frame")
							Highlight.Name = "Highlight"
							Highlight.Parent = SectionFrame
							Highlight.BackgroundColor3 = Config.Color
							Highlight.BorderSizePixel = 0
							Highlight.Position = UDim2.new(0, 0, 1, 0)
							Highlight.Size = UDim2.new(1, 0, 0, 2)
							Highlight.ZIndex = 2
							table.insert(Library.ColorTable, Highlight)
						else
							SectionFrame.Highlight.BackgroundColor3 = Config.Color
						end
					else
						SectionFrame.Visible = false
						SectionFrame.Title.TextColor3 = Color3.fromRGB(150, 150, 150)
						if SectionFrame:FindFirstChild("Highlight") then
							SectionFrame.Highlight:Destroy()
						end
					end
				end
			end
		end
	end

	SearchBar:GetPropertyChangedSignal("Text"):Connect(function()
		FilterSections(SearchBar.Text)
	end)

	SearchBar.Changed:Connect(function(Property)
		if Property == "Text" then
			FilterSections(SearchBar.Text)
		end
	end)

	local TransitionFrame = nil
	local function CreateTransitionFrame(Parent, Color) 
		if TransitionFrame then
			TransitionFrame:Destroy()
		end
		TransitionFrame = Instance.new("Frame")
		TransitionFrame.Name = "TransitionFrame"
		TransitionFrame.Parent = Parent
		TransitionFrame.BackgroundColor3 = Color or Color3.fromRGB(25, 25, 25)
		TransitionFrame.BorderSizePixel = 0
		TransitionFrame.Size = UDim2.new(0, 0, 1, 0)
		TransitionFrame.Position = UDim2.new(1, 0, 0, 0)
		TransitionFrame.AnchorPoint = Vector2.new(1, 0)
		TransitionFrame.ZIndex = 10
		if shared.Anka and shared.Anka.AnkaLoadAssets then
			TransitionFrame.Visible = false
		else
			TransitionFrame.Visible = true
		end
		local gradientClone = Folder.UIGradient:Clone()
		gradientClone.Parent = TransitionFrame
		return TransitionFrame
	end

	local function AnimateTabOut(Tab, TabButton, Callback)
		if not Tab or not Tab.Visible then
			if Callback then Callback() end
			return
		end
		local bac = Tab.BackgroundColor3 or Color3.fromRGB(25, 25, 25)
		local transition = CreateTransitionFrame(Tab.Parent, bac)
		local slideInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
		local slideTween = TweenService:Create(transition, slideInfo, {
			Size = UDim2.new(1, 0, 1, 0)
		})
		if TabButton then
			TweenService:Create(TabButton, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
				BackgroundTransparency = 1
			}):Play()
			local underline = TabButton:FindFirstChild("Underline")
			if underline then
				TweenService:Create(underline, TweenInfo.new(0.15, Enum.EasingStyle.Quad), {
					Size = UDim2.new(0, 0, 0, 2),
					Position = UDim2.new(0.5, 0, 1, -2)
				}):Play()
			end
		end
		slideTween.Completed:Connect(function()
			Tab.Visible = false
			if Callback then Callback() end
		end)
		slideTween:Play()
	end

	local function AnimateTabIn(Tab, TabButton)
		if not Tab then return end
		Tab.Visible = true
		if TransitionFrame then
			local slideInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
			TransitionFrame.AnchorPoint = Vector2.new(0, 0)
			TransitionFrame.Position = UDim2.new(0, 0, 0, 0)
			local slideTween = TweenService:Create(TransitionFrame, slideInfo, {
				Size = UDim2.new(0, 0, 1, 0)
			})
			slideTween.Completed:Connect(function()
				if TransitionFrame then
					TransitionFrame:Destroy()
					TransitionFrame = nil
				end
			end)
			slideTween:Play()
		end
		if TabButton then
			TweenService:Create(TabButton, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
				BackgroundTransparency = 0
			}):Play()
			local underline = TabButton:FindFirstChild("Underline")
			if underline then
				underline.Visible = true
				underline.Size = UDim2.new(0, 0, 0, 2)
				underline.Position = UDim2.new(0.5, 0, 1, -2)
				TweenService:Create(underline, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
					Size = UDim2.new(1, 0, 0, 2),
					Position = UDim2.new(0, 0, 1, -2)
				}):Play()
			end
		end
	end

	local function SwitchToTab(NewTab, NewTabButton)
		if IsTabSwitching or Library.CurrentTab == NewTab then return end
		IsTabSwitching = true
		for _, element in pairs(shared.Anka.Elements) do
			if element.Type == "ColorPicker" then
				element:ClosePallete()
			end
		end
		local OldTab = Library.CurrentTab
		local OldTabButton = nil
		if OldTab then
			local oldTabName = OldTab.Name:gsub(" T$", " TB")
			OldTabButton = TBContainer:FindFirstChild(oldTabName)
		end
		AnimateTabOut(OldTab, OldTabButton, function()
			Library.CurrentTab = NewTab
			AnimateTabIn(NewTab, NewTabButton)
			SearchBar.Text = ""
			FilterSections("")
			IsTabSwitching = false
		end)
	end

	local function CloseAll()
		for _, Tab in pairs(TContainer:GetChildren()) do
			if Tab:IsA("ScrollingFrame") then
				Tab.Visible = false
			end
		end
	end

	local function ResetAll()
		for _, TabButton in pairs(TBContainer:GetChildren()) do
			if TabButton:IsA("TextButton") then
				TabButton.BackgroundTransparency = 1
				local underline = TabButton:FindFirstChild("Underline")
				if underline then
					underline.Visible = false
				end
			end
		end
		for _, TabButton in pairs(TBContainer:GetChildren()) do
			if TabButton:IsA("TextButton") then
				TabButton.Size = UDim2.new(0, 480 / Library.TabCount, 1, 0)
			end
		end
		for _, Pallete in pairs(Screen:GetChildren()) do
			if Pallete:IsA("Frame") and Pallete.Name ~= "Main" then
				Pallete.Visible = false
			end
		end

		for SectionFrame, _ in pairs(AllSections) do
			SectionFrame.Title.TextColor3 = Color3.fromRGB(150, 150, 150)
			if SectionFrame:FindFirstChild("Highlight") then
				SectionFrame.Highlight:Destroy()
			end
		end
	end

	local function KeepFirst()
		for _, Tab in pairs(TContainer:GetChildren()) do
			if Tab:IsA("ScrollingFrame") then
				if Tab.Name == Library.FirstTab .. " T" then
					Tab.Visible = true
					Library.CurrentTab = Tab
				else
					Tab.Visible = false
				end
			end
		end
		for _, TabButton in pairs(TBContainer:GetChildren()) do
			if TabButton:IsA("TextButton") then
				if TabButton.Name == Library.FirstTab .. " TB" then
					TabButton.BackgroundTransparency = 0
					local underline = TabButton:FindFirstChild("Underline")
					if underline then
						underline.Visible = true
					end
				else
					TabButton.BackgroundTransparency = 1
				end
			end
		end
	end

	local function ChangeColor(Color)
		Config.Color = Color
		Notifications.AccentColor = Color
		for i, v in pairs(Library.ColorTable) do
			local isButtonElement = false
			if v.Parent and v.Parent.Name and string.find(v.Parent.Name, " B$") then
				isButtonElement = true
			elseif v.Name and string.find(v.Name, " B$") then
				isButtonElement = true
			elseif v.ClassName == "TextButton" or v.ClassName == "ImageButton" then
				if v.Parent and v.Parent.Parent and string.find(tostring(v.Parent.Parent), "Button") then
					isButtonElement = true
				end
			end
			if not isButtonElement then
				if v:IsA("ImageButton") then
					v.ImageColor3 = Color
				elseif v.Name == "GlowEffect" then
					v.BackgroundColor3 = Color
				elseif v:IsA("TextLabel") and v.Name == "ButtonText" then
					v.TextColor3 = Color
					if v:FindFirstChild("TextGradient") then
						v.TextGradient.Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0, Color),
							ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
						})
					end
				elseif v:IsA("Frame") and v.Name == "GradientFrame" then
					v.BackgroundColor3 = Color
				elseif v:IsA("UIGradient") then
					if v.Name == "TopGradient" then
						v.Color = ColorSequence.new{
							ColorSequenceKeypoint.new(0, Color),
							ColorSequenceKeypoint.new(0.25, Color:Lerp(Color3.fromRGB(180, 100, 160), 0.5)),
							ColorSequenceKeypoint.new(0.75, Color:Lerp(Color3.fromRGB(180, 230, 100), 0.5)),
							ColorSequenceKeypoint.new(1, Color:Lerp(Color3.fromRGB(180, 100, 160), 0.5))
						}
					elseif v.Name == "FrameGradient" then
						v.Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0, Color:Lerp(Color3.fromRGB(5, 5, 4), 0.1)),
							ColorSequenceKeypoint.new(0.5, Color3.fromRGB(5, 5, 4)),
							ColorSequenceKeypoint.new(1, Color:Lerp(Color3.fromRGB(5, 5, 4), 0.1))
						})
					elseif v.Name == "TextGradient" then
						v.Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0, Color),
							ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
						})
					end
				else
					local nognig = false
					local bipbopt = false
					if v.Parent and v.Parent.Name and string.find(v.Parent.Name, " T$") and v.Name == "Toggle" then
						nognig = true
					end
					if v.Parent and v.Parent.Name and string.find(v.Parent.Name, " T$") then
						if v.Name == "Background" or v.Name == "Title" then
							bipbopt = true
						end
					end
					if not nognig and not bipbopt then
						v.BackgroundColor3 = Color
					end
				end
			end
		end
		for UniqueID, Element in pairs(shared.Anka.Elements) do
			if Element.Type == "Toggle" and Element.UpdateColors then
				Element:UpdateColors()
			elseif Element.Type == "TextBox" and Element.UpdateColors then
				Element:UpdateColors()
			elseif Element.Type == "Button" and Element.UpdateColors then
				Element:UpdateColors()
			end
		end
		if SearchBar and SearchBar.Text ~= "" then
			FilterSections(SearchBar.Text)
		end
	end

	local function ChangeFont(Font)
		local function UpdateElementFont(element)
			if element:IsA("TextLabel") or element:IsA("TextButton") or element:IsA("TextBox") then
				element.Font = Font
			end
		end
		for _, child in pairs(Screen:GetDescendants()) do
			UpdateElementFont(child)
		end
		if Notifications and Notifications.Container then
			for _, child in pairs(Notifications.Container:GetDescendants()) do
				UpdateElementFont(child)
			end
		end
		for UniqueID, Element in pairs(shared.Anka.Elements) do
			if Element.UpdateFont then
				Element:UpdateFont(Font)
			elseif Element.Object then
				UpdateElementFont(Element.Object)
			end
		end
	end

	function WindowInit:ChangeColor(Color)
		ChangeColor(Color)
	end

	function WindowInit:Toggle(State)
		Toggle(State)
	end

	function WindowInit:SetBackground(ImageId)
		if shared.Anka.AnkaLoadAssets then
			Holder.Image = ImageId
		end
	end

	function WindowInit:Notify(title, content, duration)
		duration = duration or 15
		Notifications:CreateNotification(title, content, duration)
	end

	function WindowInit:SetBackgroundColor(Color)
		Holder.ImageColor3 = Color
	end

	function WindowInit:SetBackgroundTransparency(Transparency)
		Holder.ImageTransparency = Transparency
	end

	function WindowInit:SetTileOffset(Offset)
		Holder.TileSize = UDim2.new(0, Offset, 0, Offset)
	end

	function WindowInit:SetTileScale(Scale)
		Holder.TileSize = UDim2.new(Scale, 0, Scale, 0)
	end

	function WindowInit:SetFont(Font)
		ChangeFont(Font)
	end

	function WindowInit:CreateTab(Name: string): Tab
		local TabInit: Tab = {}
		local Tab = Folder.Tab:Clone()
		local TabButton = Folder.TabButton:Clone()

		Tab.Name = Name .. " T"
		Tab.Parent = TContainer

		TabButton.Name = Name .. " TB"
		TabButton.Parent = TBContainer
		TabButton.Title.Text = Name
		TabButton.BackgroundColor3 = Config.Color

		local Underline = Instance.new("Frame")
		Underline.Name = "Underline"
		Underline.Parent = TabButton
		Underline.BackgroundColor3 = Config.Color
		Underline.BorderSizePixel = 0
		Underline.Position = UDim2.new(0, 0, 1, -2)
		Underline.Size = UDim2.new(1, 0, 0, 2)
		Underline.Visible = false
		table.insert(Library.ColorTable, Underline)

		table.insert(Library.ColorTable, TabButton)
		Library.TabCount = Library.TabCount + 1
		if Library.TabCount == 1 then
			Library.FirstTab = Name
			Underline.Visible = true
		end

		CloseAll()
		ResetAll()
		KeepFirst()

		local function GetSide(Longest)
			if Longest then
				if Tab.LeftSide.ListLayout.AbsoluteContentSize.Y > Tab.RightSide.ListLayout.AbsoluteContentSize.Y then
					return Tab.LeftSide
				else
					return Tab.RightSide
				end
			else
				if Tab.LeftSide.ListLayout.AbsoluteContentSize.Y > Tab.RightSide.ListLayout.AbsoluteContentSize.Y then
					return Tab.RightSide
				else
					return Tab.LeftSide
				end
			end
		end

		TabButton.InputBegan:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
				SwitchToTab(Tab, TabButton)
			end
		end)

		TabButton.MouseEnter:Connect(function()
			if Library.CurrentTab ~= Tab then
				TweenService:Create(TabButton, TweenInfo.new(0.15, Enum.EasingStyle.Quad), {
					BackgroundTransparency = 0.7
				}):Play()
			end
		end)

		TabButton.MouseLeave:Connect(function()
			if Library.CurrentTab ~= Tab then
				TweenService:Create(TabButton, TweenInfo.new(0.15, Enum.EasingStyle.Quad), {
					BackgroundTransparency = 1
				}):Play()
			end
		end)

		Tab.LeftSide.ListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			if GetSide(true).Name == Tab.LeftSide.Name then
				Tab.CanvasSize = UDim2.new(0, 0, 0, Tab.LeftSide.ListLayout.AbsoluteContentSize.Y + 15)
			else
				Tab.CanvasSize = UDim2.new(0, 0, 0, Tab.RightSide.ListLayout.AbsoluteContentSize.Y + 15)
			end
		end)

		Tab.RightSide.ListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			if GetSide(true).Name == Tab.LeftSide.Name then
				Tab.CanvasSize = UDim2.new(0, 0, 0, Tab.LeftSide.ListLayout.AbsoluteContentSize.Y + 15)
			else
				Tab.CanvasSize = UDim2.new(0, 0, 0, Tab.RightSide.ListLayout.AbsoluteContentSize.Y + 15)
			end
		end)

		function TabInit:CreateSection(Name: string, Side: string?): Section
			local SectionInit: Section = {}
			local Section = Folder.Section:Clone()
			Section.Name = Name .. " S"

			local sslsid
			if Side then
				Side = Side:lower()
				if Side == "left" then
					sslsid = Tab.LeftSide
				elseif Side == "right" then
					sslsid = Tab.RightSide
				else
					sslsid = GetSide(false)
				end
			else
				sslsid = GetSide(false)
			end

			Section.Parent = sslsid

			Section.Title.Text = Name
			Section.Title.Size = UDim2.new(0, Section.Title.TextBounds.X + 10, 0, 2)
			AllSections[Section] = {
				Name = Name,
				TabParent = Tab
			}

			if string.find(Section.Parent.Name:lower(), "left") then
				Section.Parent.Padding.PaddingRight = UDim.new(0, 3)
			elseif string.find(Section.Parent.Name:lower(), "right") then
				Section.Parent.Padding.PaddingLeft = UDim.new(0, 3)
			end

			Section.Container.ListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				Section.Size = UDim2.new(1, 0, 0, Section.Container.ListLayout.AbsoluteContentSize.Y + 15)
			end)

			function SectionInit:SetVisible(Visible: boolean)
				Section.Visible = Visible
			end

			function SectionInit:IsVisible(): boolean
				return Section.Visible
			end

			function SectionInit:ToggleVisibility()
				Section.Visible = not Section.Visible
				return Section.Visible
			end

			function SectionInit:CreateLabel(Name: string, WrapText: boolean?): Element
				local LabelInit: Element = {}
				shared.Anka.ElementCounter += 1
				local UniqueID = Name .. " - " .. shared.Anka.ElementCounter
				local Label = Folder.Label:Clone()
				Label.Name = Name .. " L"
				Label.Parent = Section.Container
				Label.Text = Name
				Label.TextWrapped = WrapText or false

				if WrapText then
					Label.Size = UDim2.new(1, -10, 0, 0)
					Label.AutomaticSize = Enum.AutomaticSize.Y
				else
					Label.AutomaticSize = Enum.AutomaticSize.None
					Label.Size = UDim2.new(1, -10, 0, Label.TextBounds.Y)
				end

				function LabelInit:SetVisible(Visible: boolean)
					Label.Visible = Visible
				end

				function LabelInit:IsVisible(): boolean
					return Label.Visible
				end

				function LabelInit:ToggleVisibility()
					Label.Visible = not Label.Visible
					return Label.Visible
				end

				function LabelInit:UpdateText(Text)
					Label.Text = Text
					if not WrapText then
						Label.Size = UDim2.new(1, -10, 0, Label.TextBounds.Y)
					end
				end

				function LabelInit:SetWrapText(Wrap: boolean)
					Label.TextWrapped = Wrap
					if Wrap then
						Label.AutomaticSize = Enum.AutomaticSize.Y
						Label.Size = UDim2.new(1, -10, 0, 0)
					else
						Label.AutomaticSize = Enum.AutomaticSize.None
						Label.Size = UDim2.new(1, -10, 0, Label.TextBounds.Y)
					end
				end

				LabelInit.Type = "Label"
				LabelInit.UniqueID = UniqueID
				shared.Anka.Elements[UniqueID] = LabelInit
				return LabelInit
			end

			function SectionInit:CreateButton(Name: string, Callback: () -> (), WrapText: boolean?): Element
				local ButtonInit: Element = {} 
				shared.Anka.ElementCounter += 1 
				local UniqueID = Name .. " - " .. shared.Anka.ElementCounter 
				local Button = Folder.Button:Clone() 
				Button.Name = Name .. " B" 
				Button.Parent = Section.Container 
				Button.Title.Text = Name 
				Button.Title.TextWrapped = WrapText or false

				if WrapText then
					Button.Title.AutomaticSize = Enum.AutomaticSize.Y
					Button.Title.Size = UDim2.new(1, -10, 0, 0)
					Button.AutomaticSize = Enum.AutomaticSize.Y
					Button.Size = UDim2.new(1, -10, 0, 0)
				else
					Button.Title.AutomaticSize = Enum.AutomaticSize.None
					Button.AutomaticSize = Enum.AutomaticSize.None
					Button.Size = UDim2.new(1, -10, 0, Button.Title.TextBounds.Y + 5)
				end

				local DefaultColor = Color3.fromRGB(50, 50, 50)
				Button.BackgroundColor3 = DefaultColor
				local IsPressed = false
				local IsHovered = false
				table.insert(Library.ColorTable, Button)

				local TweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

				local function UpdateButtonColor()
					local TargetColor = IsPressed and Config.Color or IsHovered and Color3.fromRGB(60, 60, 60) or DefaultColor
					TweenService:Create(Button, TweenInfo, {BackgroundColor3 = TargetColor}):Play()
				end

				Button.InputBegan:Connect(function(Input) 
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then 
						IsPressed = true
						UpdateButtonColor()
					end 
				end)  

				Button.InputEnded:Connect(function(Input) 
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then 
						IsPressed = false
						UpdateButtonColor()
						Callback() 
					end 
				end)  

				Button.MouseEnter:Connect(function()
					IsHovered = true
					if not IsPressed then
						UpdateButtonColor()
					end
				end)

				Button.MouseLeave:Connect(function() 
					IsHovered = false
					UpdateButtonColor()
				end)

				function ButtonInit:AddToolTip(Name: string) 
					if tostring(Name):gsub(" ", "") ~= "" then 
						Button.MouseEnter:Connect(function() 
							Screen.ToolTip.Text = Name 
							Screen.ToolTip.Size = UDim2.new(0, Screen.ToolTip.TextBounds.X + 5, 0, Screen.ToolTip.TextBounds.Y + 5) 
							Screen.ToolTip.Visible = true 
						end)  

						Button.MouseLeave:Connect(function() 
							Screen.ToolTip.Visible = false 
						end)  

						Button.TouchTap:Connect(function() 
							Screen.ToolTip.Text = Name 
							Screen.ToolTip.Size = UDim2.new(0, Screen.ToolTip.TextBounds.X + 5, 0, Screen.ToolTip.TextBounds.Y + 5) 
							Screen.ToolTip.Visible = true 
							task.wait(2) 
							Screen.ToolTip.Visible = false 
						end) 
					end 
				end

				function ButtonInit:SetVisible(Visible: boolean)
					Button.Visible = Visible
				end

				function ButtonInit:IsVisible(): boolean
					return Button.Visible
				end

				function ButtonInit:ToggleVisibility()
					Button.Visible = not Button.Visible
					return Button.Visible
				end

				function ButtonInit:UpdateColors()
					UpdateButtonColor()
				end

				function ButtonInit:SetWrapText(Wrap: boolean)
					Button.Title.TextWrapped = Wrap
					if Wrap then
						Button.Title.AutomaticSize = Enum.AutomaticSize.Y
						Button.Title.Size = UDim2.new(1, -10, 0, 0)
						Button.AutomaticSize = Enum.AutomaticSize.Y
						Button.Size = UDim2.new(1, -10, 0, 0)
					else
						Button.Title.AutomaticSize = Enum.AutomaticSize.None
						Button.AutomaticSize = Enum.AutomaticSize.None
						Button.Size = UDim2.new(1, -10, 0, Button.Title.TextBounds.Y + 5)
					end
				end

				ButtonInit.Type = "Button" 
				ButtonInit.UniqueID = UniqueID 
				shared.Anka.Elements[UniqueID] = ButtonInit 
				return ButtonInit 
			end

			function SectionInit:CreateTextBox(Name: string, PlaceHolder: string, NumbersOnly: boolean, Callback: (Value: any) -> (), WrapText: boolean?): Element
				local TextBoxInit: Element = {}
				shared.Anka.ElementCounter += 1
				local UniqueID = Name .. " - " .. shared.Anka.ElementCounter
				local TextBox = Folder.TextBox:Clone()
				TextBox.Name = Name .. " T"
				TextBox.Parent = Section.Container
				TextBox.Title.Text = Name
				TextBox.Background.Input.PlaceholderText = PlaceHolder
				TextBox.Title.Size = UDim2.new(1, 0, 0, TextBox.Title.TextBounds.Y + 5)
				TextBox.Size = UDim2.new(1, -10, 0, TextBox.Title.TextBounds.Y + 25)

				table.insert(Library.ColorTable, TextBox.Background)
				table.insert(Library.ColorTable, TextBox.Title)

				local focusTweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
				local hoverTweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
				local tooltipTweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out)

				local originalBackgroundColor = TextBox.Background.BackgroundColor3
				local originalBorderColor = TextBox.Background.BorderColor3
				local originalTransparency = TextBox.Background.BackgroundTransparency
				local originalTitleColor = TextBox.Title.TextColor3

				TextBox.Title.TextWrapped = WrapText or false
				if WrapText then
					TextBox.Title.AutomaticSize = Enum.AutomaticSize.Y
					TextBox.Title.Size = UDim2.new(1, 0, 0, 0)
					TextBox.Size = UDim2.new(1, -10, 0, TextBox.Title.TextBounds.Y + 25)
				else
					TextBox.Title.AutomaticSize = Enum.AutomaticSize.None
				end

				function TextBoxInit:UpdateColors()
					if TextBox.Background.Input:IsFocused() then
						TextBox.Background.BorderColor3 = Config.Color
						TextBox.Title.TextColor3 = Config.Color
					else
						TextBox.Background.BorderColor3 = originalBorderColor
						TextBox.Title.TextColor3 = originalTitleColor
					end
				end

				TextBox.Background.Input.Focused:Connect(function()
					TweenService:Create(TextBox.Background, focusTweenInfo, {
						BackgroundColor3 = originalBackgroundColor:lerp(Color3.fromRGB(255, 255, 255), 0.1),
						BorderColor3 = Config.Color,
						BackgroundTransparency = math.max(0, originalTransparency - 0.1)
					}):Play()
					TweenService:Create(TextBox.Title, focusTweenInfo, {TextColor3 = Config.Color}):Play()
				end)

				TextBox.Background.Input.FocusLost:Connect(function()
					TweenService:Create(TextBox.Background, focusTweenInfo, {
						BackgroundColor3 = originalBackgroundColor,
						BorderColor3 = originalBorderColor,
						BackgroundTransparency = originalTransparency
					}):Play()
					TweenService:Create(TextBox.Title, focusTweenInfo, {TextColor3 = originalTitleColor}):Play()

					local inputText = TextBox.Background.Input.Text
					if NumbersOnly then
						local numberValue = tonumber(inputText)
						if numberValue then Callback(numberValue) end
					else 
						Callback(inputText)
					end
				end)

				TextBox.MouseEnter:Connect(function()
					if not TextBox.Background.Input:IsFocused() then
						TweenService:Create(TextBox.Background, hoverTweenInfo, {
							BackgroundColor3 = originalBackgroundColor:lerp(Color3.fromRGB(255, 255, 255), 0.05),
							BackgroundTransparency = math.max(0, originalTransparency - 0.05)
						}):Play()
					end
				end)

				TextBox.MouseLeave:Connect(function()
					if not TextBox.Background.Input:IsFocused() then
						TweenService:Create(TextBox.Background, hoverTweenInfo, {
							BackgroundColor3 = originalBackgroundColor,
							BackgroundTransparency = originalTransparency
						}):Play()
					end
				end)

				function TextBoxInit:SetValue(String)
					TextBox.Background.Input.Text = tostring(String)

					local highlightTween = TweenService:Create(TextBox.Background, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {
						BackgroundColor3 = originalBackgroundColor:lerp(Config.Color, 0.3)
					})

					highlightTween:Play()

					highlightTween.Completed:Connect(function()
						TweenService:Create(TextBox.Background, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
							BackgroundColor3 = originalBackgroundColor
						}):Play()
					end)

					Callback(String)
				end

				function TextBoxInit:GetValue()
					return TextBox.Background.Input.Text
				end

				function TextBoxInit:SetVisible(Visible: boolean)
					TextBox.Visible = Visible
				end

				function TextBoxInit:IsVisible(): boolean
					return TextBox.Visible
				end

				function TextBoxInit:ToggleVisibility()
					TextBox.Visible = not TextBox.Visible
					return TextBox.Visible
				end

				function TextBoxInit:AddToolTip(Name: string)
					if tostring(Name):gsub(" ", "") ~= "" then
						local originalTooltipTransparency = Screen.ToolTip.BackgroundTransparency
						local originalTooltipPosition = Screen.ToolTip.Position

						TextBox.MouseEnter:Connect(function()
							Screen.ToolTip.Text = Name
							Screen.ToolTip.Size = UDim2.new(0, Screen.ToolTip.TextBounds.X + 5, 0, Screen.ToolTip.TextBounds.Y + 5)
							Screen.ToolTip.BackgroundTransparency = 1
							Screen.ToolTip.TextTransparency = 1
							Screen.ToolTip.Position = originalTooltipPosition + UDim2.new(0, 0, 0, 10)
							Screen.ToolTip.Visible = true
							TweenService:Create(Screen.ToolTip, tooltipTweenInfo, {
								BackgroundTransparency = originalTooltipTransparency,
								TextTransparency = 0,
								Position = originalTooltipPosition
							}):Play()
						end)

						TextBox.MouseLeave:Connect(function()
							TweenService:Create(Screen.ToolTip, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
								BackgroundTransparency = 1,
								TextTransparency = 1,
								Position = originalTooltipPosition + UDim2.new(0, 0, 0, -5)
							}):Play():Wait()
							Screen.ToolTip.Visible = false
						end)

						TextBox.TouchTap:Connect(function()
							if not TextBox.Background.Input:IsFocused() then
								Screen.ToolTip.Text = Name
								Screen.ToolTip.Size = UDim2.new(0, Screen.ToolTip.TextBounds.X + 5, 0, Screen.ToolTip.TextBounds.Y + 5)
								Screen.ToolTip.BackgroundTransparency = 1
								Screen.ToolTip.TextTransparency = 1
								Screen.ToolTip.Position = originalTooltipPosition + UDim2.new(0, 0, 0, 10)
								Screen.ToolTip.Visible = true
								TweenService:Create(Screen.ToolTip, tooltipTweenInfo, {
									BackgroundTransparency = originalTooltipTransparency,
									TextTransparency = 0,
									Position = originalTooltipPosition
								}):Play()
								task.wait(2)
								TweenService:Create(Screen.ToolTip, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
									BackgroundTransparency = 1,
									TextTransparency = 1
								}):Play():Wait()
								Screen.ToolTip.Visible = false
							end
						end)
					end
				end

				TextBoxInit.Type = "TextBox"
				TextBoxInit.UniqueID = UniqueID
				shared.Anka.Elements[UniqueID] = TextBoxInit
				return TextBoxInit
			end

			function SectionInit:CreateToggle(Name: string, Default: boolean?, Callback: (State: boolean) -> (), Status: string?, Info: string?, WrapText: boolean?): Element
				local ToggleInit: Element = {}
				shared.Anka.ElementCounter += 1
				local UniqueID = Name .. " - " .. shared.Anka.ElementCounter
				local DefaultLocal = Default or false
				local StatusLocal = Status or "normal"
				local InfoLocal = Info
				local Toggle = Folder.Toggle:Clone()
				Toggle.Name = Name .. " T"
				Toggle.Parent = Section.Container
				Toggle.Title.Text = Name
				Toggle.Size = UDim2.new(1, -10, 0, Toggle.Title.TextBounds.Y + 5)

				local StatusConfig = {
					dangerous = {
						color = Color3.fromRGB(255, 85, 85),
						icon = "(!)",
						description = "Dangerous"
					},
					buggy = {
						color = Color3.fromRGB(255, 200, 0),
						icon = "(B)",
						description = "Buggy"
					},
					normal = {
						color = Config.Color or Color3.fromRGB(0, 162, 255),
						icon = "",
						description = "Normal"
					}
				}

				local StatusIndicator = Instance.new("TextLabel")
				StatusIndicator.Name = "StatusIndicator"
				StatusIndicator.Size = UDim2.new(0, 0, 1, 0)
				StatusIndicator.Position = UDim2.new(1, -5, 0, 0)
				StatusIndicator.BackgroundTransparency = 1
				StatusIndicator.Text = StatusConfig[StatusLocal].icon
				StatusIndicator.TextColor3 = StatusConfig[StatusLocal].color
				StatusIndicator.TextScaled = false
				StatusIndicator.Font = Enum.Font.SourceSans
				StatusIndicator.TextSize = Toggle.Title.TextSize
				StatusIndicator.Parent = Toggle
				StatusIndicator.ZIndex = Toggle.ZIndex + 1
				StatusIndicator.Visible = StatusLocal ~= "normal"

				if StatusLocal ~= "normal" then
					StatusIndicator.Size = UDim2.new(0, StatusIndicator.TextBounds.X + 4, 1, 0)
				end

				local InfoIndicator = Instance.new("TextButton")
				InfoIndicator.Name = "InfoIndicator"
				InfoIndicator.Size = UDim2.new(0, 0, 1, 0)
				InfoIndicator.Position = UDim2.new(1, -5, 0, 0)
				InfoIndicator.BackgroundTransparency = 1
				InfoIndicator.Text = "?"
				InfoIndicator.TextColor3 = Color3.fromRGB(150, 150, 150)
				InfoIndicator.TextScaled = false
				InfoIndicator.Font = Enum.Font.SourceSansBold
				InfoIndicator.TextSize = Toggle.Title.TextSize
				InfoIndicator.Parent = Toggle
				InfoIndicator.ZIndex = Toggle.ZIndex + 1
				InfoIndicator.Visible = InfoLocal ~= nil
				InfoIndicator.BorderSizePixel = 0

				if InfoLocal then
					InfoIndicator.Size = UDim2.new(0, InfoIndicator.TextBounds.X + 8, 0, InfoIndicator.TextBounds.X + 8)
					InfoIndicator.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
					InfoIndicator.BackgroundTransparency = 0.3
					local InfoCorner = Instance.new("UICorner")
					InfoCorner.CornerRadius = UDim.new(0.5, 0)
					InfoCorner.Parent = InfoIndicator
					InfoIndicator.Position = UDim2.new(1, -InfoIndicator.Size.X.Offset - 5, 0.5, -InfoIndicator.Size.Y.Offset/2)
				end

				local InfoTooltip = nil
				if InfoLocal then
					InfoTooltip = Instance.new("Frame")
					InfoTooltip.Name = "InfoTooltip"
					InfoTooltip.Size = UDim2.new(0, 200, 0, 50)
					InfoTooltip.Position = UDim2.new(0, 0, 1, 5)
					InfoTooltip.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
					InfoTooltip.BorderSizePixel = 0
					InfoTooltip.Visible = false
					InfoTooltip.ZIndex = Toggle.ZIndex + 10
					InfoTooltip.Parent = Toggle

					local TooltipCorner = Instance.new("UICorner")
					TooltipCorner.CornerRadius = UDim.new(0, 4)
					TooltipCorner.Parent = InfoTooltip

					local TooltipShadow = Instance.new("Frame")
					TooltipShadow.Name = "Shadow"
					TooltipShadow.Size = UDim2.new(1, 4, 1, 4)
					TooltipShadow.Position = UDim2.new(0, 2, 0, 2)
					TooltipShadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
					TooltipShadow.BackgroundTransparency = 0.8
					TooltipShadow.BorderSizePixel = 0
					TooltipShadow.ZIndex = InfoTooltip.ZIndex - 1
					TooltipShadow.Parent = InfoTooltip

					local ShadowCorner = TooltipCorner:Clone()
					ShadowCorner.Parent = TooltipShadow

					local TooltipText = Instance.new("TextLabel")
					TooltipText.Name = "Text"
					TooltipText.Size = UDim2.new(1, -10, 1, -10)
					TooltipText.Position = UDim2.new(0, 5, 0, 5)
					TooltipText.BackgroundTransparency = 1
					TooltipText.Text = InfoLocal
					TooltipText.TextColor3 = Color3.fromRGB(255, 255, 255)
					TooltipText.TextScaled = false
					TooltipText.Font = Enum.Font.SourceSans
					TooltipText.TextSize = 14
					TooltipText.TextWrapped = true
					TooltipText.TextXAlignment = Enum.TextXAlignment.Left
					TooltipText.TextYAlignment = Enum.TextYAlignment.Top
					TooltipText.ZIndex = InfoTooltip.ZIndex + 1
					TooltipText.Parent = InfoTooltip

					local textBounds = TooltipText.TextBounds
					InfoTooltip.Size = UDim2.new(0, math.max(textBounds.X + 10, 150), 0, textBounds.Y + 10)
					InfoTooltip.Position = UDim2.new(1, -InfoTooltip.Size.X.Offset, 1, 5)
				end

				local function UpdateTitleSize()
					local keybindWidth = Toggle.Keybind.Visible and Toggle.Keybind.Size.X.Offset or 0
					local statusWidth = 0
					local infoWidth = 0

					if StatusLocal ~= "normal" and StatusIndicator.Visible then
						statusWidth = StatusIndicator.Size.X.Offset + 5
					end

					if InfoLocal and InfoIndicator.Visible then
						infoWidth = InfoIndicator.Size.X.Offset + 5
					end

					local totalOffset = keybindWidth + statusWidth + infoWidth + 15
					Toggle.Title.Size = UDim2.new(1, -totalOffset, 1, 0)

					local currentRightOffset = 5

					if Toggle.Keybind.Visible then
						currentRightOffset += keybindWidth
					end

					if InfoLocal and InfoIndicator.Visible then
						InfoIndicator.Position = UDim2.new(1, -currentRightOffset - InfoIndicator.Size.X.Offset, 0.5, -InfoIndicator.Size.Y.Offset/2)
						currentRightOffset += InfoIndicator.Size.X.Offset + 5
					end

					if StatusLocal ~= "normal" and StatusIndicator.Visible then
						StatusIndicator.Position = UDim2.new(1, -currentRightOffset - StatusIndicator.Size.X.Offset, 0, 0)
					end
				end

				local function UpdateTextSizes()
					StatusIndicator.TextSize = Toggle.Title.TextSize
					if InfoLocal then
						InfoIndicator.TextSize = Toggle.Title.TextSize
						InfoIndicator.Size = UDim2.new(0, InfoIndicator.TextBounds.X + 8, 0, InfoIndicator.TextBounds.X + 8)
					end

					if StatusLocal ~= "normal" then
						StatusIndicator.Size = UDim2.new(0, StatusIndicator.TextBounds.X + 4, 1, 0)
					end

					UpdateTitleSize()
				end

				StatusIndicator:GetPropertyChangedSignal("TextBounds"):Connect(function()
					if StatusLocal ~= "normal" then
						StatusIndicator.Size = UDim2.new(0, StatusIndicator.TextBounds.X + 4, 1, 0)
						UpdateTitleSize()
					end
				end)

				if InfoLocal then
					InfoIndicator:GetPropertyChangedSignal("TextBounds"):Connect(function()
						InfoIndicator.Size = UDim2.new(0, InfoIndicator.TextBounds.X + 8, 0, InfoIndicator.TextBounds.X + 8)
						UpdateTitleSize()
					end)
				end

				UpdateTitleSize()

				if InfoLocal then
					local function ShowInfoTooltip()
						if InfoTooltip then
							InfoTooltip.Visible = true
							InfoTooltip.Size = UDim2.new(0, 0, 0, InfoTooltip.Size.Y.Offset)
							local showTween = TweenService:Create(InfoTooltip, 
								TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
									Size = UDim2.new(0, math.max(InfoTooltip.Text.TextBounds.X + 10, 150), 0, InfoTooltip.Text.TextBounds.Y + 10)
								})
							showTween:Play()
						end
					end

					local function HideInfoTooltip()
						if InfoTooltip then
							local hideTween = TweenService:Create(InfoTooltip, 
								TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
									Size = UDim2.new(0, 0, 0, InfoTooltip.Size.Y.Offset)
								})
							hideTween:Play()
							hideTween.Completed:Connect(function()
								InfoTooltip.Visible = false
							end)
						end
					end

					InfoIndicator.MouseEnter:Connect(ShowInfoTooltip)
					InfoIndicator.MouseLeave:Connect(HideInfoTooltip)
					InfoIndicator.TouchTap:Connect(function()
						ShowInfoTooltip()
						task.wait(3)
						HideInfoTooltip()
					end)

					InfoIndicator.MouseEnter:Connect(function()
						local hoverTween = TweenService:Create(InfoIndicator, 
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								TextColor3 = Color3.fromRGB(255, 255, 255),
								BackgroundTransparency = 0.1
							})
						hoverTween:Play()
					end)

					InfoIndicator.MouseLeave:Connect(function()
						local unhoverTween = TweenService:Create(InfoIndicator, 
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								TextColor3 = Color3.fromRGB(150, 150, 150),
								BackgroundTransparency = 0.3
							})
						unhoverTween:Play()
					end)
				end

				table.insert(Library.ColorTable, Toggle.Toggle)

				local ToggleState = false

				local toggleAnimInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
				local textAnimInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
				local glowAnimInfo = TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true)
				local statusAnimInfo = TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out)

				local GlowFrame = Instance.new("Frame")
				GlowFrame.Name = "GlowEffect"
				GlowFrame.Size = UDim2.new(1, 4, 1, 4)
				GlowFrame.Position = UDim2.new(0, -2, 0, -2)
				GlowFrame.BackgroundColor3 = StatusConfig[StatusLocal].color
				GlowFrame.BackgroundTransparency = 1
				GlowFrame.BorderSizePixel = 0
				GlowFrame.Parent = Toggle.Toggle
				GlowFrame.ZIndex = Toggle.Toggle.ZIndex + 1

				if StatusLocal == "normal" then
					table.insert(Library.ColorTable, GlowFrame)
				end

				if Toggle.Toggle:FindFirstChild("UICorner") then
					local GlowCorner = Toggle.Toggle.UICorner:Clone()
					GlowCorner.CornerRadius = UDim.new(0, GlowCorner.CornerRadius.Offset + 2)
					GlowCorner.Parent = GlowFrame
				end

				local function SetState(State)
					TweenService:Create(Toggle.Toggle, toggleAnimInfo, {}):Cancel()
					TweenService:Create(Toggle.Title, textAnimInfo, {}):Cancel()
					TweenService:Create(GlowFrame, glowAnimInfo, {}):Cancel()

					local lamecolst = StatusConfig[StatusLocal].color

					if State then
						local toggleTween = TweenService:Create(Toggle.Toggle, toggleAnimInfo, {
							BackgroundColor3 = lamecolst
						})

						local textTween = TweenService:Create(Toggle.Title, textAnimInfo, {
							TextColor3 = lamecolst,
							TextStrokeTransparency = 0.8
						})

						local glowTween = TweenService:Create(GlowFrame, glowAnimInfo, {
							BackgroundTransparency = 0.7
						})

						local statusPulseTween = TweenService:Create(StatusIndicator, statusAnimInfo, {
							TextTransparency = 0.3
						})

						toggleTween:Play()
						textTween:Play()
						glowTween:Play()
						if StatusLocal ~= "normal" then
							statusPulseTween:Play()
						end
					else
						local toggleTween = TweenService:Create(Toggle.Toggle, toggleAnimInfo, {
							BackgroundColor3 = Color3.fromRGB(50, 50, 50)
						})

						local textTween = TweenService:Create(Toggle.Title, textAnimInfo, {
							TextColor3 = Color3.fromRGB(200, 200, 200),
							TextStrokeTransparency = 1
						})

						local glowTween = TweenService:Create(GlowFrame, toggleAnimInfo, {
							BackgroundTransparency = 1
						})

						local statusResetTween = TweenService:Create(StatusIndicator, statusAnimInfo, {
							TextTransparency = 0
						})

						toggleTween:Play()
						textTween:Play()
						glowTween:Play()
						if StatusLocal ~= "normal" then
							statusResetTween:Play()
						end
					end

					ToggleState = State
					Callback(State)
				end

				Toggle.MouseEnter:Connect(function()
					local lamecolst = StatusConfig[StatusLocal].color

					if not ToggleState then
						local hoverTween = TweenService:Create(Toggle.Toggle, 
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								BackgroundColor3 = Color3.fromRGB(70, 70, 70)
							})
						hoverTween:Play()
					end

					local titleHoverTween = TweenService:Create(Toggle.Title, 
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							TextColor3 = ToggleState and lamecolst or Color3.fromRGB(255, 255, 255)
						})
					titleHoverTween:Play()

					if StatusLocal ~= "normal" then
						local statusHoverTween = TweenService:Create(StatusIndicator,
							TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								TextTransparency = 0.2
							})
						statusHoverTween:Play()
					end
				end)

				Toggle.MouseLeave:Connect(function()
					local lamecolst = StatusConfig[StatusLocal].color

					if not ToggleState then
						local unhoverTween = TweenService:Create(Toggle.Toggle, 
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								BackgroundColor3 = Color3.fromRGB(50, 50, 50)
							})
						unhoverTween:Play()
					end

					local titleUnhoverTween = TweenService:Create(Toggle.Title, 
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							TextColor3 = ToggleState and lamecolst or Color3.fromRGB(200, 200, 200)
						})
					titleUnhoverTween:Play()

					if StatusLocal ~= "normal" then
						local statusUnhoverTween = TweenService:Create(StatusIndicator,
							TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								TextTransparency = ToggleState and 0.3 or 0
							})
						statusUnhoverTween:Play()
					end
				end)

				function ToggleInit:SetState(State)
					SetState(State)
				end

				function ToggleInit:GetState()
					return ToggleState
				end

				function ToggleInit:SetStatus(NewStatus)
					if StatusConfig[NewStatus] then
						StatusLocal = NewStatus
						local newconfig = StatusConfig[NewStatus]

						StatusIndicator.Text = newconfig.icon
						StatusIndicator.TextColor3 = newconfig.color
						StatusIndicator.Visible = NewStatus ~= "normal"

						GlowFrame.BackgroundColor3 = newconfig.color

						if NewStatus ~= "normal" then
							StatusIndicator.Size = UDim2.new(0, StatusIndicator.TextBounds.X + 4, 1, 0)
						end

						UpdateTitleSize()

						if ToggleState then
							Toggle.Toggle.BackgroundColor3 = newconfig.color
							Toggle.Title.TextColor3 = newconfig.color
						end
					end
				end

				function ToggleInit:GetStatus()
					return StatusLocal
				end

				function ToggleInit:SetInfo(NewInfo)
					InfoLocal = NewInfo
					if InfoLocal then
						InfoIndicator.Visible = true
						if InfoTooltip then
							InfoTooltip.Text.Text = InfoLocal
							local textBounds = InfoTooltip.Text.TextBounds
							InfoTooltip.Size = UDim2.new(0, math.max(textBounds.X + 10, 150), 0, textBounds.Y + 10)
						end
					else
						InfoIndicator.Visible = false
						if InfoTooltip then
							InfoTooltip.Visible = false
						end
					end
					UpdateTitleSize()
				end

				function ToggleInit:GetInfo()
					return InfoLocal
				end

				function ToggleInit:UpdateColors()
					if StatusLocal == "normal" then
						local newcolor = Config.Color or Color3.fromRGB(0, 162, 255)
						StatusConfig.normal.color = newcolor

						if ToggleState then
							Toggle.Toggle.BackgroundColor3 = newcolor
							Toggle.Title.TextColor3 = newcolor
						end
						GlowFrame.BackgroundColor3 = newcolor

						pcall(function()
							if Toggle.Title.TextColor3 ~= Color3.fromRGB(200, 200, 200) and 
								Toggle.Title.TextColor3 ~= Color3.fromRGB(255, 255, 255) then
								Toggle.Title.TextColor3 = newcolor
							end
						end)
					end
				end

				Toggle.InputBegan:Connect(function(Input)
					if UserInputService:GetFocusedTextBox() == nil then
						if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
							ToggleState = not ToggleState
							SetState(ToggleState)
						end
					end
				end)

				function ToggleInit:AddToolTip(Name)
					local TooltipText = Name
					if StatusLocal ~= "normal" then
						TooltipText = Name .. " (" .. StatusConfig[StatusLocal].description .. ")"
					end

					if tostring(TooltipText):gsub(" ", "") ~= "" then
						Toggle.MouseEnter:Connect(function()
							Screen.ToolTip.Text = TooltipText
							Screen.ToolTip.Size = UDim2.new(0, Screen.ToolTip.TextBounds.X + 5, 0, Screen.ToolTip.TextBounds.Y + 5)
							Screen.ToolTip.Visible = true
						end)

						Toggle.MouseLeave:Connect(function()
							Screen.ToolTip.Visible = false
						end)

						Toggle.TouchTap:Connect(function()
							Screen.ToolTip.Text = TooltipText
							Screen.ToolTip.Size = UDim2.new(0, Screen.ToolTip.TextBounds.X + 5, 0, Screen.ToolTip.TextBounds.Y + 5)
							Screen.ToolTip.Visible = true
							task.wait(2)
							Screen.ToolTip.Visible = false
						end)
					end
				end

				local KeybindObject = nil
				local KeybindMode = "toggle"

				function ToggleInit:CreateKeybind(Bind, Callback, DefaultMode)
					if UserInputService.TouchEnabled then
						return {
							SetBind = function() end,
							GetBind = function() return Enum.KeyCode.Unknown end,
							SetMode = function() end,
							GetMode = function() return "Toggle" end
						}
					end

					local KeybindInit = {}
					Bind = (typeof(Bind) == "EnumItem" and tostring(Bind):gsub("Enum.KeyCode.", "")) or Bind or "NONE"

					local KeybindMode = (DefaultMode == "Hold" and "Hold") or "Toggle"

					local WaitingForBind = false
					local Selected = Bind
					local Blacklist = {}

					Toggle.Keybind.Visible = true
					Toggle.Keybind.Text = "[ " .. Bind .. " ]"

					UpdateTitleSize()

					local ModePopup = Toggle:FindFirstChild("ModePopup")
					local innerFrame = ModePopup and ModePopup.BorderFrame1.BorderFrame2.BorderFrame3:FindFirstChild("InnerFrame")
					local ToggleModeButton = innerFrame and innerFrame:FindFirstChild("ToggleMode")
					local HoldModeButton = innerFrame and innerFrame:FindFirstChild("HoldMode")
					local RemoveKeybindButton = innerFrame and innerFrame:FindFirstChild("RemoveKeybind")

					local function UpdateSelectedButton()
						if ToggleModeButton then
							local existingGradient = ToggleModeButton:FindFirstChild("SelectionGradient")
							if existingGradient then
								existingGradient:Destroy()
							end
						end

						if HoldModeButton then
							local existingGradient = HoldModeButton:FindFirstChild("SelectionGradient")
							if existingGradient then
								existingGradient:Destroy()
							end
						end

						local selectedButton = (KeybindMode == "Toggle" and ToggleModeButton) or HoldModeButton
						if selectedButton then
							local gradient = Instance.new("UIGradient")
							gradient.Name = "SelectionGradient"
							gradient.Color = ColorSequence.new({
								ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 165, 0)),
								ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 0))
							})
							gradient.Rotation = 90
							gradient.Parent = selectedButton
						end
					end

					if ToggleModeButton and HoldModeButton then
						UpdateSelectedButton()
					end

					if ToggleModeButton then
						ToggleModeButton.MouseButton1Click:Connect(function()
							KeybindMode = "Toggle"
							UpdateSelectedButton()
							ModePopup.Visible = false
						end)
					end

					if HoldModeButton then
						HoldModeButton.MouseButton1Click:Connect(function()
							KeybindMode = "Hold"
							UpdateSelectedButton()
							ModePopup.Visible = false
						end)
					end

					if RemoveKeybindButton then
						RemoveKeybindButton.MouseButton1Click:Connect(function()
							Toggle.Keybind.Text = "[ NONE ]"
							Selected = "NONE"
							ModePopup.Visible = false
						end)
					end

					Toggle.Keybind.MouseButton2Click:Connect(function()
						if ModePopup then
							ModePopup.Visible = not ModePopup.Visible
							ModePopup.Position = UDim2.new(0, Toggle.Keybind.AbsolutePosition.X - Toggle.AbsolutePosition.X, 1, 5)
						end
					end)

					Toggle.Keybind.InputBegan:Connect(function(Input)
						if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
							Toggle.Keybind.Text = "[ ... ]"
							WaitingForBind = true

							local keybindFlash = TweenService:Create(Toggle.Keybind, 
								TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
									TextTransparency = 0.5
								})
							keybindFlash:Play()

							local connection; connection = Toggle.Keybind:GetPropertyChangedSignal("Text"):Connect(function()
								if Toggle.Keybind.Text ~= "[ ... ]" then
									keybindFlash:Cancel()
									Toggle.Keybind.TextTransparency = 0
									connection:Disconnect()
								end
							end)
						end
					end)

					Toggle.Keybind:GetPropertyChangedSignal("TextBounds"):Connect(function()
						Toggle.Keybind.Size = UDim2.new(0, Toggle.Keybind.TextBounds.X, 1, 0)
						UpdateTitleSize()
					end)

					UserInputService.InputBegan:Connect(function(Input)
						if UserInputService:GetFocusedTextBox() == nil then
							if WaitingForBind and Input.UserInputType == Enum.UserInputType.Keyboard then
								local Key = tostring(Input.KeyCode):gsub("Enum.KeyCode.", "")
								if not table.find(Blacklist, Key) then
									Toggle.Keybind.Text = "[ " .. Key .. " ]"
									Selected = Key
									if Callback then
										Callback(Key)
									end
								else
									Toggle.Keybind.Text = "[ NONE ]"
									Selected = "NONE"
								end
								WaitingForBind = false
							elseif Input.UserInputType == Enum.UserInputType.Keyboard then
								local Key = tostring(Input.KeyCode):gsub("Enum.KeyCode.", "")
								if Key == Selected then
									if KeybindMode == "Toggle" then
										ToggleState = not ToggleState
										SetState(ToggleState)
										if Callback then
											Callback(Key)
										end
									elseif KeybindMode == "Hold" then
										SetState(true)
										if Callback then
											Callback(Key)
										end
									end
								end
							end
						end
					end)

					UserInputService.InputEnded:Connect(function(Input)
						if KeybindMode == "Hold" and Input.UserInputType == Enum.UserInputType.Keyboard then
							local Key = tostring(Input.KeyCode):gsub("Enum.KeyCode.", "")
							if Key == Selected then
								SetState(false)
							end
						end
					end)

					function KeybindInit:SetBind(Key)
						local keyString = (typeof(Key) == "EnumItem" and tostring(Key):gsub("Enum.KeyCode.", "")) or Key
						Toggle.Keybind.Text = "[ " .. keyString .. " ]"
						Selected = keyString
					end

					function KeybindInit:GetBind()
						local success, enum = pcall(function() return Enum.KeyCode[Selected] end)
						return success and enum or Enum.KeyCode.Unknown
					end

					function KeybindInit:SetMode(Mode)
						if Mode == "Toggle" or Mode == "Hold" then
							KeybindMode = Mode
							UpdateSelectedButton()
						end
					end

					function KeybindInit:GetMode()
						return KeybindMode
					end

					KeybindObject = KeybindInit
					return KeybindInit
				end

				function ToggleInit:GetKeybind()
					return KeybindObject
				end

    			function ToggleInit:SetVisible(Visible: boolean)
        			Toggle.Visible = Visible
    			end

    			function ToggleInit:IsVisible(): boolean
       	 			return Toggle.Visible
    			end

    			function ToggleInit:ToggleVisibility()
        			Toggle.Visible = not Toggle.Visible
        			return Toggle.Visible
    			end

    			Toggle.Title.TextWrapped = WrapText or false
    			if WrapText then
        			Toggle.Title.AutomaticSize = Enum.AutomaticSize.Y
        			Toggle.Size = UDim2.new(1, -10, 0, 0)
        			Toggle.AutomaticSize = Enum.AutomaticSize.Y
    			else
        			Toggle.Title.AutomaticSize = Enum.AutomaticSize.None
    			end

				ToggleInit.Type = "Toggle"
				ToggleInit.UniqueID = UniqueID
				shared.Anka.Elements[UniqueID] = ToggleInit
				SetState(DefaultLocal)
				return ToggleInit
			end

			function SectionInit:CreateSlider(Name: string, Min: number, Max: number, Default: number?, Precise: boolean?, Callback: (Value: number) -> (), WrapText: boolean?): Element
				local SliderInit: Element = {}
				shared.Anka.ElementCounter += 1
				local UniqueID = Name .. " - " .. shared.Anka.ElementCounter
				local DefaultLocal = Default or 50
				local Slider = Folder.Slider:Clone()
				Slider.Name = Name .. " S"
				Slider.Parent = Section.Container

				Slider.Title.Text = Name
				Slider.Slider.Bar.Size = UDim2.new(Min / Max, 0, 1, 0)
				Slider.Slider.Bar.BackgroundColor3 = Config.Color
				Slider.Value.PlaceholderText = tostring(Min / Max)
				Slider.Title.Size = UDim2.new(1, 0, 0, Slider.Title.TextBounds.Y + 5)
				Slider.Size = UDim2.new(1, -10, 0, Slider.Title.TextBounds.Y + 15)
				table.insert(Library.ColorTable, Slider.Slider.Bar)

				local GlowFrame = Instance.new("Frame")
				GlowFrame.Name = "GlowEffect"
				GlowFrame.Size = UDim2.new(1, 6, 1, 6)
				GlowFrame.Position = UDim2.new(0, -3, 0, -3)
				GlowFrame.BackgroundColor3 = Config.Color or Color3.fromRGB(0, 162, 255)
				GlowFrame.BackgroundTransparency = 1
				GlowFrame.BorderSizePixel = 0
				GlowFrame.ZIndex = Slider.Slider.Bar.ZIndex + 1
				GlowFrame.Parent = Slider.Slider.Bar
				table.insert(Library.ColorTable, GlowFrame)
				if Slider.Slider.Bar:FindFirstChild("UICorner") then
					local GlowCorner = Slider.Slider.Bar.UICorner:Clone()
					GlowCorner.CornerRadius = UDim.new(0, GlowCorner.CornerRadius.Offset + 2)
					GlowCorner.Parent = GlowFrame
				end

				local glowAnimInfo = TweenInfo.new(
					0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true, 0
				)
				local function playGlow()
					local glowTween = TweenService:Create(GlowFrame, glowAnimInfo, {BackgroundTransparency = 0.7})
					glowTween:Play()
					return glowTween
				end
				local function stopGlow()
					TweenService:Create(GlowFrame, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
				end

				local GlobalSliderValue = 0
				local Dragging = false

				local function Sliding(Input)
					local Position = UDim2.new(math.clamp((Input.Position.X - Slider.Slider.AbsolutePosition.X) / Slider.Slider.AbsoluteSize.X, 0, 1), 0, 1, 0)
					Slider.Slider.Bar.Size = Position
					local SliderPrecise = ((Position.X.Scale * Max) / Max) * (Max - Min) + Min
					local SliderNonPrecise = math.floor(((Position.X.Scale * Max) / Max) * (Max - Min) + Min)
					local SliderValue = Precise and SliderNonPrecise or SliderPrecise
					SliderValue = tonumber(string.format("%.2f", SliderValue))
					GlobalSliderValue = SliderValue
					Slider.Value.PlaceholderText = tostring(SliderValue)
					Callback(GlobalSliderValue)
				end

				local function SetValue(Value)
					GlobalSliderValue = Value
					Slider.Slider.Bar.Size = UDim2.new(Value / Max, 0, 1, 0)
					Slider.Value.PlaceholderText = Value
					Callback(Value)
				end

				Slider.Value.FocusLost:Connect(function()
					if not tonumber(Slider.Value.Text) then
						Slider.Value.Text = GlobalSliderValue
					elseif Slider.Value.Text == "" or tonumber(Slider.Value.Text) <= Min then
						Slider.Value.Text = Min
					elseif Slider.Value.Text == "" or tonumber(Slider.Value.Text) >= Max then
						Slider.Value.Text = Max
					end

					GlobalSliderValue = Slider.Value.Text
					Slider.Slider.Bar.Size = UDim2.new(Slider.Value.Text / Max, 0, 1, 0)
					Slider.Value.PlaceholderText = Slider.Value.Text
					Callback(tonumber(Slider.Value.Text))
					Slider.Value.Text = ""
				end)

				Slider.InputBegan:Connect(function(Input)
					if UserInputService:GetFocusedTextBox() == nil then
						if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
							Sliding(Input)
							Dragging = true
							playGlow()
						end
					end
				end)

				Slider.InputEnded:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
						Dragging = false
						stopGlow()
					end
				end)

				UserInputService.InputChanged:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
						if Dragging then
							Sliding(Input)
						end
					end
				end)

				Slider.MouseEnter:Connect(function()
					if not Dragging then playGlow() end
				end)
				Slider.MouseLeave:Connect(function()
					if not Dragging then stopGlow() end
				end)

				function SliderInit:SetValue(Value)
					SetValue(Value)
				end

				function SliderInit:GetValue()
					return GlobalSliderValue
				end

				function SliderInit:AddToolTip(Name)
					if tostring(Name):gsub(" ", "") ~= "" then
						Slider.MouseEnter:Connect(function()
							Screen.ToolTip.Text = Name
							Screen.ToolTip.Size = UDim2.new(0, Screen.ToolTip.TextBounds.X + 5, 0, Screen.ToolTip.TextBounds.Y + 5)
							Screen.ToolTip.Visible = true
						end)

						Slider.MouseLeave:Connect(function()
							Screen.ToolTip.Visible = false
						end)

						Slider.TouchTap:Connect(function()
							if not Slider.Value:IsFocused() then
								Screen.ToolTip.Text = Name
								Screen.ToolTip.Size = UDim2.new(0, Screen.ToolTip.TextBounds.X + 5, 0, Screen.ToolTip.TextBounds.Y + 5)
								Screen.ToolTip.Visible = true
								task.wait(2)
								Screen.ToolTip.Visible = false
							end
						end)
					end
				end

				function SliderInit:SetVisible(Visible: boolean)
					Slider.Visible = Visible
				end

				function SliderInit:IsVisible(): boolean
					return Slider.Visible
				end

				function SliderInit:ToggleVisibility()
					Slider.Visible = not Slider.Visible
					return Slider.Visible
				end

				Slider.Title.TextWrapped = WrapText or false
				if WrapText then
					Slider.Title.AutomaticSize = Enum.AutomaticSize.Y
					Slider.Title.Size = UDim2.new(1, 0, 0, 0)
					Slider.AutomaticSize = Enum.AutomaticSize.Y
				else
					Slider.Title.AutomaticSize = Enum.AutomaticSize.None
				end

				SetValue(DefaultLocal)
				SliderInit.Type = "Slider"
				SliderInit.UniqueID = UniqueID
				shared.Anka.Elements[UniqueID] = SliderInit
				return SliderInit
			end

			function SectionInit:CreateDropdown(Name: string, OptionTable: {string}, Callback: (Value: any) -> (), InitialValue: any?, Multi: boolean?, WrapText: boolean?): Element
				local DropdownInit: Element = {}
				shared.Anka.ElementCounter += 1
				local UniqueID = Name .. " - " .. shared.Anka.ElementCounter
				local Dropdown = Folder.Dropdown:Clone()
				Dropdown.Name = Name .. (Multi and " MD" or " D")
				Dropdown.Parent = Section.Container

				Dropdown.Title.Text = Name
				Dropdown.Title.Size = UDim2.new(1, 0, 0, Dropdown.Title.TextBounds.Y + 5)
				Dropdown.Container.Position = UDim2.new(0, 0, 0, Dropdown.Title.TextBounds.Y + 5)
				Dropdown.Size = UDim2.new(1, -10, 0, Dropdown.Title.TextBounds.Y + 25)
				Dropdown.Container.Holder.Size = UDim2.new(1, -5, 0, 0)
				Dropdown.Container.Holder.Visible = false

				local DropdownToggle = false
				local SelectedOptions = {}
				local CurrentSelectedOption = nil
				local isAnimating = false

				local collapsedSize = Dropdown.Title.TextBounds.Y + 25
				local expandedSize = 0
				local holderExpandedSize = 0

				local springInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
				local hoverInfo = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

				local function PreCalculateSizes()
					holderExpandedSize = Dropdown.Container.Holder.Container.ListLayout.AbsoluteContentSize.Y
					expandedSize = holderExpandedSize + collapsedSize + 5
				end

				local function UpdateText()
					if Multi then
						local selectedArray = {}
						local selectedCount = 0
						for option, isSelected in pairs(SelectedOptions) do
							if isSelected then
								table.insert(selectedArray, option)
								selectedCount += 1
							end
						end
						if selectedCount == 0 then
							Dropdown.Container.Value.Text = "None"
							return
						end
						if selectedCount > 1 then
							Dropdown.Container.Value.Text = string.format("%d selected", selectedCount)
						else
							Dropdown.Container.Value.Text = selectedArray[1]
						end
					end
				end

				local function UpdateOptionVisual(Option, isSelected, immediate)
					local targetTransparency = isSelected and 0.7 or 1
					local targetColor = isSelected and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(200, 200, 200)
					if immediate then
						Option.BackgroundTransparency = targetTransparency
						Option.Title.TextColor3 = targetColor
					else
						TweenService:Create(Option, hoverInfo, {BackgroundTransparency = targetTransparency}):Play()
						TweenService:Create(Option.Title, hoverInfo, {TextColor3 = targetColor}):Play()
					end
				end

				local function UpdateSingleSelection(selectedOption, immediate)
					for _, child in pairs(Dropdown.Container.Holder.Container:GetChildren()) do
						if child:IsA("TextButton") then
							local isSelected = child.Name == selectedOption
							UpdateOptionVisual(child, isSelected, immediate)
							if isSelected then
								CurrentSelectedOption = selectedOption
								Dropdown.Container.Value.Text = selectedOption
							end
						end
					end
				end

				local function SetOptionsVisibility(visible)
					for _, child in pairs(Dropdown.Container.Holder.Container:GetChildren()) do
						if child:IsA("TextButton") then
							child.Title.TextTransparency = visible and 0 or 1
							if Multi then
								child.BackgroundTransparency = visible and (SelectedOptions[child.Name] and 0.7 or 1) or 1
							else
								child.BackgroundTransparency = visible and (CurrentSelectedOption == child.Name and 0.7 or 1) or 1
							end
						end
					end
				end

				Dropdown.MouseButton1Click:Connect(function()
					if isAnimating then return end
					isAnimating = true
					DropdownToggle = not DropdownToggle

					if DropdownToggle then
						PreCalculateSizes()
						Dropdown.Container.Holder.Visible = true
						Dropdown.Container.Holder.ClipsDescendants = true
						SetOptionsVisibility(true)

						local dropdownTween = TweenService:Create(Dropdown, springInfo, {
							Size = UDim2.new(1, -10, 0, expandedSize),
							BackgroundTransparency = 0.95
						})

						local holderTween = TweenService:Create(Dropdown.Container.Holder, springInfo, {
							Size = UDim2.new(1, -5, 0, holderExpandedSize)
						})

						dropdownTween:Play()
						holderTween:Play()
					else
						SetOptionsVisibility(false)

						local dropdownTween = TweenService:Create(Dropdown, springInfo, {
							Size = UDim2.new(1, -10, 0, collapsedSize),
							BackgroundTransparency = 1
						})

						local holderTween = TweenService:Create(Dropdown.Container.Holder, springInfo, {
							Size = UDim2.new(1, -5, 0, 0)
						})

						dropdownTween:Play()
						holderTween:Play()
					end

					local connection; connection = RunService.Heartbeat:Connect(function()
						if (not DropdownToggle and math.abs(Dropdown.Size.Y.Offset - collapsedSize) < 1) or
							(DropdownToggle and math.abs(Dropdown.Size.Y.Offset - expandedSize) < 1) then
							connection:Disconnect()
							if not DropdownToggle then
								Dropdown.Container.Holder.Visible = false
							end
							isAnimating = false
						end
					end)
				end)

				Dropdown.MouseEnter:Connect(function()
					TweenService:Create(Dropdown, hoverInfo, {
						BackgroundTransparency = DropdownToggle and 0.9 or 0.97
					}):Play()
				end)

				Dropdown.MouseLeave:Connect(function()
					TweenService:Create(Dropdown, hoverInfo, {
						BackgroundTransparency = DropdownToggle and 0.95 or 1
					}):Play()
				end)

				for _, OptionName in pairs(OptionTable) do
					local Option = Folder.Option:Clone()
					Option.Name = OptionName
					Option.Parent = Dropdown.Container.Holder.Container
					Option.Title.Text = OptionName
					Option.BackgroundColor3 = Config.Color
					Option.Size = UDim2.new(1, 0, 0, Option.Title.TextBounds.Y + 5)
					table.insert(Library.ColorTable, Option)

					local originalSize = Option.Size

					if Multi then
						if InitialValue and type(InitialValue) == "table" then
							for _, v in pairs(InitialValue) do
								if v == OptionName then
									SelectedOptions[OptionName] = true
									break
								end
							end
						end
						UpdateOptionVisual(Option, SelectedOptions[OptionName], true)

						Option.MouseButton1Up:Connect(function()
							local clickTween1 = TweenService:Create(Option, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), 
								{Size = UDim2.new(originalSize.X.Scale, originalSize.X.Offset - 2, originalSize.Y.Scale, originalSize.Y.Offset)})
							local clickTween2 = TweenService:Create(Option, TweenInfo.new(0.1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), 
								{Size = originalSize})

							clickTween1:Play()
							clickTween1.Completed:Wait()
							clickTween2:Play()

							SelectedOptions[OptionName] = not SelectedOptions[OptionName]
							UpdateOptionVisual(Option, SelectedOptions[OptionName])
							UpdateText()

							local selectedArray = {}
							for k, v in pairs(SelectedOptions) do
								if v then table.insert(selectedArray, k) end
							end

							local returnValue = Callback(selectedArray)
							if type(returnValue) == "table" then
								SelectedOptions = {}
								for _, v in pairs(returnValue) do
									SelectedOptions[v] = true
								end
								for _, child in pairs(Dropdown.Container.Holder.Container:GetChildren()) do
									if child:IsA("TextButton") then
										UpdateOptionVisual(child, SelectedOptions[child.Name])
									end
								end
								UpdateText()
							end
						end)

						Option.MouseEnter:Connect(function()
							if not SelectedOptions[OptionName] then
								TweenService:Create(Option, hoverInfo, {
									BackgroundTransparency = 0.85,
									Size = UDim2.new(originalSize.X.Scale, originalSize.X.Offset, originalSize.Y.Scale, originalSize.Y.Offset + 1)
								}):Play()
							end
						end)

						Option.MouseLeave:Connect(function()
							TweenService:Create(Option, hoverInfo, {
								Size = originalSize,
								BackgroundTransparency = SelectedOptions[OptionName] and 0.7 or 1
							}):Play()
						end)
					else
						if InitialValue and InitialValue == OptionName then
							UpdateSingleSelection(OptionName, true)
						end

						Option.MouseButton1Click:Connect(function()
							local clickTween1 = TweenService:Create(Option, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), 
								{Size = UDim2.new(originalSize.X.Scale, originalSize.X.Offset - 2, originalSize.Y.Scale, originalSize.Y.Offset)})
							local clickTween2 = TweenService:Create(Option, TweenInfo.new(0.1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), 
								{Size = originalSize})

							clickTween1:Play()
							clickTween1.Completed:Wait()
							clickTween2:Play()

							UpdateSingleSelection(OptionName)
							Callback(OptionName)
						end)

						Option.MouseEnter:Connect(function()
							if CurrentSelectedOption ~= OptionName then
								TweenService:Create(Option, hoverInfo, {
									BackgroundTransparency = 0.85,
									Size = UDim2.new(originalSize.X.Scale, originalSize.X.Offset, originalSize.Y.Scale, originalSize.Y.Offset + 1)
								}):Play()
							end
						end)

						Option.MouseLeave:Connect(function()
							TweenService:Create(Option, hoverInfo, {
								Size = originalSize,
								BackgroundTransparency = CurrentSelectedOption == OptionName and 0.7 or 1
							}):Play()
						end)
					end
				end

				task.spawn(function()
					wait()
					PreCalculateSizes()
					if InitialValue then
						if Multi and type(InitialValue) == "table" then
							for _, v in pairs(InitialValue) do
								SelectedOptions[v] = true
							end
							UpdateText()
						elseif not Multi then
							for _, optionName in pairs(OptionTable) do
								if optionName == InitialValue then
									UpdateSingleSelection(InitialValue, true)
									Callback(InitialValue)
									break
								end
							end
						end
					end
				end)

				function DropdownInit:AddToolTip(Name)
					if tostring(Name):gsub(" ", "") ~= "" then
						Dropdown.MouseEnter:Connect(function()
							Screen.ToolTip.Text = Name
							Screen.ToolTip.Size = UDim2.new(0, Screen.ToolTip.TextBounds.X + 5, 0, Screen.ToolTip.TextBounds.Y + 5)
							Screen.ToolTip.Visible = true
						end)
						Dropdown.MouseLeave:Connect(function()
							Screen.ToolTip.Visible = false
						end)
					end
				end

				function DropdownInit:GetOption()
					if Multi then
						local selected = {}
						for k, v in pairs(SelectedOptions) do
							if v then table.insert(selected, k) end
						end
						return selected
					else
						return CurrentSelectedOption or ""
					end
				end

				function DropdownInit:SetOption(value)
					if Multi then
						SelectedOptions = {}
						if type(value) == "table" then
							for _, v in ipairs(value) do
								SelectedOptions[v] = true
							end
						end
						for _, child in pairs(Dropdown.Container.Holder.Container:GetChildren()) do
							if child:IsA("TextButton") then
								UpdateOptionVisual(child, SelectedOptions[child.Name])
							end
						end
						UpdateText()
					else
						if value then
							UpdateSingleSelection(value)
						end
					end
					Callback(value)
				end

				function DropdownInit:SetVisible(Visible: boolean)
					Dropdown.Visible = Visible
				end

				function DropdownInit:IsVisible(): boolean
					return Dropdown.Visible
				end

				function DropdownInit:ToggleVisibility()
					Dropdown.Visible = not Dropdown.Visible
					return Dropdown.Visible
				end

				function DropdownInit:ClearOptions()
					for _, child in pairs(Dropdown.Container.Holder.Container:GetChildren()) do
						if child:IsA("TextButton") then
							child:Destroy()
						end
					end
					if Multi then
						SelectedOptions = {}
						Dropdown.Container.Value.Text = "None"
					else
						CurrentSelectedOption = nil
						Dropdown.Container.Value.Text = ""
					end
				end

				function DropdownInit:AddOption(OptionName: string | {any}, SelectImmediately: boolean?)
					if type(OptionName) == "table" then
						for _, option in pairs(OptionName) do
							self:AddOption(tostring(option), SelectImmediately)
						end
						return
					end
					local str = tostring(OptionName)
					for _, child in pairs(Dropdown.Container.Holder.Container:GetChildren()) do
						if child:IsA("TextButton") and child.Name == str then
							return
						end
					end
					local Option = Folder.Option:Clone()
					Option.Name = str
					Option.Parent = Dropdown.Container.Holder.Container
					Option.Title.Text = str
					Option.BackgroundColor3 = Config.Color
					Option.Size = UDim2.new(1, 0, 0, Option.Title.TextBounds.Y + 5)
					table.insert(Library.ColorTable, Option)
					local originalSize = Option.Size
					if Multi then
						SelectedOptions[str] = false
						if SelectImmediately then
							SelectedOptions[str] = true
						end
						UpdateOptionVisual(Option, SelectedOptions[str], true)
						Option.MouseButton1Up:Connect(function()
							local clickTween1 = TweenService:Create(Option, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(originalSize.X.Scale, originalSize.X.Offset - 2, originalSize.Y.Scale, originalSize.Y.Offset)})
							local clickTween2 = TweenService:Create(Option, TweenInfo.new(0.1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = originalSize})
							clickTween1:Play()
							clickTween1.Completed:Wait()
							clickTween2:Play()
							SelectedOptions[str] = not SelectedOptions[str]
							UpdateOptionVisual(Option, SelectedOptions[str])
							UpdateText()
							local selectedArray = {}
							for k, v in pairs(SelectedOptions) do
								if v then table.insert(selectedArray, k) end
							end
							local returnValue = Callback(selectedArray)
							if type(returnValue) == "table" then
								SelectedOptions = {}
								for _, v in pairs(returnValue) do
									SelectedOptions[v] = true
								end
								for _, child in pairs(Dropdown.Container.Holder.Container:GetChildren()) do
									if child:IsA("TextButton") then
										UpdateOptionVisual(child, SelectedOptions[child.Name])
									end
								end
								UpdateText()
							end
						end)
						Option.MouseEnter:Connect(function()
							if not SelectedOptions[str] then
								TweenService:Create(Option, hoverInfo, {
									BackgroundTransparency = 0.85,
									Size = UDim2.new(originalSize.X.Scale, originalSize.X.Offset, originalSize.Y.Scale, originalSize.Y.Offset + 1)
								}):Play()
							end
						end)
						Option.MouseLeave:Connect(function()
							TweenService:Create(Option, hoverInfo, {
								Size = originalSize,
								BackgroundTransparency = SelectedOptions[str] and 0.7 or 1
							}):Play()
						end)
					else
						if SelectImmediately then
							UpdateSingleSelection(str, true)
						end
						Option.MouseButton1Click:Connect(function()
							local clickTween1 = TweenService:Create(Option, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(originalSize.X.Scale, originalSize.X.Offset - 2, originalSize.Y.Scale, originalSize.Y.Offset)})
							local clickTween2 = TweenService:Create(Option, TweenInfo.new(0.1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = originalSize})
							clickTween1:Play()
							clickTween1.Completed:Wait()
							clickTween2:Play()
							UpdateSingleSelection(str)
							Callback(str)
						end)
						Option.MouseEnter:Connect(function()
							if CurrentSelectedOption ~= str then
								TweenService:Create(Option, hoverInfo, {
									BackgroundTransparency = 0.85,
									Size = UDim2.new(originalSize.X.Scale, originalSize.X.Offset, originalSize.Y.Scale, originalSize.Y.Offset + 1)
								}):Play()
							end
						end)
						Option.MouseLeave:Connect(function()
							TweenService:Create(Option, hoverInfo, {
								Size = originalSize,
								BackgroundTransparency = CurrentSelectedOption == str and 0.7 or 1
							}):Play()
						end)
					end
					if Multi then
						UpdateText()
					end
					PreCalculateSizes()
				end

				function DropdownInit:RemoveOption(OptionName: string)
					local str = tostring(OptionName)
					for _, child in pairs(Dropdown.Container.Holder.Container:GetChildren()) do
						if child:IsA("TextButton") and child.Name == str then
							child:Destroy()
							break
						end
					end

					if Multi then
						SelectedOptions[str] = nil
						UpdateText()
					else
						if CurrentSelectedOption == str then
							CurrentSelectedOption = nil
							Dropdown.Container.Value.Text = ""
						end
					end

					PreCalculateSizes()
				end

				function DropdownInit:ChangeOptions(NewOptionTable: {string}, NewInitialValue: any?)
					self:ClearOptions()
					self:AddOption(NewOptionTable)
					if NewInitialValue then
						self:SetOption(NewInitialValue)
					end
				end

				Dropdown.Title.TextWrapped = WrapText or false
				if WrapText then
					Dropdown.Title.AutomaticSize = Enum.AutomaticSize.Y
					Dropdown.Title.Size = UDim2.new(1, 0, 0, 0)
					Dropdown.Container.Position = UDim2.new(0, 0, 0, Dropdown.Title.TextBounds.Y + 5)
					Dropdown.Size = UDim2.new(1, -10, 0, Dropdown.Title.TextBounds.Y + 25)
				else
					Dropdown.Title.AutomaticSize = Enum.AutomaticSize.None
				end

				DropdownInit.Type = Multi and "MultiDropdown" or "Dropdown"
				DropdownInit.UniqueID = UniqueID
				shared.Anka.Elements[UniqueID] = DropdownInit
				return DropdownInit
			end

			function SectionInit:CreateColorpicker(Name: string, Callback: (Color: Color3, Transparency: number?) -> (), IsAccentColorpicker: boolean?, WrapText: boolean?): Element
				local ColorpickerInit: Element = {}
				shared.Anka.ElementCounter += 1
				local UniqueID = Name .. " - " .. shared.Anka.ElementCounter
				local Colorpicker = Folder.Colorpicker:Clone()
				local Pallete = Folder.Palette:Clone()

				Colorpicker.Name = Name .. " CP"
				Colorpicker.Parent = Section.Container
				Colorpicker.Title.Text = Name
				Colorpicker.Size = UDim2.new(1, -10, 0, Colorpicker.Title.TextBounds.Y + 5)

				Pallete.Name = Name .. " P"
				Pallete.Parent = Screen
				Pallete.Visible = false

				local RainbowToggle = Instance.new("TextButton")
				RainbowToggle.Name = "RainbowToggle"
				RainbowToggle.Parent = Colorpicker
				RainbowToggle.AnchorPoint = Vector2.new(1, 0.5)
				RainbowToggle.Size = UDim2.new(0, 20, 0, 10)
				RainbowToggle.Position = UDim2.new(1, -30, 0.5, 0)
				RainbowToggle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				RainbowToggle.BorderSizePixel = 0
				RainbowToggle.BorderColor3 = Color3.fromRGB(60, 60, 60)
				RainbowToggle.Text = "-"
				RainbowToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
				RainbowToggle.TextScaled = true
				RainbowToggle.Font = Enum.Font.Gotham
				RainbowToggle.ZIndex = 3

				table.insert(Library.ColorTable, RainbowToggle)
				ColorpickerInit.RainbowToggle = RainbowToggle

				local ColorTable = {Hue = 1, Saturation = 0, Value = 1}
				local CurrentTransparency = 0
				local ColorRender = nil
				local HueRender = nil
				local TransparencyRender = nil
				local ColorpickerRender = nil
				local RainbowRender = nil
				local IsRainbowEnabled = false
				local sh1tcon = nil

				local GradientPalette = Pallete.GradientPalette
				local ColorSlider = Pallete.ColorSlider
				local TransparencySlider = Pallete.TransparencySlider
				local ColorPreview = Pallete.ColorPreview
				local InputBox = Pallete.InputFrame.InputBox
				local Dot = GradientPalette.Dot

				local function UpdateColor()
					local currentColor = Color3.fromHSV(ColorTable.Hue, ColorTable.Saturation, ColorTable.Value)
					Colorpicker.Color.BackgroundColor3 = currentColor
					Colorpicker.Color.BackgroundTransparency = CurrentTransparency
					GradientPalette.BackgroundColor3 = Color3.fromHSV(ColorTable.Hue, 1, 1)
					ColorPreview.BackgroundColor3 = currentColor
					ColorPreview.BackgroundTransparency = CurrentTransparency
					local r, g, b = math.round(currentColor.R * 255), math.round(currentColor.G * 255), math.round(currentColor.B * 255)
					local alpha = math.round((1 - CurrentTransparency) * 255)
					InputBox.PlaceholderText = string.format("RGBA: %d, %d, %d, %d", r, g, b, alpha)
					Dot.Position = UDim2.new(ColorTable.Saturation, 0, 1 - ColorTable.Value, 0)
					Callback(currentColor, CurrentTransparency)
					if IsAccentColorpicker then
						ChangeColor(currentColor, CurrentTransparency)
					end
				end

				local function ihatemyself(position)
					local palettepos = Pallete.AbsolutePosition
					local palettesize = Pallete.AbsoluteSize
					return position.X >= palettepos.X and position.X <= palettepos.X + palettesize.X and position.Y >= palettepos.Y and position.Y <= palettepos.Y + palettesize.Y
				end

				local function closePalette()
					Pallete.Visible = false
					if ColorpickerRender then
						ColorpickerRender:Disconnect()
						ColorpickerRender = nil
					end
					if sh1tcon then
						sh1tcon:Disconnect()
						sh1tcon = nil
					end
				end

				local function blehh()
					if sh1tcon then
						sh1tcon:Disconnect()
					end
					sh1tcon = UserInputService.InputBegan:Connect(function(input, gp)
						if not gp and Pallete.Visible then
							local inputpos
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								inputpos = UserInputService:GetMouseLocation()
							elseif input.UserInputType == Enum.UserInputType.Touch then
								inputpos = input.Position
							else
								return
							end
							if not ihatemyself(inputpos) then
								closePalette()
							end
						end
					end)
				end

				RainbowToggle.MouseButton1Click:Connect(function()
					IsRainbowEnabled = not IsRainbowEnabled
					if IsRainbowEnabled then
						RainbowToggle.BackgroundColor3 = Config.Color or Color3.fromRGB(0, 162, 255)
						RainbowToggle.BackgroundTransparency = Config.Transparency or 0
						RainbowToggle.Text = "+"
						RainbowRender = RunService.PreRender:Connect(function()
							ColorTable.Hue = (tick() * 0.5) % 1
							ColorTable.Saturation = 1
							ColorTable.Value = 1
							UpdateColor()
						end)
					else
						RainbowToggle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
						RainbowToggle.BackgroundTransparency = 0
						RainbowToggle.Text = "-"
						if RainbowRender then
							RainbowRender:Disconnect()
							RainbowRender = nil
						end
					end
				end)

				Colorpicker.InputBegan:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
						if not Pallete.Visible then
							ColorpickerRender = RunService.PreRender:Connect(function()
								local pos = Colorpicker.Color.AbsolutePosition
								Pallete.Position = UDim2.new(0, pos.X - 129, 0, pos.Y + 52)
							end)
							Pallete.Visible = true
							blehh()
						else
							closePalette()
						end
					end
				end)

				local function getananddRelativePosition(input, guiObject)
					local inputPos
					if input.UserInputType == Enum.UserInputType.Touch then
						inputPos = input.Position
					else
						inputPos = UserInputService:GetMouseLocation()
					end
					local guiPos = guiObject.AbsolutePosition
					local guiSize = guiObject.AbsoluteSize
					return Vector2.new(
						(inputPos.X - guiPos.X) / guiSize.X,
						(inputPos.Y - guiPos.Y) / guiSize.Y
					)
				end

				local function fakuroblox(input, guiObject)
					local mouse = UserInputService:GetMouseLocation()
					return Vector2.new(
						(mouse.X - guiObject.AbsolutePosition.X) / guiObject.AbsoluteSize.X,
						((mouse.Y - 60) - guiObject.AbsolutePosition.Y) / guiObject.AbsoluteSize.Y
					)
				end

				GradientPalette.InputBegan:Connect(function(Input)
					if UserInputService:GetFocusedTextBox() == nil then
						if Input.UserInputType == Enum.UserInputType.MouseButton1 then
							if IsRainbowEnabled then
								IsRainbowEnabled = false
								RainbowToggle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
								RainbowToggle.Text = "-"
								if RainbowRender then RainbowRender:Disconnect() end
							end
							if ColorRender then ColorRender:Disconnect() end
							ColorRender = RunService.PreRender:Connect(function()
								local relativePos = fakuroblox(Input, GradientPalette)
								local clampedX = math.clamp(relativePos.X, 0, 1)
								local clampedY = math.clamp(relativePos.Y, 0, 1)
								Dot.Position = UDim2.new(clampedX, 0, clampedY, 0)
								ColorTable.Saturation = clampedX
								ColorTable.Value = 1 - clampedY
								UpdateColor()
							end)
						elseif Input.UserInputType == Enum.UserInputType.Touch then
							if IsRainbowEnabled then
								IsRainbowEnabled = false
								RainbowToggle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
								RainbowToggle.Text = "-"
								if RainbowRender then RainbowRender:Disconnect() end
							end
							if ColorRender then ColorRender:Disconnect() end
							ColorRender = RunService.PreRender:Connect(function()
								local relativePos = getananddRelativePosition(Input, GradientPalette)
								local clampedX = math.clamp(relativePos.X, 0, 1)
								local clampedY = math.clamp(relativePos.Y, 0, 1)
								Dot.Position = UDim2.new(clampedX, 0, clampedY, 0)
								ColorTable.Saturation = clampedX
								ColorTable.Value = 1 - clampedY
								UpdateColor()
							end)
						end
					end
				end)

				GradientPalette.InputEnded:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
						if ColorRender then ColorRender:Disconnect() end
					end
				end)

				ColorSlider.InputBegan:Connect(function(Input)
					if UserInputService:GetFocusedTextBox() == nil then
						if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
							if IsRainbowEnabled then
								IsRainbowEnabled = false
								RainbowToggle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
								RainbowToggle.Text = "-"
								if RainbowRender then
									RainbowRender:Disconnect()
									RainbowRender = nil
								end
							end
							if HueRender then HueRender:Disconnect() end
							HueRender = RunService.PreRender:Connect(function()
								local relativePos = getananddRelativePosition(Input, ColorSlider)
								ColorTable.Hue = 1 - math.clamp(relativePos.X, 0, 1)
								UpdateColor()
							end)
						end
					end
				end)

				ColorSlider.InputEnded:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
						if HueRender then HueRender:Disconnect() end
					end
				end)

				TransparencySlider.InputBegan:Connect(function(Input)
					if UserInputService:GetFocusedTextBox() == nil then
						if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
							if TransparencyRender then TransparencyRender:Disconnect() end
							TransparencyRender = RunService.PreRender:Connect(function()
								local relativePos = getananddRelativePosition(Input, TransparencySlider)
								CurrentTransparency = math.clamp(relativePos.X, 0, 1)
								UpdateColor()
							end)
						end
					end
				end)

				TransparencySlider.InputEnded:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
						if TransparencyRender then TransparencyRender:Disconnect() end
					end
				end)

				local function UpdateTransparencySlider()
					TransparencySlider.BackgroundColor3 = Color3.fromHSV(ColorTable.Hue, ColorTable.Saturation, ColorTable.Value)
				end

				InputBox.FocusLost:Connect(function(Enter)
					if Enter then
						local input = string.gsub(InputBox.Text, " ", "")
						local colorValues = string.split(input, ",")
						if #colorValues >= 3 then
							local r = math.clamp(tonumber(colorValues[1]) or 255, 0, 255)
							local g = math.clamp(tonumber(colorValues[2]) or 0, 0, 255)
							local b = math.clamp(tonumber(colorValues[3]) or 0, 0, 255)
							local a = 255
							if #colorValues >= 4 then
								a = math.clamp(tonumber(colorValues[4]) or 255, 0, 255)
							end
							local newColor = Color3.fromRGB(r, g, b)
							local newTransparency = 1 - (a / 255)
							ColorpickerInit:UpdateColor(newColor, newTransparency)
						end
						InputBox.Text = ""
					end
				end)

				function ColorpickerInit:UpdateColor(Color, Transparency)
					Transparency = Transparency or 0
					if IsRainbowEnabled then
						IsRainbowEnabled = false
						RainbowToggle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
						RainbowToggle.BackgroundTransparency = 0
						RainbowToggle.Text = "-"
						if RainbowRender then
							RainbowRender:Disconnect()
							RainbowRender = nil
						end
					end
					local Hue, Saturation, Value = Color:ToHSV()
					ColorTable = {Hue = Hue, Saturation = Saturation, Value = Value}
					CurrentTransparency = Transparency
					UpdateColor()
					UpdateTransparencySlider()
				end

				function ColorpickerInit:UpdateColors(AccentColor, AccentTransparency)
					if IsRainbowEnabled and AccentColor then
						RainbowToggle.BackgroundColor3 = AccentColor
						RainbowToggle.BackgroundTransparency = AccentTransparency or 0
					end
				end

				function ColorpickerInit:AddToolTip(Name)
					if tostring(Name):gsub(" ", "") ~= "" then
						Colorpicker.MouseEnter:Connect(function()
							Screen.ToolTip.Text = Name
							Screen.ToolTip.Size = UDim2.new(0, Screen.ToolTip.TextBounds.X + 5, 0, Screen.ToolTip.TextBounds.Y + 5)
							Screen.ToolTip.Visible = true
						end)

						Colorpicker.MouseLeave:Connect(function()
							Screen.ToolTip.Visible = false
						end)

						local touchTooltipDebounce = false
						Colorpicker.TouchTap:Connect(function()
							if not touchTooltipDebounce then
								touchTooltipDebounce = true
								Screen.ToolTip.Text = Name
								Screen.ToolTip.Size = UDim2.new(0, Screen.ToolTip.TextBounds.X + 5, 0, Screen.ToolTip.TextBounds.Y + 5)
								Screen.ToolTip.Visible = true
								task.wait(2)
								Screen.ToolTip.Visible = false
								touchTooltipDebounce = false
							end
						end)
					end
				end

				function ColorpickerInit:GetValue()
					return Colorpicker.Color.BackgroundColor3, CurrentTransparency
				end

				function ColorpickerInit:GetColor()
					return Colorpicker.Color.BackgroundColor3
				end

				function ColorpickerInit:GetTransparency()
					return CurrentTransparency
				end

				function ColorpickerInit:IsRainbowEnabled()
					return IsRainbowEnabled
				end

				function ColorpickerInit:SetRainbow(state)
					if state ~= IsRainbowEnabled then
						RainbowToggle.MouseButton1Click:Fire()
					end
				end

				function ColorpickerInit:SetVisible(Visible: boolean)
					Colorpicker.Visible = Visible
				end

				function ColorpickerInit:IsVisible(): boolean
					return Colorpicker.Visible
				end

				function ColorpickerInit:ToggleVisibility()
					Colorpicker.Visible = not Colorpicker.Visible
					return Colorpicker.Visible
				end

				function ColorpickerInit:ClosePallete()
					closePalette()
				end

				function ColorpickerInit:SetTransparency(transparency)
					CurrentTransparency = math.clamp(transparency, 0, 1)
					UpdateColor()
				end

				UpdateColor()
				UpdateTransparencySlider()

				Colorpicker.Title.TextWrapped = WrapText or false
				if WrapText then
					Colorpicker.Title.AutomaticSize = Enum.AutomaticSize.Y
					Colorpicker.Size = UDim2.new(1, -10, 0, 0)
					Colorpicker.AutomaticSize = Enum.AutomaticSize.Y
				else
					Colorpicker.Title.AutomaticSize = Enum.AutomaticSize.None
				end
				ColorpickerInit.Type = "ColorPicker"
				ColorpickerInit.UniqueID = UniqueID
				ColorpickerInit.IsAccentColorpicker = IsAccentColorpicker or false
				shared.Anka.Elements[UniqueID] = ColorpickerInit

				return ColorpickerInit
			end
			
			function SectionInit:CreateScriptDisplay(Name: string, ScriptContent: string, WrapText: boolean?): Element
				local ScriptDisplayInit: Element = {}
				shared.Anka.ElementCounter += 1
				local UniqueID = Name .. " - " .. shared.Anka.ElementCounter

				local ScriptFrame = Instance.new("Frame")
				ScriptFrame.Name = Name .. " SD"
				ScriptFrame.Parent = Section.Container
				ScriptFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				ScriptFrame.BorderSizePixel = 0
				ScriptFrame.Size = UDim2.new(1, -10, 0, 250)
				ScriptFrame.AutomaticSize = Enum.AutomaticSize.Y
				ScriptFrame.ClipsDescendants = true
				ScriptFrame.ZIndex = 3

				local FrameStroke = Instance.new("UIStroke")
				FrameStroke.Parent = ScriptFrame
				FrameStroke.Color = Color3.fromRGB(60, 60, 60)
				FrameStroke.Thickness = 1
				FrameStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

				local TitleBar = Instance.new("Frame")
				TitleBar.Name = "TitleBar"
				TitleBar.Parent = ScriptFrame
				TitleBar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				TitleBar.Size = UDim2.new(1, 0, 0, 25)
				TitleBar.ZIndex = 3
				TitleBar.BorderSizePixel = 0

				local TitleLabel = Instance.new("TextLabel")
				TitleLabel.Name = "Title"
				TitleLabel.Parent = TitleBar
				TitleLabel.BackgroundTransparency = 1
				TitleLabel.Text = Name
				TitleLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
				TitleLabel.Font = Enum.Font.Code
				TitleLabel.TextSize = 14
				TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
				TitleLabel.Position = UDim2.new(0, 8, 0, 0)
				TitleLabel.Size = UDim2.new(1, -50, 1, 0)
				TitleLabel.ZIndex = 3

				local CopyButton = Instance.new("TextButton")
				CopyButton.Name = "CopyButton"
				CopyButton.Parent = TitleBar
				CopyButton.BackgroundTransparency = 1
				CopyButton.Size = UDim2.new(0, 40, 1, 0)
				CopyButton.Position = UDim2.new(1, -45, 0, 0)
				CopyButton.Text = "Copy"
				CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				CopyButton.Font = Enum.Font.Code
				CopyButton.TextSize = 12
				CopyButton.TextXAlignment = Enum.TextXAlignment.Right
				CopyButton.ZIndex = 3

				CopyButton.MouseEnter:Connect(function()
					CopyButton.TextColor3 = Color3.fromRGB(220, 220, 220)
				end)

				CopyButton.MouseLeave:Connect(function()
					CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				end)

				CopyButton.Activated:Connect(function()
					local copy = setclipboard or print
					copy(ScriptContent)
					local tt = CopyButton.Text
					CopyButton.Text = "Copied!"
					task.wait(.3)
					CopyButton.Text = tt
				end)

				local ScrollFrame = Instance.new("ScrollingFrame")
				ScrollFrame.Name = "Content"
				ScrollFrame.Parent = ScriptFrame
				ScrollFrame.BorderSizePixel = 0
				ScrollFrame.BackgroundTransparency = 1
				ScrollFrame.Size = UDim2.new(1, 0, 1, -25)
				ScrollFrame.Position = UDim2.new(0, 0, 0, 25)
				ScrollFrame.ScrollBarThickness = 5
				ScrollFrame.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 100)
				ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
				ScrollFrame.ZIndex = 3

				local ContentLabel = Instance.new("TextLabel")
				ContentLabel.Name = "ScriptText"
				ContentLabel.Parent = ScrollFrame
				ContentLabel.BackgroundTransparency = 1
				ContentLabel.RichText = true
				ContentLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
				ContentLabel.Font = Enum.Font.Code
				ContentLabel.TextSize = 12
				ContentLabel.TextXAlignment = Enum.TextXAlignment.Left
				ContentLabel.TextYAlignment = Enum.TextYAlignment.Top
				ContentLabel.TextWrapped = WrapText or false
				ContentLabel.ZIndex = 3
				ContentLabel.Text = ScriptContent

				if WrapText then
					ContentLabel.Size = UDim2.new(1, -10, 0, 0)
					ContentLabel.AutomaticSize = Enum.AutomaticSize.Y
				else
					ContentLabel.Size = UDim2.new(1, -10, 0, ContentLabel.TextBounds.Y)
				end
				
				local function SyntaxHighlight(code)
					local function richtextr(str)
						return str:gsub("[&<>]", {
							["&"] = "&amp;",
							["<"] = "&lt;",
							[">"] = "&gt;"
						})
					end
					code = richtextr(code)
					local keywords = {
						"and", "break", "do", "else", "elseif", "end",
						"false", "for", "function", "goto", "if", "in", 
						"local", "nil", "not", "or", "repeat", "return", 
						"then", "true", "until", "while"
					}
					for _, keyword in ipairs(keywords) do
						code = code:gsub("(%f[%w_])(" .. keyword .. ")(%f[^%w_])", "%1<font color='#569CD6'>%2</font>%3")
					end
					code = code:gsub("(%f[%w_])(%d+%.?%d*)(%f[^%w_])","%1<font color='#B5CEA8'>%2</font>%3")
					code = code:gsub('("(\\"|[^"])*")', "<font color='#CE9178'>%1</font>")
					code = code:gsub("('(\\'|[^'])*')", "<font color='#CE9178'>%1</font>")
					code = code:gsub("(%-%-[^\n]*)", "<font color='#57A64A'>%1</font>")
					code = code:gsub("(%-%-%[%[.-%]%])", "<font color='#57A64A'>%1</font>")
					code = code:gsub("(function%s+)([%w_%.]+)","%1<font color='#DCDCAA'>%2</font>")
					return code
				end
				
				ContentLabel.Text = SyntaxHighlight(ScriptContent)
				
				ContentLabel:GetPropertyChangedSignal("TextBounds"):Connect(function()
					ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, ContentLabel.TextBounds.Y + 10)
				end)

				function ScriptDisplayInit:UpdateText(NewText)
					ScriptContent = NewText
					ContentLabel.Text = SyntaxHighlight(ScriptContent)
				end

				function ScriptDisplayInit:GetText()
					return ScriptContent
				end

				function ScriptDisplayInit:SetVisible(Visible)
					ScriptFrame.Visible = Visible
				end

				function ScriptDisplayInit:IsVisible()
					return ScriptFrame.Visible
				end

				function ScriptDisplayInit:ToggleVisibility()
					ScriptFrame.Visible = not ScriptFrame.Visible
					return ScriptFrame.Visible
				end

				function ScriptDisplayInit:SetWrapText(Wrap)
					ContentLabel.TextWrapped = Wrap
					if Wrap then
						ContentLabel.AutomaticSize = Enum.AutomaticSize.Y
						ContentLabel.Size = UDim2.new(1, -10, 0, 0)
					else
						ContentLabel.AutomaticSize = Enum.AutomaticSize.None
						ContentLabel.Size = UDim2.new(1, -10, 0, ContentLabel.TextBounds.Y)
					end
				end

				ScriptDisplayInit.Type = "ScriptDisplay"
				ScriptDisplayInit.UniqueID = UniqueID
				shared.Anka.Elements[UniqueID] = ScriptDisplayInit

				return ScriptDisplayInit
			end
			
			function SectionInit:CreateDivider(): Element
    			local DividerInit: Element = {}
    			shared.Anka.ElementCounter += 1
    			local UniqueID = "Divider - " .. shared.Anka.ElementCounter
    
    			local Divider = Instance.new("Frame")
    			Divider.Name = "Divider"
    			Divider.Parent = Section.Container
    			Divider.BackgroundTransparency = 1
    			Divider.Size = UDim2.new(1, -10, 0, 5)
    			Divider.ZIndex = 3
    
    			local Line = Instance.new("Frame")
    			Line.Name = "Line"
    			Line.Parent = Divider
    			Line.Size = UDim2.new(1, 0, 1, 0)
    			Line.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    			Line.BorderSizePixel = 0
    			Line.ZIndex = 3

    			function DividerInit:SetVisible(Visible: boolean)
        			Divider.Visible = Visible
    			end

    			function DividerInit:IsVisible(): boolean
        			return Divider.Visible
    			end

    			function DividerInit:ToggleVisibility()
       				Divider.Visible = not Divider.Visible
        			return Divider.Visible
    			end

    			function DividerInit:SetColor(Color: Color3)
        			Line.BackgroundColor3 = Color
    			end

    			DividerInit.Type = "Divider"
    			DividerInit.UniqueID = UniqueID
    			shared.Anka.Elements[UniqueID] = DividerInit
    
    			return DividerInit
			end

			return SectionInit
		end

		return TabInit
	end

	local ClearButton = Topbar:FindFirstChild("SearchBar").ClearButton

	Topbar.SearchBar.Changed:Connect(function(Property)
		if Property == "Text" then
			ClearButton.Visible = Topbar.SearchBar.Text ~= ""
		end
	end)

	ClearButton.MouseButton1Click:Connect(function()
		Topbar.SearchBar.Text = ""
	end)

	ClearButton.TouchTap:Connect(function()
		Topbar.SearchBar.Text = ""
	end)

	function Library:GetTextBounds(Text, Font, Size, Resolution)
		local Bounds = TextService:GetTextSize(Text, Size, Font, Resolution or Vector2.new(1920, 1080))
		return Bounds.X, Bounds.Y
	end -- from linoria library https://github.com/violin-suzutsuki/LinoriaLib

	function Library:Hud()
		local HudInit = {}
		local Hud = Folder.Hud:Clone()
		local InfoText = Hud.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.InfoText
		Hud.Parent = Screen

		local padding = {
			right = 10,
			bottom = 10, 
			left = 10,
			top = 10
		}

		Hud.AnchorPoint = Vector2.new(1, 0)
		Hud.Position = UDim2.new(1, -padding.right, 0, padding.top)
		Hud.Visible = true

		local function eeee()
			local text = InfoText.Text
			if text and text ~= "" then
				local X, Y = Library:GetTextBounds(text, InfoText.Font, InfoText.TextSize)
				Hud.Size = UDim2.new(
					0, X + padding.left + padding.right, 
					0, (Y * 1.5) + padding.top + padding.bottom
				)
				InfoText.Position = UDim2.new(0, padding.left, 0, padding.top)
				InfoText.Size = UDim2.new(1, -(padding.left + padding.right), 1, -(padding.top + padding.bottom))
			end
		end

		function HudInit:SetText(text)
			InfoText.Text = tostring(text)
			eeee()
			return self
		end

		function HudInit:SetVisibility(bool)
			Hud.Visible = bool
			return self
		end

		function HudInit:GetText()
			return InfoText.Text
		end

		function HudInit:IsVisible()
			return Hud.Visible
		end

		function HudInit:SetTextColor(color)
			InfoText.TextColor3 = color
			return self
		end

		function HudInit:SetTextSize(size)
			InfoText.TextSize = size
			eeee()
			return self
		end

		function HudInit:SetFont(font)
			InfoText.Font = font
			eeee()
			return self
		end

		function HudInit:SetPadding(right, bottom, left, top)
			padding.right = right or padding.right
			padding.bottom = bottom or padding.bottom
			padding.left = left or padding.left
			padding.top = top or padding.top
			eeee()
			return self
		end

		eeee()

		return HudInit
	end

	local uitoggle = Config.Keybind
	local toggleboleanshit = true
	UserInputService.InputBegan:Connect(function(input, gp)
		if UserInputService:GetFocusedTextBox() == nil and input.KeyCode == uitoggle and not gp then
			toggleboleanshit = not toggleboleanshit
			Toggle(toggleboleanshit)
		end
	end)
	function Library:ChangeToggleKeybind(newbindomg)
		uitoggle = newbindomg
	end

	return WindowInit
end

return Library
