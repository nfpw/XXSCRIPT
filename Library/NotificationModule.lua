--[[
	i was so lazy to make notification for 
	libraryso i used claude to make one 
	this code 80% pasted -- https://claude.ai/
]]

local NotificationSystem = {}
NotificationSystem.__index = NotificationSystem
NotificationSystem.NotificationSize = UDim2.new(0, 300, 0, 70)
NotificationSystem.Spacing = 5
NotificationSystem.AnimationSpeed = 0.3
NotificationSystem.Font = Enum.Font.Gotham
NotificationSystem.TextSize = 14
NotificationSystem.TextColor = Color3.fromRGB(240, 240, 240)
NotificationSystem.BackgroundColor = Color3.fromRGB(25, 25, 25)
NotificationSystem.AccentColor = Color3.fromRGB(255, 128, 64)
NotificationSystem.BottomOffset = 10

local cloneref = cloneref or function(v) return v; end
local function getservice(v) return cloneref(game:GetService(v)); end
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
	return self
end

function NotificationSystem:CalculatePosition(index)
	local yOffset = 0
	for i = 1, index - 1 do
		yOffset = yOffset + self.Notifications[i].Size.Y.Offset + self.Spacing
	end
	return UDim2.new(1, -self.NotificationSize.X.Offset - 10, 1, -yOffset - self.NotificationSize.Y.Offset - self.BottomOffset)
end

function NotificationSystem:UpdateColors()
	for _, notification in ipairs(self.Notifications) do
		local inner = notification:FindFirstChild("Border1").Border2.Border3.Frame
		if inner then
			for _, child in ipairs(inner:GetChildren()) do
				if child:IsA("TextLabel") then
					if child.Position.Y.Offset < 10 then
						child.TextColor3 = self.TextColor
						child.Font = self.Font
						child.TextSize = self.TextSize
					else
						child.TextColor3 = self.TextColor
						child.Font = Enum.Font.Code
						child.TextSize = self.TextSize - 2
					end
				elseif child.Name == "ProgressBar" then
					child.BackgroundColor3 = self.AccentColor
				end
			end
		end
	end
end

function NotificationSystem:UpdatePositions()
	local yOffset = 0
	for i, notification in ipairs(self.Notifications) do
		local targetPosition = UDim2.new(1, -notification.Size.X.Offset - 10, 1, -yOffset - notification.Size.Y.Offset - self.BottomOffset)
		if notification.Position ~= targetPosition then
			TweenService:Create(
				notification,
				TweenInfo.new(self.AnimationSpeed, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Position = targetPosition}
			):Play()
		end
		yOffset = yOffset + notification.Size.Y.Offset + self.Spacing
	end
	self:UpdateColors()
end

