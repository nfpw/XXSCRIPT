--[[
	i was so lazy to make notification for 
	libraryso i used claude to make one 
	this code 80% pasted -- https://claude.ai/
]]

local NotificationSystem = {}
NotificationSystem.__index = NotificationSystem
NotificationSystem.NotificationSize = UDim2.new(0, 280, 0, 0)
NotificationSystem.Spacing = 3
NotificationSystem.AnimationSpeed = 0.2
NotificationSystem.BottomOffset = 5

local cloneref = cloneref or function(v) return v end
local function getservice(v) return cloneref(game:GetService(v)) end
local TweenService = getservice("TweenService")
local TextService = getservice("TextService")

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

function NotificationSystem:UpdatePositions()
	local yOffset = 0
	for i, notification in ipairs(self.Notifications) do
		local targetPosition = UDim2.new(1, -notification.Size.X.Offset - 5, 1, -yOffset - notification.Size.Y.Offset - self.BottomOffset)
		if notification.Position ~= targetPosition then
			TweenService:Create(
				notification,
				TweenInfo.new(self.AnimationSpeed, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Position = targetPosition}
			):Play()
		end
		yOffset = yOffset + notification.Size.Y.Offset + self.Spacing
	end
end

function NotificationSystem:CreateNotification(title, content, duration)
	duration = duration or 3
	local contentWidth = self.NotificationSize.X.Offset - 10
	local contentTextSize = TextService:GetTextSize(content, 11, Enum.Font.Code, Vector2.new(contentWidth, math.huge))

	local titleHeight = 18
	local contentHeight = contentTextSize.Y
	local totalHeight = titleHeight + contentHeight + 6
	local notificationSize = UDim2.new(0, self.NotificationSize.X.Offset, 0, math.max(totalHeight, 20))

	local notification = Instance.new("Frame")
	notification.Name = "Notification"
	notification.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	notification.BorderSizePixel = 0
	notification.Size = notificationSize
	notification.Position = UDim2.new(1, 5, 1, -self.BottomOffset)
	notification.Parent = self.Container

	local inner = Instance.new("Frame")
	inner.Name = "InnerFrame"
	inner.Size = UDim2.new(1, -4, 1, -4)
	inner.Position = UDim2.new(0, 2, 0, 2)
	inner.BackgroundTransparency = 1
	inner.Parent = notification

	local titleLabel = Instance.new("TextLabel")
	titleLabel.Name = "TitleLabel"
	titleLabel.Text = title
	titleLabel.Font = Enum.Font.Gotham
	titleLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
	titleLabel.TextSize = 12
	titleLabel.TextXAlignment = Enum.TextXAlignment.Left
	titleLabel.BackgroundTransparency = 1
	titleLabel.Position = UDim2.new(0, 2, 0, 0)
	titleLabel.Size = UDim2.new(1, -30, 0, titleHeight)
	titleLabel.Parent = inner

	local countdownLabel = Instance.new("TextLabel")
	countdownLabel.Name = "CountdownLabel"
	countdownLabel.Text = tostring(duration)
	countdownLabel.Font = Enum.Font.Gotham
	countdownLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
	countdownLabel.TextSize = 12
	countdownLabel.TextXAlignment = Enum.TextXAlignment.Right
	countdownLabel.BackgroundTransparency = 1
	countdownLabel.Position = UDim2.new(1, -28, 0, 0)
	countdownLabel.Size = UDim2.new(0, 26, 0, titleHeight)
	countdownLabel.Parent = inner

	local contentLabel = Instance.new("TextLabel")
	contentLabel.Name = "ContentLabel"
	contentLabel.Text = content
	contentLabel.Font = Enum.Font.Code
	contentLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
	contentLabel.TextSize = 11
	contentLabel.TextWrapped = true
	contentLabel.TextXAlignment = Enum.TextXAlignment.Left
	contentLabel.TextYAlignment = Enum.TextYAlignment.Top
	contentLabel.BackgroundTransparency = 1
	contentLabel.Position = UDim2.new(0, 2, 0, titleHeight)
	contentLabel.Size = UDim2.new(1, -4, 0, contentHeight)
	contentLabel.Parent = inner

	table.insert(self.Notifications, notification)
	self:UpdatePositions()

	local startTime = tick()
	local connection; connection = game:GetService("RunService").Heartbeat:Connect(function()
		local remaining = duration - (tick() - startTime)
		countdownLabel.Text = tostring(math.ceil(remaining))

		if remaining <= 0 then
			connection:Disconnect()
			local fadeOut = TweenService:Create(
				notification,
				TweenInfo.new(self.AnimationSpeed, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
				{Position = UDim2.new(1, 5, 1, notification.Position.Y.Offset)}
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
		end
	end)
end

return NotificationSystem
