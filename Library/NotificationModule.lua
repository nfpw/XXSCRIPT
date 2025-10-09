-- skidded from FONDRA V3

local NotificationSystem = {}
NotificationSystem.__index = NotificationSystem
NotificationSystem.Spacing = 26
NotificationSystem.AnimationSpeed = 0.25
NotificationSystem.Font = Enum.Font.Gotham
NotificationSystem.TextSize = 12
NotificationSystem.StartOffset = 100

NotificationSystem.Colors = {
	Border1 = Color3.fromRGB(0, 0, 0),
	Border2 = Color3.fromRGB(28, 35, 50),
	Background1 = Color3.fromRGB(18, 22, 32),
	Accent = Color3.fromRGB(43, 89, 255),
	ActiveText = Color3.fromRGB(255, 255, 255),
}

local cloneref = cloneref or function(v) return v end
local function getservice(v) return cloneref(game:GetService(v)) end
local RunService = getservice("RunService")
local TextService = getservice("TextService")
local TweenService = getservice("TweenService")

function NotificationSystem.New(parent)
	local self = setmetatable({}, NotificationSystem)
	self.Container = Instance.new("Frame")
	self.Container.Name = "NotificationContainer"
	self.Container.BackgroundTransparency = 1
	self.Container.Size = UDim2.new(1, 0, 1, 0)
	self.Container.Parent = parent
	self.Notifications = {}
	self.ActiveConnections = {}
	return self
end

function NotificationSystem:CalculatePosition(index)
	return UDim2.new(0, 10, 0, self.StartOffset + ((index - 1) * self.Spacing))
end

function NotificationSystem:UpdatePositions()
	if not self.Container or not self.Container.Parent then
		return
	end
	for i, notificationData in ipairs(self.Notifications) do
		if not notificationData.notification or not notificationData.notification.Parent then
			continue
		end
		local notification = notificationData.notification
		local targetPosition = self:CalculatePosition(i)
		if notification.Position ~= targetPosition then
			TweenService:Create(
				notification,
				TweenInfo.new(self.AnimationSpeed, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Position = targetPosition}
			):Play()
		end
	end
end

