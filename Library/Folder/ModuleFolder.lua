--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 127 | Scripts: 0 | Modules: 0
local G2L = {};

-- ReplicatedStorage.Bracket
G2L["1"] = Instance.new("Folder");
G2L["1"]["Name"] = [[Bracket]];

-- ReplicatedStorage.Bracket.UIGradient
G2L["2"] = Instance.new("UIGradient", G2L["1"]);
G2L["2"]["Rotation"] = 90;
G2L["2"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 129, 65)),ColorSequenceKeypoint.new(0.490, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 101, 161))};

-- ReplicatedStorage.Bracket.Bracket
G2L["3"] = Instance.new("ScreenGui", G2L["1"]);
G2L["3"]["IgnoreGuiInset"] = true;
G2L["3"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["3"]["Name"] = [[Bracket]];
G2L["3"]["ResetOnSpawn"] = false;

-- ReplicatedStorage.Bracket.Bracket.Main
G2L["4"] = Instance.new("Frame", G2L["3"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4"]["Size"] = UDim2.new(0, 500, 0, 500);
G2L["4"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4"]["Name"] = [[Main]];

-- ReplicatedStorage.Bracket.Bracket.Main.Border
G2L["5"] = Instance.new("Frame", G2L["4"]);
G2L["5"]["ZIndex"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5"]["Size"] = UDim2.new(1, 2, 1, 2);
G2L["5"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Name"] = [[Border]];

-- ReplicatedStorage.Bracket.Bracket.Main.Topbar
G2L["6"] = Instance.new("Frame", G2L["4"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["6"]["Size"] = UDim2.new(1, -10, 0, 15);
G2L["6"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6"]["Name"] = [[Topbar]];
G2L["6"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Bracket.Bracket.Main.Topbar.WindowName
G2L["7"] = Instance.new("TextLabel", G2L["6"]);
G2L["7"]["TextStrokeTransparency"] = 0.75;
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["7"]["TextSize"] = 15;
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["7"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["7"]["Text"] = [[Window Name]];
G2L["7"]["Name"] = [[WindowName]];
G2L["7"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- ReplicatedStorage.Bracket.Bracket.Main.Topbar.LibraryName
G2L["8"] = Instance.new("TextLabel", G2L["6"]);
G2L["8"]["TextStrokeTransparency"] = 0.75;
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["8"]["TextSize"] = 15;
G2L["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8"]["TextColor3"] = Color3.fromRGB(102, 102, 102);
G2L["8"]["BackgroundTransparency"] = 1;
G2L["8"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["8"]["Visible"] = false;
G2L["8"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["8"]["Text"] = [[Bracket]];
G2L["8"]["Name"] = [[LibraryName]];
G2L["8"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- ReplicatedStorage.Bracket.Bracket.Main.Topbar.SearchBar
G2L["9"] = Instance.new("TextBox", G2L["6"]);
G2L["9"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["9"]["PlaceholderColor3"] = Color3.fromRGB(101, 101, 101);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9"]["TextWrapped"] = true;
G2L["9"]["TextSize"] = 14;
G2L["9"]["Name"] = [[SearchBar]];
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["9"]["ClearTextOnFocus"] = false;
G2L["9"]["ClipsDescendants"] = true;
G2L["9"]["PlaceholderText"] = [[Search]];
G2L["9"]["Size"] = UDim2.new(0, 90, 0, 20);
G2L["9"]["Position"] = UDim2.new(0.95, -10, 0.6, 0);
G2L["9"]["Text"] = [[]];
G2L["9"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Bracket.Bracket.Main.Topbar.SearchBar.ClearButton
G2L["a"] = Instance.new("TextButton", G2L["9"]);
G2L["a"]["TextSize"] = 16;
G2L["a"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["a"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["Name"] = [[ClearButton]];
G2L["a"]["Text"] = [[✕]];
G2L["a"]["Visible"] = false;
G2L["a"]["Position"] = UDim2.new(1, -5, 0.5, 0);

-- ReplicatedStorage.Bracket.Bracket.Main.Topbar.WhitelistButton
G2L["b"] = Instance.new("TextButton", G2L["6"]);
G2L["b"]["TextSize"] = 14;
G2L["b"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["b"]["ZIndex"] = 10;
G2L["b"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["b"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["Name"] = [[WhitelistButton]];
G2L["b"]["Text"] = [[W]];
G2L["b"]["Position"] = UDim2.new(1, -15, 0, 0);

-- ReplicatedStorage.Bracket.Bracket.Main.Topbar.Close
G2L["c"] = Instance.new("TextButton", G2L["6"]);
G2L["c"]["TextSize"] = 20;
G2L["c"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["c"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["c"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["c"]["BackgroundTransparency"] = 1;
G2L["c"]["Name"] = [[Close]];
G2L["c"]["Text"] = [[×]];
G2L["c"]["Position"] = UDim2.new(1, 5, 0, 0);

-- ReplicatedStorage.Bracket.Bracket.Main.Holder
G2L["d"] = Instance.new("ImageLabel", G2L["4"]);
G2L["d"]["ZIndex"] = 2;
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["d"]["ScaleType"] = Enum.ScaleType.Tile;
G2L["d"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["d"]["TileSize"] = UDim2.new(0, 500, 0, 500);
G2L["d"]["Size"] = UDim2.new(1, -10, 1, -25);
G2L["d"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["d"]["Name"] = [[Holder]];
G2L["d"]["Position"] = UDim2.new(0.5, 0, 0, 20);

-- ReplicatedStorage.Bracket.Bracket.Main.Holder.Border
G2L["e"] = Instance.new("Frame", G2L["d"]);
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["e"]["Size"] = UDim2.new(1, 2, 1, 2);
G2L["e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Name"] = [[Border]];

-- ReplicatedStorage.Bracket.Bracket.Main.Holder.TBContainer
G2L["f"] = Instance.new("Frame", G2L["d"]);
G2L["f"]["ZIndex"] = 3;
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["f"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["f"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["f"]["Position"] = UDim2.new(0.5, 0, 0, 5);
G2L["f"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["f"]["Name"] = [[TBContainer]];

-- ReplicatedStorage.Bracket.Bracket.Main.Holder.TBContainer.Border
G2L["10"] = Instance.new("Frame", G2L["f"]);
G2L["10"]["ZIndex"] = 2;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["10"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["10"]["Size"] = UDim2.new(1, 2, 1, 2);
G2L["10"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Name"] = [[Border]];

-- ReplicatedStorage.Bracket.Bracket.Main.Holder.TBContainer.Holder
G2L["11"] = Instance.new("Frame", G2L["f"]);
G2L["11"]["ZIndex"] = 3;
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["11"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["11"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["11"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["11"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["11"]["Name"] = [[Holder]];
G2L["11"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Bracket.Bracket.Main.Holder.TBContainer.Holder.ListLayout
G2L["12"] = Instance.new("UIListLayout", G2L["11"]);
G2L["12"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["12"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["12"]["Name"] = [[ListLayout]];
G2L["12"]["FillDirection"] = Enum.FillDirection.Horizontal;

-- ReplicatedStorage.Bracket.Bracket.Main.Holder.TContainer
G2L["13"] = Instance.new("Frame", G2L["d"]);
G2L["13"]["ZIndex"] = 2;
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["13"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["13"]["Size"] = UDim2.new(1, 0, 1, -25);
G2L["13"]["Position"] = UDim2.new(0.5, 0, 0, 25);
G2L["13"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["13"]["Name"] = [[TContainer]];
G2L["13"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Bracket.Bracket.Main.Holder.UIGradient
G2L["14"] = Instance.new("UIGradient", G2L["d"]);
G2L["14"]["Rotation"] = 90;
G2L["14"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.534, Color3.fromRGB(42, 34, 75)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(167, 181, 72))};

-- ReplicatedStorage.Bracket.Bracket.ToolTip
G2L["15"] = Instance.new("TextLabel", G2L["3"]);
G2L["15"]["TextStrokeTransparency"] = 0.75;
G2L["15"]["ZIndex"] = 5;
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["TextSize"] = 15;
G2L["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["15"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["15"]["BackgroundTransparency"] = 0.5;
G2L["15"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["15"]["Size"] = UDim2.new(0, 45, 0, 20);
G2L["15"]["Visible"] = false;
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Text"] = [[ToolTip]];
G2L["15"]["Name"] = [[ToolTip]];

-- ReplicatedStorage.Bracket.Bracket.ToolTip.UICorner
G2L["16"] = Instance.new("UICorner", G2L["15"]);
G2L["16"]["CornerRadius"] = UDim.new(0, 4);

-- ReplicatedStorage.Bracket.Bracket.WhitelistFrame
G2L["17"] = Instance.new("Frame", G2L["3"]);
G2L["17"]["Visible"] = false;
G2L["17"]["ZIndex"] = 20;
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Size"] = UDim2.new(0, 300, 0, 400);
G2L["17"]["Position"] = UDim2.new(1, -310, 0.5, -200);
G2L["17"]["Name"] = [[WhitelistFrame]];

-- ReplicatedStorage.Bracket.Bracket.WhitelistFrame.BorderFrame1
G2L["18"] = Instance.new("Frame", G2L["17"]);
G2L["18"]["ZIndex"] = 21;
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["18"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["18"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["18"]["Name"] = [[BorderFrame1]];

-- ReplicatedStorage.Bracket.Bracket.WhitelistFrame.BorderFrame1.BorderFrame2
G2L["19"] = Instance.new("Frame", G2L["18"]);
G2L["19"]["ZIndex"] = 22;
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["19"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["19"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["19"]["Name"] = [[BorderFrame2]];

-- ReplicatedStorage.Bracket.Bracket.WhitelistFrame.BorderFrame1.BorderFrame2.BorderFrame3
G2L["1a"] = Instance.new("Frame", G2L["19"]);
G2L["1a"]["ZIndex"] = 23;
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["1a"]["Size"] = UDim2.new(1, -6, 1, -6);
G2L["1a"]["Position"] = UDim2.new(0, 3, 0, 3);
G2L["1a"]["Name"] = [[BorderFrame3]];

-- ReplicatedStorage.Bracket.Bracket.WhitelistFrame.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame
G2L["1b"] = Instance.new("Frame", G2L["1a"]);
G2L["1b"]["ZIndex"] = 24;
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(6, 6, 5);
G2L["1b"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["1b"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["1b"]["Name"] = [[InnerFrame]];

-- ReplicatedStorage.Bracket.Bracket.WhitelistFrame.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame
G2L["1c"] = Instance.new("Frame", G2L["1b"]);
G2L["1c"]["ZIndex"] = 25;
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 129, 65);
G2L["1c"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["1c"]["Name"] = [[GradientFrame]];

-- ReplicatedStorage.Bracket.Bracket.WhitelistFrame.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame.UIGradient
G2L["1d"] = Instance.new("UIGradient", G2L["1c"]);
G2L["1d"]["Rotation"] = 90;
G2L["1d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 129, 65)),ColorSequenceKeypoint.new(0.250, Color3.fromRGB(181, 101, 161)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(181, 231, 101)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 101, 161))};

-- ReplicatedStorage.Bracket.Bracket.WhitelistFrame.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ShadowLine
G2L["1e"] = Instance.new("Frame", G2L["1b"]);
G2L["1e"]["ZIndex"] = 26;
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["1e"]["Position"] = UDim2.new(0, 0, 0, 1);
G2L["1e"]["Name"] = [[ShadowLine]];
G2L["1e"]["BackgroundTransparency"] = 0.2;

-- ReplicatedStorage.Bracket.Bracket.WhitelistFrame.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.TitleBar
G2L["1f"] = Instance.new("Frame", G2L["1b"]);
G2L["1f"]["ZIndex"] = 26;
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["1f"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["1f"]["Name"] = [[TitleBar]];

-- ReplicatedStorage.Bracket.Bracket.WhitelistFrame.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.TitleBar.TitleText
G2L["20"] = Instance.new("TextLabel", G2L["1f"]);
G2L["20"]["ZIndex"] = 27;
G2L["20"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["20"]["TextSize"] = 14;
G2L["20"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["20"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["20"]["BackgroundTransparency"] = 1;
G2L["20"]["Size"] = UDim2.new(1, -50, 1, 0);
G2L["20"]["Text"] = [[WHITELIST MANAGER]];
G2L["20"]["Name"] = [[TitleText]];
G2L["20"]["Position"] = UDim2.new(0, 15, 0, 0);

-- ReplicatedStorage.Bracket.Bracket.WhitelistFrame.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.TitleBar.CloseButton
G2L["21"] = Instance.new("TextButton", G2L["1f"]);
G2L["21"]["TextSize"] = 20;
G2L["21"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["21"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["21"]["ZIndex"] = 27;
G2L["21"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["21"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["21"]["BackgroundTransparency"] = 1;
G2L["21"]["Name"] = [[CloseButton]];
G2L["21"]["Text"] = [[×]];
G2L["21"]["Position"] = UDim2.new(1, -8, 0.5, 0);

-- ReplicatedStorage.Bracket.Bracket.WhitelistFrame.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.SearchBar
G2L["22"] = Instance.new("TextBox", G2L["1b"]);
G2L["22"]["TextColor3"] = Color3.fromRGB(221, 221, 221);
G2L["22"]["PlaceholderColor3"] = Color3.fromRGB(121, 121, 121);
G2L["22"]["ZIndex"] = 26;
G2L["22"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["22"]["TextSize"] = 14;
G2L["22"]["Name"] = [[SearchBar]];
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["22"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["22"]["PlaceholderText"] = [[Search players...]];
G2L["22"]["Size"] = UDim2.new(1, -20, 0, 32);
G2L["22"]["Position"] = UDim2.new(0, 10, 0, 45);
G2L["22"]["BorderColor3"] = Color3.fromRGB(41, 41, 41);
G2L["22"]["Text"] = [[]];

-- ReplicatedStorage.Bracket.Bracket.WhitelistFrame.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.SearchBar.UICorner
G2L["23"] = Instance.new("UICorner", G2L["22"]);
G2L["23"]["CornerRadius"] = UDim.new(0, 4);

-- ReplicatedStorage.Bracket.Bracket.WhitelistFrame.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.SearchBar.UIPadding
G2L["24"] = Instance.new("UIPadding", G2L["22"]);
G2L["24"]["PaddingRight"] = UDim.new(0, 10);
G2L["24"]["PaddingLeft"] = UDim.new(0, 10);

-- ReplicatedStorage.Bracket.Bracket.WhitelistFrame.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.PlayerList
G2L["25"] = Instance.new("ScrollingFrame", G2L["1b"]);
G2L["25"]["ZIndex"] = 26;
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["25"]["Name"] = [[PlayerList]];
G2L["25"]["ScrollBarImageTransparency"] = 0.3;
G2L["25"]["Size"] = UDim2.new(1, -20, 1, -95);
G2L["25"]["ScrollBarImageColor3"] = Color3.fromRGB(121, 121, 121);
G2L["25"]["Position"] = UDim2.new(0, 10, 0, 87);
G2L["25"]["ScrollBarThickness"] = 6;
G2L["25"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Bracket.Bracket.WhitelistFrame.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.PlayerList.ListLayout
G2L["26"] = Instance.new("UIListLayout", G2L["25"]);
G2L["26"]["Padding"] = UDim.new(0, 8);
G2L["26"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["26"]["Name"] = [[ListLayout]];

-- ReplicatedStorage.Bracket.Hud
G2L["27"] = Instance.new("Frame", G2L["1"]);
G2L["27"]["Visible"] = false;
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["Size"] = UDim2.new(0, 388, 0, 35);
G2L["27"]["Position"] = UDim2.new(1, -398, 0, 10);
G2L["27"]["Name"] = [[Hud]];

-- ReplicatedStorage.Bracket.Hud.BorderFrame1
G2L["28"] = Instance.new("Frame", G2L["27"]);
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["28"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["28"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["28"]["Name"] = [[BorderFrame1]];

-- ReplicatedStorage.Bracket.Hud.BorderFrame1.BorderFrame2
G2L["29"] = Instance.new("Frame", G2L["28"]);
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["29"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["29"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["29"]["Name"] = [[BorderFrame2]];

-- ReplicatedStorage.Bracket.Hud.BorderFrame1.BorderFrame2.BorderFrame3
G2L["2a"] = Instance.new("Frame", G2L["29"]);
G2L["2a"]["BorderSizePixel"] = 0;
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["2a"]["Size"] = UDim2.new(1, -6, 1, -6);
G2L["2a"]["Position"] = UDim2.new(0, 3, 0, 3);
G2L["2a"]["Name"] = [[BorderFrame3]];

-- ReplicatedStorage.Bracket.Hud.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame
G2L["2b"] = Instance.new("Frame", G2L["2a"]);
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(6, 6, 5);
G2L["2b"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["2b"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["2b"]["Name"] = [[InnerFrame]];

-- ReplicatedStorage.Bracket.Hud.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame
G2L["2c"] = Instance.new("Frame", G2L["2b"]);
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(101, 151, 201);
G2L["2c"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["2c"]["Name"] = [[GradientFrame]];

-- ReplicatedStorage.Bracket.Hud.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame.UIGradient
G2L["2d"] = Instance.new("UIGradient", G2L["2c"]);
G2L["2d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 151, 201)),ColorSequenceKeypoint.new(0.250, Color3.fromRGB(181, 101, 161)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(181, 231, 101)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 101, 161))};

-- ReplicatedStorage.Bracket.Hud.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ShadowLine
G2L["2e"] = Instance.new("Frame", G2L["2b"]);
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["2e"]["Position"] = UDim2.new(0, 0, 0, 1);
G2L["2e"]["Name"] = [[ShadowLine]];
G2L["2e"]["BackgroundTransparency"] = 0.2;

-- ReplicatedStorage.Bracket.Hud.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.InfoText
G2L["2f"] = Instance.new("TextLabel", G2L["2b"]);
G2L["2f"]["TextSize"] = 14;
G2L["2f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["BackgroundTransparency"] = 1;
G2L["2f"]["RichText"] = true;
G2L["2f"]["Size"] = UDim2.new(1, -12, 1, -4);
G2L["2f"]["Text"] = [[<font color="rgb(255,255,255)">game</font><font color="rgb(163,200,79)">sense</font><font color="rgb(255,255,255)"> | </font><font color="rgb(255,255,255)">PerfectoExternal</font><font color="rgb(255,255,255)"> | </font><font color="rgb(255,255,255)">144fps</font><font color="rgb(255,255,255)"> | </font><font color="rgb(255,255,255)">72ms</font><font color="rgb(255,255,255)"> | </font><font color="rgb(255,255,255)">17:20</font>]];
G2L["2f"]["Name"] = [[InfoText]];
G2L["2f"]["Position"] = UDim2.new(0, 6, 0, 2);

-- ReplicatedStorage.Bracket.Palette
G2L["30"] = Instance.new("Frame", G2L["1"]);
G2L["30"]["Visible"] = false;
G2L["30"]["ZIndex"] = 5;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["30"]["Size"] = UDim2.new(0, 150, 0, 240);
G2L["30"]["Position"] = UDim2.new(0, 100, 0, 100);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Name"] = [[Palette]];

-- ReplicatedStorage.Bracket.Palette.GradientPalette
G2L["31"] = Instance.new("ImageButton", G2L["30"]);
G2L["31"]["AutoButtonColor"] = false;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["31"]["ZIndex"] = 5;
G2L["31"]["Size"] = UDim2.new(1, -10, 0, 150);
G2L["31"]["Name"] = [[GradientPalette]];
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Position"] = UDim2.new(0, 5, 0, 5);

-- ReplicatedStorage.Bracket.Palette.GradientPalette.SaturationOverlay
G2L["32"] = Instance.new("Frame", G2L["31"]);
G2L["32"]["ZIndex"] = 6;
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["32"]["Name"] = [[SaturationOverlay]];

-- ReplicatedStorage.Bracket.Palette.GradientPalette.SaturationOverlay.UIGradient
G2L["33"] = Instance.new("UIGradient", G2L["32"]);
G2L["33"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)};

-- ReplicatedStorage.Bracket.Palette.GradientPalette.BrightnessOverlay
G2L["34"] = Instance.new("Frame", G2L["31"]);
G2L["34"]["ZIndex"] = 7;
G2L["34"]["BorderSizePixel"] = 0;
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["34"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["34"]["Name"] = [[BrightnessOverlay]];

-- ReplicatedStorage.Bracket.Palette.GradientPalette.BrightnessOverlay.UIGradient
G2L["35"] = Instance.new("UIGradient", G2L["34"]);
G2L["35"]["Rotation"] = 90;
G2L["35"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(1.000, 0)};

-- ReplicatedStorage.Bracket.Palette.GradientPalette.Dot
G2L["36"] = Instance.new("Frame", G2L["31"]);
G2L["36"]["ZIndex"] = 8;
G2L["36"]["BorderSizePixel"] = 2;
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["36"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["36"]["Size"] = UDim2.new(0, 3, 0, 3);
G2L["36"]["Position"] = UDim2.new(1, 0, 0, 0);
G2L["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["Name"] = [[Dot]];
G2L["36"]["Rotation"] = 45;

-- ReplicatedStorage.Bracket.Palette.ColorSlider
G2L["37"] = Instance.new("TextButton", G2L["30"]);
G2L["37"]["AutoButtonColor"] = false;
G2L["37"]["TextSize"] = 14;
G2L["37"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["37"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["37"]["ZIndex"] = 5;
G2L["37"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["37"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["37"]["Name"] = [[ColorSlider]];
G2L["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["Text"] = [[]];
G2L["37"]["Position"] = UDim2.new(1, -5, 0, 160);

-- ReplicatedStorage.Bracket.Palette.ColorSlider.Gradient
G2L["38"] = Instance.new("UIGradient", G2L["37"]);
G2L["38"]["Name"] = [[Gradient]];
G2L["38"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 0, 6)),ColorSequenceKeypoint.new(0.200, Color3.fromRGB(255, 0, 253)),ColorSequenceKeypoint.new(0.400, Color3.fromRGB(0, 19, 255)),ColorSequenceKeypoint.new(0.600, Color3.fromRGB(0, 255, 255)),ColorSequenceKeypoint.new(0.800, Color3.fromRGB(23, 255, 0)),ColorSequenceKeypoint.new(0.900, Color3.fromRGB(236, 255, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 0, 6))};

-- ReplicatedStorage.Bracket.Palette.TransparencySlider
G2L["39"] = Instance.new("TextButton", G2L["30"]);
G2L["39"]["AutoButtonColor"] = false;
G2L["39"]["TextSize"] = 14;
G2L["39"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["39"]["ZIndex"] = 5;
G2L["39"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["39"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["39"]["Name"] = [[TransparencySlider]];
G2L["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["39"]["Text"] = [[]];
G2L["39"]["Position"] = UDim2.new(1, -5, 0, 175);

-- ReplicatedStorage.Bracket.Palette.TransparencySlider.Gradient
G2L["3a"] = Instance.new("UIGradient", G2L["39"]);
G2L["3a"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)};
G2L["3a"]["Name"] = [[Gradient]];

-- ReplicatedStorage.Bracket.Palette.ColorPreview
G2L["3b"] = Instance.new("Frame", G2L["30"]);
G2L["3b"]["ZIndex"] = 5;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["3b"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["3b"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["3b"]["Position"] = UDim2.new(0.5, 0, 0, 190);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["Name"] = [[ColorPreview]];

-- ReplicatedStorage.Bracket.Palette.InputFrame
G2L["3c"] = Instance.new("Frame", G2L["30"]);
G2L["3c"]["ZIndex"] = 5;
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["3c"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["3c"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["3c"]["Position"] = UDim2.new(0.5, 0, 0, 215);
G2L["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3c"]["Name"] = [[InputFrame]];

-- ReplicatedStorage.Bracket.Palette.InputFrame.InputBox
G2L["3d"] = Instance.new("TextBox", G2L["3c"]);
G2L["3d"]["TextStrokeTransparency"] = 0.75;
G2L["3d"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["3d"]["PlaceholderColor3"] = Color3.fromRGB(202, 202, 202);
G2L["3d"]["ZIndex"] = 5;
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["TextWrapped"] = true;
G2L["3d"]["TextSize"] = 12;
G2L["3d"]["Name"] = [[InputBox]];
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3d"]["PlaceholderText"] = [[RGBA: 255, 0, 0, 255]];
G2L["3d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["3d"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3d"]["Text"] = [[]];
G2L["3d"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Bracket.Section
G2L["3e"] = Instance.new("Frame", G2L["1"]);
G2L["3e"]["ZIndex"] = 3;
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3e"]["Size"] = UDim2.new(1, 0, 0, 235);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3e"]["Name"] = [[Section]];

-- ReplicatedStorage.Bracket.Section.Border
G2L["3f"] = Instance.new("Frame", G2L["3e"]);
G2L["3f"]["ZIndex"] = 2;
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["3f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3f"]["Size"] = UDim2.new(1, 2, 1, 2);
G2L["3f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["Name"] = [[Border]];

-- ReplicatedStorage.Bracket.Section.Title
G2L["40"] = Instance.new("TextLabel", G2L["3e"]);
G2L["40"]["TextStrokeTransparency"] = 0.75;
G2L["40"]["ZIndex"] = 3;
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["40"]["TextSize"] = 15;
G2L["40"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["40"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["40"]["Size"] = UDim2.new(0, 45, 0, 2);
G2L["40"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["40"]["Text"] = [[Section]];
G2L["40"]["Name"] = [[Title]];
G2L["40"]["Position"] = UDim2.new(0, 5, 0, -2);

-- ReplicatedStorage.Bracket.Section.Container
G2L["41"] = Instance.new("Frame", G2L["3e"]);
G2L["41"]["ZIndex"] = 3;
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["41"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["41"]["Size"] = UDim2.new(1, 0, 1, -10);
G2L["41"]["Position"] = UDim2.new(0.5, 0, 0, 10);
G2L["41"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["41"]["Name"] = [[Container]];
G2L["41"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Bracket.Section.Container.ListLayout
G2L["42"] = Instance.new("UIListLayout", G2L["41"]);
G2L["42"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["42"]["Padding"] = UDim.new(0, 5);
G2L["42"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["42"]["Name"] = [[ListLayout]];

-- ReplicatedStorage.Bracket.Section.UIGradient
G2L["43"] = Instance.new("UIGradient", G2L["3e"]);
G2L["43"]["Rotation"] = 90;
G2L["43"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 129, 65)),ColorSequenceKeypoint.new(0.250, Color3.fromRGB(181, 101, 161)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(181, 231, 101)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 101, 161))};

-- ReplicatedStorage.Bracket.Tab
G2L["44"] = Instance.new("ScrollingFrame", G2L["1"]);
G2L["44"]["Active"] = true;
G2L["44"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["44"]["ZIndex"] = 2;
G2L["44"]["BorderSizePixel"] = 0;
G2L["44"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["44"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["44"]["Name"] = [[Tab]];
G2L["44"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["44"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["44"]["ScrollBarImageColor3"] = Color3.fromRGB(52, 52, 52);
G2L["44"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["44"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["44"]["ScrollBarThickness"] = 0;
G2L["44"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Bracket.Tab.RightSide
G2L["45"] = Instance.new("Frame", G2L["44"]);
G2L["45"]["ZIndex"] = 2;
G2L["45"]["BorderSizePixel"] = 0;
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["45"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["45"]["Size"] = UDim2.new(0.5, -5, 1, 0);
G2L["45"]["Position"] = UDim2.new(1, -5, 0, 0);
G2L["45"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["45"]["Name"] = [[RightSide]];
G2L["45"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Bracket.Tab.RightSide.Padding
G2L["46"] = Instance.new("UIPadding", G2L["45"]);
G2L["46"]["PaddingTop"] = UDim.new(0, 10);
G2L["46"]["Name"] = [[Padding]];
G2L["46"]["PaddingLeft"] = UDim.new(0, 3);

-- ReplicatedStorage.Bracket.Tab.RightSide.ListLayout
G2L["47"] = Instance.new("UIListLayout", G2L["45"]);
G2L["47"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["47"]["Padding"] = UDim.new(0, 10);
G2L["47"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["47"]["Name"] = [[ListLayout]];

-- ReplicatedStorage.Bracket.Tab.LeftSide
G2L["48"] = Instance.new("Frame", G2L["44"]);
G2L["48"]["ZIndex"] = 2;
G2L["48"]["BorderSizePixel"] = 0;
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["48"]["Size"] = UDim2.new(0.5, -5, 1, 0);
G2L["48"]["Position"] = UDim2.new(0, 5, 0, 0);
G2L["48"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["48"]["Name"] = [[LeftSide]];
G2L["48"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Bracket.Tab.LeftSide.Padding
G2L["49"] = Instance.new("UIPadding", G2L["48"]);
G2L["49"]["PaddingTop"] = UDim.new(0, 10);
G2L["49"]["PaddingRight"] = UDim.new(0, 3);
G2L["49"]["Name"] = [[Padding]];

-- ReplicatedStorage.Bracket.Tab.LeftSide.ListLayout
G2L["4a"] = Instance.new("UIListLayout", G2L["48"]);
G2L["4a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["4a"]["Padding"] = UDim.new(0, 10);
G2L["4a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["4a"]["Name"] = [[ListLayout]];

-- ReplicatedStorage.Bracket.Button
G2L["4b"] = Instance.new("TextButton", G2L["1"]);
G2L["4b"]["TextStrokeTransparency"] = 0.75;
G2L["4b"]["AutoButtonColor"] = false;
G2L["4b"]["TextSize"] = 15;
G2L["4b"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["4b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4b"]["ZIndex"] = 3;
G2L["4b"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["4b"]["Name"] = [[Button]];
G2L["4b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4b"]["Text"] = [[]];

-- ReplicatedStorage.Bracket.Button.Title
G2L["4c"] = Instance.new("TextLabel", G2L["4b"]);
G2L["4c"]["TextStrokeTransparency"] = 0.75;
G2L["4c"]["ZIndex"] = 3;
G2L["4c"]["BorderSizePixel"] = 0;
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4c"]["TextSize"] = 15;
G2L["4c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4c"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["4c"]["BackgroundTransparency"] = 1;
G2L["4c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4c"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4c"]["Text"] = [[Button]];
G2L["4c"]["Name"] = [[Title]];

-- ReplicatedStorage.Bracket.Button.Gradient
G2L["4d"] = Instance.new("UIGradient", G2L["4b"]);
G2L["4d"]["Rotation"] = 90;
G2L["4d"]["Name"] = [[Gradient]];
G2L["4d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Bracket.Colorpicker
G2L["4e"] = Instance.new("TextButton", G2L["1"]);
G2L["4e"]["TextStrokeTransparency"] = 0.75;
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["AutoButtonColor"] = false;
G2L["4e"]["TextSize"] = 15;
G2L["4e"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4e"]["ZIndex"] = 3;
G2L["4e"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["4e"]["BackgroundTransparency"] = 1;
G2L["4e"]["Name"] = [[Colorpicker]];
G2L["4e"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4e"]["Text"] = [[]];

-- ReplicatedStorage.Bracket.Colorpicker.Title
G2L["4f"] = Instance.new("TextLabel", G2L["4e"]);
G2L["4f"]["TextStrokeTransparency"] = 0.75;
G2L["4f"]["ZIndex"] = 3;
G2L["4f"]["BorderSizePixel"] = 0;
G2L["4f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4f"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4f"]["TextSize"] = 15;
G2L["4f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4f"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["4f"]["BackgroundTransparency"] = 1;
G2L["4f"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["4f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4f"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4f"]["Text"] = [[Colorpicker]];
G2L["4f"]["Name"] = [[Title]];
G2L["4f"]["Position"] = UDim2.new(0, 0, 0.5, 0);

-- ReplicatedStorage.Bracket.Colorpicker.Color
G2L["50"] = Instance.new("Frame", G2L["4e"]);
G2L["50"]["ZIndex"] = 3;
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["50"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["50"]["Size"] = UDim2.new(0, 20, 0, 10);
G2L["50"]["Position"] = UDim2.new(1, 0, 0.5, 0);
G2L["50"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["50"]["Name"] = [[Color]];

-- ReplicatedStorage.Bracket.Colorpicker.Color.Gradient
G2L["51"] = Instance.new("UIGradient", G2L["50"]);
G2L["51"]["Rotation"] = 90;
G2L["51"]["Name"] = [[Gradient]];
G2L["51"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Bracket.Dropdown
G2L["52"] = Instance.new("TextButton", G2L["1"]);
G2L["52"]["TextStrokeTransparency"] = 0.75;
G2L["52"]["BorderSizePixel"] = 0;
G2L["52"]["AutoButtonColor"] = false;
G2L["52"]["TextSize"] = 15;
G2L["52"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["52"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["52"]["ZIndex"] = 3;
G2L["52"]["Size"] = UDim2.new(1, -10, 0, 40);
G2L["52"]["BackgroundTransparency"] = 1;
G2L["52"]["Name"] = [[Dropdown]];
G2L["52"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["52"]["Text"] = [[]];

-- ReplicatedStorage.Bracket.Dropdown.Title
G2L["53"] = Instance.new("TextLabel", G2L["52"]);
G2L["53"]["TextStrokeTransparency"] = 0.75;
G2L["53"]["ZIndex"] = 3;
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["53"]["TextSize"] = 15;
G2L["53"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["53"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["53"]["BackgroundTransparency"] = 1;
G2L["53"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["53"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["53"]["Text"] = [[Dropdown]];
G2L["53"]["Name"] = [[Title]];

-- ReplicatedStorage.Bracket.Dropdown.Container
G2L["54"] = Instance.new("Frame", G2L["52"]);
G2L["54"]["ZIndex"] = 3;
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["54"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["54"]["Position"] = UDim2.new(0, 0, 0, 20);
G2L["54"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["54"]["Name"] = [[Container]];

-- ReplicatedStorage.Bracket.Dropdown.Container.Value
G2L["55"] = Instance.new("TextLabel", G2L["54"]);
G2L["55"]["TextStrokeTransparency"] = 0.75;
G2L["55"]["ZIndex"] = 3;
G2L["55"]["BorderSizePixel"] = 0;
G2L["55"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["55"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["55"]["TextSize"] = 15;
G2L["55"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["55"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["55"]["BackgroundTransparency"] = 1;
G2L["55"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["55"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["55"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["55"]["Text"] = [[...]];
G2L["55"]["Name"] = [[Value]];
G2L["55"]["Position"] = UDim2.new(0.5, 0, 0, 0);

-- ReplicatedStorage.Bracket.Dropdown.Container.Holder
G2L["56"] = Instance.new("Frame", G2L["54"]);
G2L["56"]["Visible"] = false;
G2L["56"]["ZIndex"] = 3;
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["56"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["56"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["56"]["Position"] = UDim2.new(0.5, 0, 0, 25);
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["Name"] = [[Holder]];

-- ReplicatedStorage.Bracket.Dropdown.Container.Holder.Container
G2L["57"] = Instance.new("Frame", G2L["56"]);
G2L["57"]["ZIndex"] = 3;
G2L["57"]["BorderSizePixel"] = 0;
G2L["57"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["57"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["57"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["57"]["Name"] = [[Container]];
G2L["57"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Bracket.Dropdown.Container.Holder.Container.ListLayout
G2L["58"] = Instance.new("UIListLayout", G2L["57"]);
G2L["58"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["58"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["58"]["Name"] = [[ListLayout]];

-- ReplicatedStorage.Bracket.Dropdown.Container.Holder.Container.UIGradient
G2L["59"] = Instance.new("UIGradient", G2L["57"]);
G2L["59"]["Rotation"] = 90;
G2L["59"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 129, 65)),ColorSequenceKeypoint.new(0.250, Color3.fromRGB(181, 101, 161)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(181, 231, 101)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 101, 161))};

-- ReplicatedStorage.Bracket.Dropdown.Container.Holder.Gradient
G2L["5a"] = Instance.new("UIGradient", G2L["56"]);
G2L["5a"]["Rotation"] = 90;
G2L["5a"]["Name"] = [[Gradient]];
G2L["5a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Bracket.Dropdown.Container.Gradient
G2L["5b"] = Instance.new("UIGradient", G2L["54"]);
G2L["5b"]["Rotation"] = 90;
G2L["5b"]["Name"] = [[Gradient]];
G2L["5b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Bracket.Option
G2L["5c"] = Instance.new("TextButton", G2L["1"]);
G2L["5c"]["TextStrokeTransparency"] = 0.75;
G2L["5c"]["BorderSizePixel"] = 0;
G2L["5c"]["AutoButtonColor"] = false;
G2L["5c"]["TextSize"] = 15;
G2L["5c"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["5c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5c"]["ZIndex"] = 4;
G2L["5c"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["5c"]["BackgroundTransparency"] = 1;
G2L["5c"]["Name"] = [[Option]];
G2L["5c"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["5c"]["Text"] = [[]];

-- ReplicatedStorage.Bracket.Option.Title
G2L["5d"] = Instance.new("TextLabel", G2L["5c"]);
G2L["5d"]["TextStrokeTransparency"] = 0.75;
G2L["5d"]["ZIndex"] = 4;
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["5d"]["TextSize"] = 15;
G2L["5d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5d"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["5d"]["BackgroundTransparency"] = 1;
G2L["5d"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["5d"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["5d"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["5d"]["Text"] = [[Option]];
G2L["5d"]["Name"] = [[Title]];
G2L["5d"]["Position"] = UDim2.new(0.5, 0, 0, 0);

-- ReplicatedStorage.Bracket.Option.Gradient
G2L["5e"] = Instance.new("UIGradient", G2L["5c"]);
G2L["5e"]["Rotation"] = 90;
G2L["5e"]["Name"] = [[Gradient]];
G2L["5e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Bracket.Slider
G2L["5f"] = Instance.new("TextButton", G2L["1"]);
G2L["5f"]["TextStrokeTransparency"] = 0.75;
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["AutoButtonColor"] = false;
G2L["5f"]["TextSize"] = 15;
G2L["5f"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["5f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5f"]["ZIndex"] = 4;
G2L["5f"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["5f"]["BackgroundTransparency"] = 1;
G2L["5f"]["Name"] = [[Slider]];
G2L["5f"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["5f"]["Text"] = [[]];

-- ReplicatedStorage.Bracket.Slider.Title
G2L["60"] = Instance.new("TextLabel", G2L["5f"]);
G2L["60"]["TextStrokeTransparency"] = 0.75;
G2L["60"]["ZIndex"] = 3;
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["60"]["TextSize"] = 15;
G2L["60"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["60"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["60"]["BackgroundTransparency"] = 1;
G2L["60"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["60"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["60"]["Text"] = [[Slider]];
G2L["60"]["Name"] = [[Title]];

-- ReplicatedStorage.Bracket.Slider.Slider
G2L["61"] = Instance.new("Frame", G2L["5f"]);
G2L["61"]["ZIndex"] = 3;
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["61"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["61"]["Size"] = UDim2.new(1, 0, 0, 10);
G2L["61"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["Name"] = [[Slider]];

-- ReplicatedStorage.Bracket.Slider.Slider.Bar
G2L["62"] = Instance.new("Frame", G2L["61"]);
G2L["62"]["ZIndex"] = 3;
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["62"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["62"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["62"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["62"]["Name"] = [[Bar]];

-- ReplicatedStorage.Bracket.Slider.Slider.Bar.Gradient
G2L["63"] = Instance.new("UIGradient", G2L["62"]);
G2L["63"]["Rotation"] = 90;
G2L["63"]["Name"] = [[Gradient]];
G2L["63"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Bracket.Slider.Slider.Gradient
G2L["64"] = Instance.new("UIGradient", G2L["61"]);
G2L["64"]["Rotation"] = 90;
G2L["64"]["Name"] = [[Gradient]];
G2L["64"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Bracket.Slider.Value
G2L["65"] = Instance.new("TextBox", G2L["5f"]);
G2L["65"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["65"]["PlaceholderColor3"] = Color3.fromRGB(152, 152, 152);
G2L["65"]["ZIndex"] = 3;
G2L["65"]["BorderSizePixel"] = 0;
G2L["65"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["65"]["TextWrapped"] = true;
G2L["65"]["TextSize"] = 15;
G2L["65"]["Name"] = [[Value]];
G2L["65"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["65"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["65"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["65"]["PlaceholderText"] = [[50]];
G2L["65"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["65"]["Position"] = UDim2.new(0, 0, 1, -10);
G2L["65"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["65"]["Text"] = [[]];
G2L["65"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Bracket.TabButton
G2L["66"] = Instance.new("TextButton", G2L["1"]);
G2L["66"]["TextWrapped"] = true;
G2L["66"]["TextStrokeTransparency"] = 0.75;
G2L["66"]["BorderSizePixel"] = 0;
G2L["66"]["AutoButtonColor"] = false;
G2L["66"]["TextSize"] = 15;
G2L["66"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["66"]["BackgroundColor3"] = Color3.fromRGB(202, 202, 202);
G2L["66"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["66"]["ZIndex"] = 3;
G2L["66"]["Size"] = UDim2.new(0, 240, 1, 0);
G2L["66"]["Name"] = [[TabButton]];
G2L["66"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["66"]["Text"] = [[]];

-- ReplicatedStorage.Bracket.TabButton.Title
G2L["67"] = Instance.new("TextLabel", G2L["66"]);
G2L["67"]["TextWrapped"] = true;
G2L["67"]["TextStrokeTransparency"] = 0.75;
G2L["67"]["ZIndex"] = 3;
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["67"]["TextSize"] = 15;
G2L["67"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["67"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["67"]["BackgroundTransparency"] = 1;
G2L["67"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["67"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["67"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["67"]["Text"] = [[Tab Button]];
G2L["67"]["Name"] = [[Title]];
G2L["67"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- ReplicatedStorage.Bracket.TabButton.Gradient
G2L["68"] = Instance.new("UIGradient", G2L["66"]);
G2L["68"]["Rotation"] = 90;
G2L["68"]["Name"] = [[Gradient]];
G2L["68"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Bracket.TextBox
G2L["69"] = Instance.new("TextButton", G2L["1"]);
G2L["69"]["TextStrokeTransparency"] = 0.75;
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["AutoButtonColor"] = false;
G2L["69"]["TextSize"] = 15;
G2L["69"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["69"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["69"]["ZIndex"] = 4;
G2L["69"]["Size"] = UDim2.new(1, -10, 0, 40);
G2L["69"]["BackgroundTransparency"] = 1;
G2L["69"]["Name"] = [[TextBox]];
G2L["69"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["69"]["Text"] = [[]];

-- ReplicatedStorage.Bracket.TextBox.Title
G2L["6a"] = Instance.new("TextLabel", G2L["69"]);
G2L["6a"]["TextStrokeTransparency"] = 0.75;
G2L["6a"]["ZIndex"] = 3;
G2L["6a"]["BorderSizePixel"] = 0;
G2L["6a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6a"]["TextSize"] = 15;
G2L["6a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6a"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["6a"]["BackgroundTransparency"] = 1;
G2L["6a"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["6a"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6a"]["Text"] = [[TextBox]];
G2L["6a"]["Name"] = [[Title]];

-- ReplicatedStorage.Bracket.TextBox.Background
G2L["6b"] = Instance.new("Frame", G2L["69"]);
G2L["6b"]["ZIndex"] = 3;
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["6b"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["6b"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["6b"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["Name"] = [[Background]];

-- ReplicatedStorage.Bracket.TextBox.Background.Input
G2L["6c"] = Instance.new("TextBox", G2L["6b"]);
G2L["6c"]["TextStrokeTransparency"] = 0.75;
G2L["6c"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["6c"]["PlaceholderColor3"] = Color3.fromRGB(152, 152, 152);
G2L["6c"]["ZIndex"] = 4;
G2L["6c"]["TextWrapped"] = true;
G2L["6c"]["TextSize"] = 15;
G2L["6c"]["Name"] = [[Input]];
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["6c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["6c"]["ClearTextOnFocus"] = false;
G2L["6c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["6c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["6c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6c"]["Text"] = [[]];
G2L["6c"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Bracket.TextBox.Background.Gradient
G2L["6d"] = Instance.new("UIGradient", G2L["6b"]);
G2L["6d"]["Rotation"] = 90;
G2L["6d"]["Name"] = [[Gradient]];
G2L["6d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Bracket.Toggle
G2L["6e"] = Instance.new("TextButton", G2L["1"]);
G2L["6e"]["TextStrokeTransparency"] = 0.75;
G2L["6e"]["BorderSizePixel"] = 0;
G2L["6e"]["AutoButtonColor"] = false;
G2L["6e"]["TextSize"] = 15;
G2L["6e"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["6e"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6e"]["ZIndex"] = 3;
G2L["6e"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["6e"]["BackgroundTransparency"] = 1;
G2L["6e"]["Name"] = [[Toggle]];
G2L["6e"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6e"]["Text"] = [[]];

-- ReplicatedStorage.Bracket.Toggle.Toggle
G2L["6f"] = Instance.new("Frame", G2L["6e"]);
G2L["6f"]["ZIndex"] = 3;
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["6f"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["6f"]["Size"] = UDim2.new(0, 10, 0, 10);
G2L["6f"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6f"]["Name"] = [[Toggle]];

-- ReplicatedStorage.Bracket.Toggle.Toggle.Gradient
G2L["70"] = Instance.new("UIGradient", G2L["6f"]);
G2L["70"]["Rotation"] = 90;
G2L["70"]["Name"] = [[Gradient]];
G2L["70"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Bracket.Toggle.Title
G2L["71"] = Instance.new("TextLabel", G2L["6e"]);
G2L["71"]["TextStrokeTransparency"] = 0.75;
G2L["71"]["ZIndex"] = 3;
G2L["71"]["BorderSizePixel"] = 0;
G2L["71"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["71"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["71"]["TextSize"] = 15;
G2L["71"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["71"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["71"]["BackgroundTransparency"] = 1;
G2L["71"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["71"]["Size"] = UDim2.new(1, -66, 1, 0);
G2L["71"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["71"]["Text"] = [[Toggle]];
G2L["71"]["Name"] = [[Title]];
G2L["71"]["Position"] = UDim2.new(0, 15, 0.5, 0);

-- ReplicatedStorage.Bracket.Toggle.Keybind
G2L["72"] = Instance.new("TextButton", G2L["6e"]);
G2L["72"]["TextStrokeTransparency"] = 0.75;
G2L["72"]["BorderSizePixel"] = 0;
G2L["72"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["72"]["TextSize"] = 15;
G2L["72"]["TextColor3"] = Color3.fromRGB(102, 102, 102);
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["72"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["72"]["ZIndex"] = 3;
G2L["72"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["72"]["Size"] = UDim2.new(0, 51, 1, 0);
G2L["72"]["BackgroundTransparency"] = 1;
G2L["72"]["Name"] = [[Keybind]];
G2L["72"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["72"]["Text"] = [[ NONE ]];
G2L["72"]["Visible"] = false;
G2L["72"]["Position"] = UDim2.new(1, 0, 0.5, 0);

-- ReplicatedStorage.Bracket.Toggle.ModePopup
G2L["73"] = Instance.new("Frame", G2L["6e"]);
G2L["73"]["Visible"] = false;
G2L["73"]["ZIndex"] = 23;
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["Size"] = UDim2.new(0, 120, 0, 80);
G2L["73"]["Position"] = UDim2.new(0, 205, 1, 5);
G2L["73"]["Name"] = [[ModePopup]];

-- ReplicatedStorage.Bracket.Toggle.ModePopup.BorderFrame1
G2L["74"] = Instance.new("Frame", G2L["73"]);
G2L["74"]["ZIndex"] = 24;
G2L["74"]["BorderSizePixel"] = 0;
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["74"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["74"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["74"]["Name"] = [[BorderFrame1]];

-- ReplicatedStorage.Bracket.Toggle.ModePopup.BorderFrame1.BorderFrame2
G2L["75"] = Instance.new("Frame", G2L["74"]);
G2L["75"]["ZIndex"] = 25;
G2L["75"]["BorderSizePixel"] = 0;
G2L["75"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["75"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["75"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["75"]["Name"] = [[BorderFrame2]];

-- ReplicatedStorage.Bracket.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3
G2L["76"] = Instance.new("Frame", G2L["75"]);
G2L["76"]["ZIndex"] = 26;
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["76"]["Size"] = UDim2.new(1, -6, 1, -6);
G2L["76"]["Position"] = UDim2.new(0, 3, 0, 3);
G2L["76"]["Name"] = [[BorderFrame3]];

-- ReplicatedStorage.Bracket.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame
G2L["77"] = Instance.new("Frame", G2L["76"]);
G2L["77"]["ZIndex"] = 27;
G2L["77"]["BorderSizePixel"] = 0;
G2L["77"]["BackgroundColor3"] = Color3.fromRGB(6, 6, 5);
G2L["77"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["77"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["77"]["Name"] = [[InnerFrame]];

-- ReplicatedStorage.Bracket.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame
G2L["78"] = Instance.new("Frame", G2L["77"]);
G2L["78"]["ZIndex"] = 28;
G2L["78"]["BorderSizePixel"] = 0;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(101, 151, 201);
G2L["78"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["78"]["Name"] = [[GradientFrame]];

-- ReplicatedStorage.Bracket.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame.UIGradient
G2L["79"] = Instance.new("UIGradient", G2L["78"]);
G2L["79"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 151, 201)),ColorSequenceKeypoint.new(0.173, Color3.fromRGB(156, 116, 173)),ColorSequenceKeypoint.new(0.250, Color3.fromRGB(181, 101, 161)),ColorSequenceKeypoint.new(0.351, Color3.fromRGB(181, 127, 148)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(181, 231, 101)),ColorSequenceKeypoint.new(0.793, Color3.fromRGB(181, 208, 111)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 101, 161))};

-- ReplicatedStorage.Bracket.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ShadowLine
G2L["7a"] = Instance.new("Frame", G2L["77"]);
G2L["7a"]["ZIndex"] = 28;
G2L["7a"]["BorderSizePixel"] = 0;
G2L["7a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7a"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["7a"]["Position"] = UDim2.new(0, 0, 0, 1);
G2L["7a"]["Name"] = [[ShadowLine]];
G2L["7a"]["BackgroundTransparency"] = 0.2;

-- ReplicatedStorage.Bracket.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.Title
G2L["7b"] = Instance.new("TextLabel", G2L["77"]);
G2L["7b"]["ZIndex"] = 28;
G2L["7b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7b"]["TextSize"] = 14;
G2L["7b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7b"]["BackgroundTransparency"] = 1;
G2L["7b"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["7b"]["Text"] = [[Keybind Mode]];
G2L["7b"]["Name"] = [[Title]];
G2L["7b"]["Position"] = UDim2.new(0, 5, 0, 5);

-- ReplicatedStorage.Bracket.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ToggleMode
G2L["7c"] = Instance.new("TextButton", G2L["77"]);
G2L["7c"]["BorderSizePixel"] = 0;
G2L["7c"]["TextSize"] = 14;
G2L["7c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7c"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["7c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7c"]["ZIndex"] = 28;
G2L["7c"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["7c"]["BackgroundTransparency"] = 1;
G2L["7c"]["Name"] = [[ToggleMode]];
G2L["7c"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["7c"]["Text"] = [[Toggle]];
G2L["7c"]["Position"] = UDim2.new(0, 5, 0, 25);

-- ReplicatedStorage.Bracket.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.HoldMode
G2L["7d"] = Instance.new("TextButton", G2L["77"]);
G2L["7d"]["BorderSizePixel"] = 0;
G2L["7d"]["TextSize"] = 14;
G2L["7d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7d"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["7d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7d"]["ZIndex"] = 28;
G2L["7d"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["7d"]["BackgroundTransparency"] = 1;
G2L["7d"]["Name"] = [[HoldMode]];
G2L["7d"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["7d"]["Text"] = [[Hold]];
G2L["7d"]["Position"] = UDim2.new(0, 5, 0, 40);

-- ReplicatedStorage.Bracket.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.RemoveKeybind
G2L["7e"] = Instance.new("TextButton", G2L["77"]);
G2L["7e"]["BorderSizePixel"] = 0;
G2L["7e"]["TextSize"] = 14;
G2L["7e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["7e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7e"]["ZIndex"] = 28;
G2L["7e"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["7e"]["BackgroundTransparency"] = 1;
G2L["7e"]["Name"] = [[RemoveKeybind]];
G2L["7e"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["7e"]["Text"] = [[Remove]];
G2L["7e"]["Position"] = UDim2.new(0, 5, 0, 55);

-- ReplicatedStorage.Bracket.Label
G2L["7f"] = Instance.new("TextLabel", G2L["1"]);
G2L["7f"]["TextStrokeTransparency"] = 0.75;
G2L["7f"]["ZIndex"] = 3;
G2L["7f"]["BorderSizePixel"] = 0;
G2L["7f"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["7f"]["TextSize"] = 15;
G2L["7f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7f"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["7f"]["BackgroundTransparency"] = 1;
G2L["7f"]["Size"] = UDim2.new(1, -10, 0, 15);
G2L["7f"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["7f"]["Text"] = [[Text Label]];
G2L["7f"]["Name"] = [[Label]];


return G2L["1"], require;