function NotificationSystem:CreateNotification(title, content, duration)
	duration = duration or 3
	local contentWidth = self.NotificationSize.X.Offset - 20
	local contentTextSize = TextService:GetTextSize(content, self.TextSize - 2, Enum.Font.Code, Vector2.new(contentWidth, math.huge))

	local titleHeight = 26
	local contentHeight = contentTextSize.Y
	local totalHeight = titleHeight + contentHeight + 20
	local notificationSize = UDim2.new(0, self.NotificationSize.X.Offset, 0, math.max(totalHeight, self.NotificationSize.Y.Offset))

	local notification = Instance.new("Frame")
	notification.Name = "Notification"
	notification.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	notification.BorderSizePixel = 0
	notification.Size = notificationSize
	notification.Position = UDim2.new(1, notificationSize.X.Offset + 10, 1, self.BottomOffset)
	notification.Parent = self.Container
	notification.ClipsDescendants = true

	local border1 = Instance.new("Frame")
	border1.Name = "Border1"
	border1.Size = UDim2.new(1, -2, 1, -2)
	border1.Position = UDim2.new(0, 1, 0, 1)
	border1.BackgroundColor3 = Color3.fromRGB(52, 53, 52)
	border1.BorderSizePixel = 0
	border1.Parent = notification

	local border2 = Instance.new("Frame")
	border2.Name = "Border2"
	border2.Size = UDim2.new(1, -2, 1, -2)
	border2.Position = UDim2.new(0, 1, 0, 1)
	border2.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	border2.BorderSizePixel = 0
	border2.Parent = border1

	local border3 = Instance.new("Frame")
	border3.Name = "Border3"
	border3.Size = UDim2.new(1, -6, 1, -6)
	border3.Position = UDim2.new(0, 3, 0, 3)
	border3.BackgroundColor3 = Color3.fromRGB(52, 53, 52)
	border3.BorderSizePixel = 0
	border3.Parent = border2

	local inner = Instance.new("Frame")
	inner.Name = "Frame"
	inner.Size = UDim2.new(1, -2, 1, -2)
	inner.Position = UDim2.new(0, 1, 0, 1)
	inner.BackgroundColor3 = Color3.fromRGB(5, 5, 4)
	inner.BorderSizePixel = 0
	inner.Parent = border3

	local gradientFrame = Instance.new("Frame")
	gradientFrame.Size = UDim2.new(1, 0, 0, 1)
	gradientFrame.BackgroundColor3 = Color3.fromRGB(100, 150, 200)
	gradientFrame.BorderSizePixel = 0
	gradientFrame.Parent = inner

	local gradient = Instance.new("UIGradient")
	gradient.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 150, 200)),
		ColorSequenceKeypoint.new(0.25, Color3.fromRGB(180, 100, 160)),
		ColorSequenceKeypoint.new(0.75, Color3.fromRGB(180, 230, 100)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(180, 100, 160))
	}
	gradient.Parent = gradientFrame

	local shadow = Instance.new("Frame")
	shadow.Size = UDim2.new(1, 0, 0, 1)
	shadow.Position = UDim2.new(0, 0, 0, 1)
	shadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	shadow.BackgroundTransparency = 0.2
	shadow.BorderSizePixel = 0
	shadow.Parent = inner

	local titleLabel = Instance.new("TextLabel")
	titleLabel.Text = title
	titleLabel.Font = self.Font
	titleLabel.TextColor3 = self.TextColor
	titleLabel.TextSize = self.TextSize
	titleLabel.TextXAlignment = Enum.TextXAlignment.Left
	titleLabel.BackgroundTransparency = 1
	titleLabel.Position = UDim2.new(0, 10, 0, 6)
	titleLabel.Size = UDim2.new(1, -20, 0, titleHeight - 6)
	titleLabel.Parent = inner

	local contentLabel = Instance.new("TextLabel")
	contentLabel.Text = content
	contentLabel.Font = Enum.Font.Code
	contentLabel.TextColor3 = self.TextColor
	contentLabel.TextSize = self.TextSize - 2
	contentLabel.TextWrapped = true
	contentLabel.TextXAlignment = Enum.TextXAlignment.Left
	contentLabel.TextYAlignment = Enum.TextYAlignment.Top
	contentLabel.BackgroundTransparency = 1
	contentLabel.Position = UDim2.new(0, 10, 0, titleHeight)
	contentLabel.Size = UDim2.new(1, -20, 0, contentHeight)
	contentLabel.Parent = inner

	local progressBar = Instance.new("Frame")
	progressBar.Name = "ProgressBar"
	progressBar.BackgroundColor3 = self.AccentColor
	progressBar.BorderSizePixel = 0
	progressBar.Size = UDim2.new(1, 0, 0, 2)
	progressBar.Position = UDim2.new(0, 0, 1, -2)
	progressBar.Parent = inner

	local slideIn = TweenService:Create(
		notification,
		TweenInfo.new(self.AnimationSpeed, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{Position = self:CalculatePosition(#self.Notifications + 1)}
	)
	slideIn:Play()

	table.insert(self.Notifications, notification)
	self:UpdatePositions()
	self:UpdateColors()

	local progressTween = TweenService:Create(
		progressBar,
		TweenInfo.new(duration, Enum.EasingStyle.Linear),
		{Size = UDim2.new(0, 0, 0, 2)}
	)
	progressTween:Play()

	local startTime = tick()
	local connection
	connection = RunService.Heartbeat:Connect(function()
		local elapsed = tick() - startTime
		if elapsed >= duration then
			connection:Disconnect()
		else
			self:UpdateColors()
		end
	end)

	task.delay(duration, function()
		local fadeOut = TweenService:Create(
			notification,
			TweenInfo.new(self.AnimationSpeed, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
			{Position = UDim2.new(1, notification.Size.X.Offset + 10, 1, notification.Position.Y.Offset - notification.Position.Y.Scale * self.BottomOffset)}
		)
		fadeOut:Play()
		task.wait(self.AnimationSpeed)
		for i, v in ipairs(self.Notifications) do
			if v == notification then
				table.remove(self.Notifications, i)
				break
			end
		end
		self:UpdatePositions()
		notification:Destroy()
	end)
end

return NotificationSystem