function NotificationSystem:CreateNotification(title, content, duration)
	if not self.Container or not self.Container.Parent then
		return
	end

	local Notification = {}
	table.insert(self.Notifications, Notification)

	duration = duration or 3
	local Color = self.Colors.Accent
	local displayText = content and (title .. content) or title
	local Bounds = TextService:GetTextSize(displayText, self.TextSize, self.Font, Vector2.new(1000, 1000))

	local Container = Instance.new("Frame")
	Container.Name = "NotificationContainer"
	Container.BackgroundTransparency = 1
	Container.Size = UDim2.new(0, Bounds.X + 15, 0, 24)
	Container.ClipsDescendants = true
	Container.Position = self:CalculatePosition(#self.Notifications)
	Container.Parent = self.Container

	local Outline = Instance.new("Frame")
	Outline.Name = "Outline"
	Outline.Size = UDim2.new(1, 0, 1, 0)
	Outline.Position = UDim2.new(-1, 0, 0, 0)
	Outline.BackgroundColor3 = self.Colors.Border1
	Outline.BorderSizePixel = 0
	Outline.Parent = Container

	local Middle = Instance.new("Frame")
	Middle.Name = "Middle"
	Middle.Size = UDim2.new(1, -2, 1, -2)
	Middle.Position = UDim2.new(0, 1, 0, 1)
	Middle.BackgroundColor3 = self.Colors.Border2
	Middle.BorderSizePixel = 0
	Middle.Parent = Outline

	local Inline = Instance.new("Frame")
	Inline.Name = "Inline"
	Inline.Size = UDim2.new(1, -2, 1, -2)
	Inline.Position = UDim2.new(0, 1, 0, 1)
	Inline.BackgroundColor3 = self.Colors.Border1
	Inline.BorderSizePixel = 0
	Inline.Parent = Middle

	local Fill = Instance.new("Frame")
	Fill.Name = "Fill"
	Fill.Size = UDim2.new(1, -2, 1, -2)
	Fill.Position = UDim2.new(0, 1, 0, 1)
	Fill.BackgroundColor3 = self.Colors.Background1
	Fill.BorderSizePixel = 0
	Fill.Parent = Inline

	local Accent = Instance.new("Frame")
	Accent.Name = "Accent"
	Accent.Size = UDim2.new(0, 1, 1, 0)
	Accent.Position = UDim2.new(0, 0, 0, 0)
	Accent.BackgroundColor3 = Color
	Accent.BorderSizePixel = 0
	Accent.Parent = Fill

	local Time = Instance.new("Frame")
	Time.Name = "Time"
	Time.Size = UDim2.new(0, 0, 0, 1)
	Time.Position = UDim2.new(0, 0, 1, -1)
	Time.BackgroundColor3 = Color
	Time.BorderSizePixel = 0
	Time.Parent = Fill

	local Title = Instance.new("TextLabel")
	Title.Name = "Title"
	Title.Text = displayText
	Title.Position = UDim2.new(0, 5, 0.5, 0)
	Title.AnchorPoint = Vector2.new(0, 0.5)
	Title.TextXAlignment = Enum.TextXAlignment.Left
	Title.TextYAlignment = Enum.TextYAlignment.Center
	Title.TextSize = self.TextSize
	Title.Font = self.Font
	Title.BackgroundTransparency = 1
	Title.TextColor3 = self.Colors.ActiveText
	Title.Parent = Fill

	local Stroke = Instance.new("UIStroke")
	Stroke.Parent = Title
	Stroke.Color = Color3.fromRGB(0, 0, 0)
	Stroke.Thickness = 1
	Stroke.Transparency = 0

	Notification["Container"] = Container
	Notification["Outline"] = Outline
	Notification["Middle"] = Middle
	Notification["Inline"] = Inline
	Notification["Fill"] = Fill
	Notification["Accent"] = Accent
	Notification["Time"] = Time
	Notification["Title"] = Title
	Notification["Stroke"] = Stroke

	TweenService:Create(Outline, TweenInfo.new(self.AnimationSpeed), { 
		Position = UDim2.new(0, 0, 0, 0) 
	}):Play()

	TweenService:Create(Time, TweenInfo.new(duration), { 
		Size = UDim2.new(1, 0, 0, 1) 
	}):Play()

	task.delay(duration + 0.15, function()
		if not self.Container or not self.Container.Parent then
			return
		end
		for i, notif in ipairs(self.Notifications) do
			if notif == Notification then
				table.remove(self.Notifications, i)
				break
			end
		end
		TweenService:Create(Outline, TweenInfo.new(self.AnimationSpeed), { BackgroundTransparency = 1 }):Play()
		TweenService:Create(Middle, TweenInfo.new(self.AnimationSpeed), { BackgroundTransparency = 1 }):Play()
		TweenService:Create(Inline, TweenInfo.new(self.AnimationSpeed), { BackgroundTransparency = 1 }):Play()
		TweenService:Create(Fill, TweenInfo.new(self.AnimationSpeed), { BackgroundTransparency = 1 }):Play()
		TweenService:Create(Accent, TweenInfo.new(self.AnimationSpeed), { BackgroundTransparency = 1 }):Play()
		TweenService:Create(Time, TweenInfo.new(self.AnimationSpeed), { BackgroundTransparency = 1 }):Play()
		TweenService:Create(Title, TweenInfo.new(self.AnimationSpeed), { TextTransparency = 1 }):Play()
		TweenService:Create(Stroke, TweenInfo.new(self.AnimationSpeed), { Transparency = 1 }):Play()
		task.wait(self.AnimationSpeed)
		self:UpdatePositions()
		task.wait(0.1)
		if Container then 
			Container:Destroy() 
		end
	end)

	return Notification
end

function NotificationSystem:Destroy()
	for _, connection in ipairs(self.ActiveConnections) do
		if connection and typeof(connection) == "RBXScriptConnection" then
			connection:Disconnect()
		end
	end
	self.ActiveConnections = {}
	for _, notificationData in ipairs(self.Notifications) do
		if notificationData.notification and notificationData.notification.Parent then
			notificationData.notification:Destroy()
		end
	end
	self.Notifications = {}
	if self.Container and self.Container.Parent then
		self.Container:Destroy()
	end
end

return NotificationSystem
