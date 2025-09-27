--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 153 | Scripts: 0 | Modules: 0
local G2L = {};

-- StarterGui.ScreenGui
G2L["1"] = Instance.new("Folder");
G2L["1"]["Name"] = [[Bracket]];

-- StarterGui.ScreenGui.Bracket
G2L["2"] = Instance.new("Folder", G2L["1"]);
G2L["2"]["Name"] = [[Bracket]];

-- StarterGui.ScreenGui.Bracket.Bracket
G2L["3"] = Instance.new("ScreenGui", G2L["2"]);
G2L["3"]["IgnoreGuiInset"] = true;
G2L["3"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["3"]["Name"] = [[Bracket]];
G2L["3"]["ResetOnSpawn"] = false;

-- StarterGui.ScreenGui.Bracket.Bracket.Main
G2L["4"] = Instance.new("Frame", G2L["3"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4"]["Size"] = UDim2.new(0, 500, 0, 500);
G2L["4"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4"]["Name"] = [[Main]];

-- StarterGui.ScreenGui.Bracket.Bracket.Main.Border
G2L["5"] = Instance.new("Frame", G2L["4"]);
G2L["5"]["ZIndex"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5"]["Size"] = UDim2.new(1, 2, 1, 2);
G2L["5"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Name"] = [[Border]];

-- StarterGui.ScreenGui.Bracket.Bracket.Main.Topbar
G2L["6"] = Instance.new("Frame", G2L["4"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["6"]["Size"] = UDim2.new(1, -10, 0, 15);
G2L["6"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6"]["Name"] = [[Topbar]];
G2L["6"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Bracket.Bracket.Main.Topbar.WindowName
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

-- StarterGui.ScreenGui.Bracket.Bracket.Main.Topbar.LibraryName
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

-- StarterGui.ScreenGui.Bracket.Bracket.Main.Topbar.SearchBar
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

-- StarterGui.ScreenGui.Bracket.Bracket.Main.Topbar.SearchBar.ClearButton
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

-- StarterGui.ScreenGui.Bracket.Bracket.Main.Topbar.Close
G2L["b"] = Instance.new("TextButton", G2L["6"]);
G2L["b"]["TextSize"] = 20;
G2L["b"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["b"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["b"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["Name"] = [[Close]];
G2L["b"]["Text"] = [[×]];
G2L["b"]["Position"] = UDim2.new(1, 5, 0, 0);

-- StarterGui.ScreenGui.Bracket.Bracket.Main.Holder
G2L["c"] = Instance.new("ImageLabel", G2L["4"]);
G2L["c"]["ZIndex"] = 2;
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["c"]["ScaleType"] = Enum.ScaleType.Tile;
G2L["c"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["c"]["TileSize"] = UDim2.new(0, 500, 0, 500);
G2L["c"]["Size"] = UDim2.new(1, -10, 1, -25);
G2L["c"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["c"]["Name"] = [[Holder]];
G2L["c"]["Position"] = UDim2.new(0.5, 0, 0, 20);

-- StarterGui.ScreenGui.Bracket.Bracket.Main.Holder.Border
G2L["d"] = Instance.new("Frame", G2L["c"]);
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["d"]["Size"] = UDim2.new(1, 2, 1, 2);
G2L["d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Name"] = [[Border]];

-- StarterGui.ScreenGui.Bracket.Bracket.Main.Holder.TBContainer
G2L["e"] = Instance.new("Frame", G2L["c"]);
G2L["e"]["ZIndex"] = 3;
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["e"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["e"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["e"]["Position"] = UDim2.new(0.5, 0, 0, 5);
G2L["e"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["e"]["Name"] = [[TBContainer]];

-- StarterGui.ScreenGui.Bracket.Bracket.Main.Holder.TBContainer.Border
G2L["f"] = Instance.new("Frame", G2L["e"]);
G2L["f"]["ZIndex"] = 2;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["f"]["Size"] = UDim2.new(1, 2, 1, 2);
G2L["f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Name"] = [[Border]];

-- StarterGui.ScreenGui.Bracket.Bracket.Main.Holder.TBContainer.Holder
G2L["10"] = Instance.new("Frame", G2L["e"]);
G2L["10"]["ZIndex"] = 3;
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["10"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["10"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["10"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["10"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["10"]["Name"] = [[Holder]];
G2L["10"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Bracket.Bracket.Main.Holder.TBContainer.Holder.ListLayout
G2L["11"] = Instance.new("UIListLayout", G2L["10"]);
G2L["11"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["11"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["11"]["Name"] = [[ListLayout]];
G2L["11"]["FillDirection"] = Enum.FillDirection.Horizontal;

-- StarterGui.ScreenGui.Bracket.Bracket.Main.Holder.TBContainer.Holder.UIGradient
G2L["12"] = Instance.new("UIGradient", G2L["10"]);
G2L["12"]["Rotation"] = 90;
G2L["12"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.602, Color3.fromRGB(62, 62, 62)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

-- StarterGui.ScreenGui.Bracket.Bracket.Main.Holder.TContainer
G2L["13"] = Instance.new("Frame", G2L["c"]);
G2L["13"]["ZIndex"] = 2;
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["13"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["13"]["Size"] = UDim2.new(1, 0, 1, -25);
G2L["13"]["Position"] = UDim2.new(0.5, 0, 0, 25);
G2L["13"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["13"]["Name"] = [[TContainer]];
G2L["13"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Bracket.Bracket.Main.Holder.UIGradient
G2L["14"] = Instance.new("UIGradient", G2L["c"]);
G2L["14"]["Rotation"] = 90;
G2L["14"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.602, Color3.fromRGB(62, 62, 62)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

-- StarterGui.ScreenGui.Bracket.Bracket.ToolTip
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

-- StarterGui.ScreenGui.Bracket.Bracket.ToolTip.UICorner
G2L["16"] = Instance.new("UICorner", G2L["15"]);
G2L["16"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.ScreenGui.Bracket.Section
G2L["17"] = Instance.new("Frame", G2L["2"]);
G2L["17"]["ZIndex"] = 3;
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["17"]["Size"] = UDim2.new(1, 0, 0, 235);
G2L["17"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["17"]["Name"] = [[Section]];

-- StarterGui.ScreenGui.Bracket.Section.Border
G2L["18"] = Instance.new("Frame", G2L["17"]);
G2L["18"]["ZIndex"] = 2;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["18"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["18"]["Size"] = UDim2.new(1, 2, 1, 2);
G2L["18"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Name"] = [[Border]];

-- StarterGui.ScreenGui.Bracket.Section.Title
G2L["19"] = Instance.new("TextLabel", G2L["17"]);
G2L["19"]["TextStrokeTransparency"] = 0.75;
G2L["19"]["ZIndex"] = 3;
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["19"]["TextSize"] = 15;
G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["19"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["19"]["Size"] = UDim2.new(0, 45, 0, 2);
G2L["19"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["19"]["Text"] = [[Section]];
G2L["19"]["Name"] = [[Title]];
G2L["19"]["Position"] = UDim2.new(0, 5, 0, -2);

-- StarterGui.ScreenGui.Bracket.Section.Container
G2L["1a"] = Instance.new("Frame", G2L["17"]);
G2L["1a"]["ZIndex"] = 3;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["1a"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["1a"]["Size"] = UDim2.new(1, 0, 1, -10);
G2L["1a"]["Position"] = UDim2.new(0.5, 0, 0, 10);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["1a"]["Name"] = [[Container]];
G2L["1a"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Bracket.Section.Container.ListLayout
G2L["1b"] = Instance.new("UIListLayout", G2L["1a"]);
G2L["1b"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["1b"]["Padding"] = UDim.new(0, 5);
G2L["1b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1b"]["Name"] = [[ListLayout]];

-- StarterGui.ScreenGui.Bracket.Section.UIGradient
G2L["1c"] = Instance.new("UIGradient", G2L["17"]);
G2L["1c"]["Rotation"] = 90;
G2L["1c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.602, Color3.fromRGB(62, 62, 62)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

-- StarterGui.ScreenGui.Bracket.Tab
G2L["1d"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["1d"]["Active"] = true;
G2L["1d"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["1d"]["ZIndex"] = 2;
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["1d"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["1d"]["Name"] = [[Tab]];
G2L["1d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1d"]["ScrollBarImageColor3"] = Color3.fromRGB(52, 52, 52);
G2L["1d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["1d"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["1d"]["ScrollBarThickness"] = 0;
G2L["1d"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Bracket.Tab.RightSide
G2L["1e"] = Instance.new("Frame", G2L["1d"]);
G2L["1e"]["ZIndex"] = 2;
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["1e"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["1e"]["Size"] = UDim2.new(0.5, -5, 1, 0);
G2L["1e"]["Position"] = UDim2.new(1, -5, 0, 0);
G2L["1e"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["1e"]["Name"] = [[RightSide]];
G2L["1e"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Bracket.Tab.RightSide.Padding
G2L["1f"] = Instance.new("UIPadding", G2L["1e"]);
G2L["1f"]["PaddingTop"] = UDim.new(0, 10);
G2L["1f"]["Name"] = [[Padding]];
G2L["1f"]["PaddingLeft"] = UDim.new(0, 3);

-- StarterGui.ScreenGui.Bracket.Tab.RightSide.ListLayout
G2L["20"] = Instance.new("UIListLayout", G2L["1e"]);
G2L["20"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["20"]["Padding"] = UDim.new(0, 10);
G2L["20"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["20"]["Name"] = [[ListLayout]];

-- StarterGui.ScreenGui.Bracket.Tab.LeftSide
G2L["21"] = Instance.new("Frame", G2L["1d"]);
G2L["21"]["ZIndex"] = 2;
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["21"]["Size"] = UDim2.new(0.5, -5, 1, 0);
G2L["21"]["Position"] = UDim2.new(0, 5, 0, 0);
G2L["21"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["21"]["Name"] = [[LeftSide]];
G2L["21"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Bracket.Tab.LeftSide.Padding
G2L["22"] = Instance.new("UIPadding", G2L["21"]);
G2L["22"]["PaddingTop"] = UDim.new(0, 10);
G2L["22"]["PaddingRight"] = UDim.new(0, 3);
G2L["22"]["Name"] = [[Padding]];

-- StarterGui.ScreenGui.Bracket.Tab.LeftSide.ListLayout
G2L["23"] = Instance.new("UIListLayout", G2L["21"]);
G2L["23"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["23"]["Padding"] = UDim.new(0, 10);
G2L["23"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["23"]["Name"] = [[ListLayout]];

-- StarterGui.ScreenGui.Bracket.Button
G2L["24"] = Instance.new("TextButton", G2L["2"]);
G2L["24"]["TextStrokeTransparency"] = 0.75;
G2L["24"]["AutoButtonColor"] = false;
G2L["24"]["TextSize"] = 15;
G2L["24"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["24"]["ZIndex"] = 3;
G2L["24"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["24"]["Name"] = [[Button]];
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Text"] = [[]];

-- StarterGui.ScreenGui.Bracket.Button.Title
G2L["25"] = Instance.new("TextLabel", G2L["24"]);
G2L["25"]["TextStrokeTransparency"] = 0.75;
G2L["25"]["ZIndex"] = 3;
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["25"]["TextSize"] = 15;
G2L["25"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["25"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["25"]["BackgroundTransparency"] = 1;
G2L["25"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["25"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["25"]["Text"] = [[Button]];
G2L["25"]["Name"] = [[Title]];

-- StarterGui.ScreenGui.Bracket.Button.Gradient
G2L["26"] = Instance.new("UIGradient", G2L["24"]);
G2L["26"]["Rotation"] = 90;
G2L["26"]["Name"] = [[Gradient]];
G2L["26"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Bracket.Button.Keybind
G2L["27"] = Instance.new("TextButton", G2L["24"]);
G2L["27"]["TextStrokeTransparency"] = 0.75;
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["27"]["TextSize"] = 15;
G2L["27"]["TextColor3"] = Color3.fromRGB(102, 102, 102);
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["27"]["ZIndex"] = 3;
G2L["27"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["27"]["Size"] = UDim2.new(0, 51, 1, 0);
G2L["27"]["BackgroundTransparency"] = 1;
G2L["27"]["Name"] = [[Keybind]];
G2L["27"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["27"]["Text"] = [[ NONE ]];
G2L["27"]["Visible"] = false;
G2L["27"]["Position"] = UDim2.new(1, 0, 0.5, 0);

-- StarterGui.ScreenGui.Bracket.Colorpicker
G2L["28"] = Instance.new("TextButton", G2L["2"]);
G2L["28"]["TextStrokeTransparency"] = 0.75;
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["AutoButtonColor"] = false;
G2L["28"]["TextSize"] = 15;
G2L["28"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["28"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["28"]["ZIndex"] = 3;
G2L["28"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["28"]["BackgroundTransparency"] = 1;
G2L["28"]["Name"] = [[Colorpicker]];
G2L["28"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["28"]["Text"] = [[]];

-- StarterGui.ScreenGui.Bracket.Colorpicker.Title
G2L["29"] = Instance.new("TextLabel", G2L["28"]);
G2L["29"]["TextStrokeTransparency"] = 0.75;
G2L["29"]["ZIndex"] = 3;
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["29"]["TextSize"] = 15;
G2L["29"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["29"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["29"]["BackgroundTransparency"] = 1;
G2L["29"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["29"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["29"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["29"]["Text"] = [[Colorpicker]];
G2L["29"]["Name"] = [[Title]];
G2L["29"]["Position"] = UDim2.new(0, 0, 0.5, 0);

-- StarterGui.ScreenGui.Bracket.Colorpicker.Color
G2L["2a"] = Instance.new("Frame", G2L["28"]);
G2L["2a"]["ZIndex"] = 3;
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["2a"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["2a"]["Size"] = UDim2.new(0, 20, 0, 10);
G2L["2a"]["Position"] = UDim2.new(1, 0, 0.5, 0);
G2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["Name"] = [[Color]];

-- StarterGui.ScreenGui.Bracket.Colorpicker.Color.Gradient
G2L["2b"] = Instance.new("UIGradient", G2L["2a"]);
G2L["2b"]["Rotation"] = 90;
G2L["2b"]["Name"] = [[Gradient]];
G2L["2b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Bracket.Dropdown
G2L["2c"] = Instance.new("TextButton", G2L["2"]);
G2L["2c"]["TextStrokeTransparency"] = 0.75;
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["AutoButtonColor"] = false;
G2L["2c"]["TextSize"] = 15;
G2L["2c"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2c"]["ZIndex"] = 3;
G2L["2c"]["Size"] = UDim2.new(1, -10, 0, 40);
G2L["2c"]["BackgroundTransparency"] = 1;
G2L["2c"]["Name"] = [[Dropdown]];
G2L["2c"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2c"]["Text"] = [[]];

-- StarterGui.ScreenGui.Bracket.Dropdown.Title
G2L["2d"] = Instance.new("TextLabel", G2L["2c"]);
G2L["2d"]["TextStrokeTransparency"] = 0.75;
G2L["2d"]["ZIndex"] = 3;
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2d"]["TextSize"] = 15;
G2L["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2d"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["2d"]["BackgroundTransparency"] = 1;
G2L["2d"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["2d"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2d"]["Text"] = [[Dropdown]];
G2L["2d"]["Name"] = [[Title]];

-- StarterGui.ScreenGui.Bracket.Dropdown.Container
G2L["2e"] = Instance.new("Frame", G2L["2c"]);
G2L["2e"]["ZIndex"] = 3;
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["2e"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["2e"]["Position"] = UDim2.new(0, 0, 0, 20);
G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Name"] = [[Container]];

-- StarterGui.ScreenGui.Bracket.Dropdown.Container.Value
G2L["2f"] = Instance.new("TextLabel", G2L["2e"]);
G2L["2f"]["TextStrokeTransparency"] = 0.75;
G2L["2f"]["ZIndex"] = 3;
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2f"]["TextSize"] = 15;
G2L["2f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2f"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["2f"]["BackgroundTransparency"] = 1;
G2L["2f"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["2f"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["2f"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2f"]["Text"] = [[...]];
G2L["2f"]["Name"] = [[Value]];
G2L["2f"]["Position"] = UDim2.new(0.5, 0, 0, 0);

-- StarterGui.ScreenGui.Bracket.Dropdown.Container.Holder
G2L["30"] = Instance.new("Frame", G2L["2e"]);
G2L["30"]["Visible"] = false;
G2L["30"]["ZIndex"] = 3;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["30"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["30"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["30"]["Position"] = UDim2.new(0.5, 0, 0, 25);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Name"] = [[Holder]];

-- StarterGui.ScreenGui.Bracket.Dropdown.Container.Holder.Container
G2L["31"] = Instance.new("Frame", G2L["30"]);
G2L["31"]["ZIndex"] = 3;
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["31"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["31"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["31"]["Name"] = [[Container]];
G2L["31"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Bracket.Dropdown.Container.Holder.Container.ListLayout
G2L["32"] = Instance.new("UIListLayout", G2L["31"]);
G2L["32"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["32"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["32"]["Name"] = [[ListLayout]];

-- StarterGui.ScreenGui.Bracket.Dropdown.Container.Holder.Container.UIGradient
G2L["33"] = Instance.new("UIGradient", G2L["31"]);
G2L["33"]["Rotation"] = 90;
G2L["33"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.602, Color3.fromRGB(62, 62, 62)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

-- StarterGui.ScreenGui.Bracket.Dropdown.Container.Holder.Gradient
G2L["34"] = Instance.new("UIGradient", G2L["30"]);
G2L["34"]["Rotation"] = 90;
G2L["34"]["Name"] = [[Gradient]];
G2L["34"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Bracket.Dropdown.Container.Gradient
G2L["35"] = Instance.new("UIGradient", G2L["2e"]);
G2L["35"]["Rotation"] = 90;
G2L["35"]["Name"] = [[Gradient]];
G2L["35"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Bracket.Option
G2L["36"] = Instance.new("TextButton", G2L["2"]);
G2L["36"]["TextStrokeTransparency"] = 0.75;
G2L["36"]["BorderSizePixel"] = 0;
G2L["36"]["AutoButtonColor"] = false;
G2L["36"]["TextSize"] = 15;
G2L["36"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["36"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["36"]["ZIndex"] = 4;
G2L["36"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["36"]["BackgroundTransparency"] = 1;
G2L["36"]["Name"] = [[Option]];
G2L["36"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["36"]["Text"] = [[]];

-- StarterGui.ScreenGui.Bracket.Option.Title
G2L["37"] = Instance.new("TextLabel", G2L["36"]);
G2L["37"]["TextStrokeTransparency"] = 0.75;
G2L["37"]["ZIndex"] = 4;
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["37"]["TextSize"] = 15;
G2L["37"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["37"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["37"]["BackgroundTransparency"] = 1;
G2L["37"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["37"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["37"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["37"]["Text"] = [[Option]];
G2L["37"]["Name"] = [[Title]];
G2L["37"]["Position"] = UDim2.new(0.5, 0, 0, 0);

-- StarterGui.ScreenGui.Bracket.Slider
G2L["38"] = Instance.new("TextButton", G2L["2"]);
G2L["38"]["TextStrokeTransparency"] = 0.75;
G2L["38"]["BorderSizePixel"] = 0;
G2L["38"]["AutoButtonColor"] = false;
G2L["38"]["TextSize"] = 15;
G2L["38"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["38"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["38"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["38"]["ZIndex"] = 4;
G2L["38"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["38"]["BackgroundTransparency"] = 1;
G2L["38"]["Name"] = [[Slider]];
G2L["38"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["38"]["Text"] = [[]];

-- StarterGui.ScreenGui.Bracket.Slider.Title
G2L["39"] = Instance.new("TextLabel", G2L["38"]);
G2L["39"]["TextStrokeTransparency"] = 0.75;
G2L["39"]["ZIndex"] = 3;
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["39"]["TextSize"] = 15;
G2L["39"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["39"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["39"]["BackgroundTransparency"] = 1;
G2L["39"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["39"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["39"]["Text"] = [[Slider]];
G2L["39"]["Name"] = [[Title]];

-- StarterGui.ScreenGui.Bracket.Slider.Slider
G2L["3a"] = Instance.new("Frame", G2L["38"]);
G2L["3a"]["ZIndex"] = 3;
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["3a"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["3a"]["Size"] = UDim2.new(1, 0, 0, 10);
G2L["3a"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["Name"] = [[Slider]];

-- StarterGui.ScreenGui.Bracket.Slider.Slider.Bar
G2L["3b"] = Instance.new("Frame", G2L["3a"]);
G2L["3b"]["ZIndex"] = 3;
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["3b"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["3b"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3b"]["Name"] = [[Bar]];

-- StarterGui.ScreenGui.Bracket.Slider.Slider.Bar.GlowEffect
G2L["3c"] = Instance.new("Frame", G2L["3b"]);
G2L["3c"]["ZIndex"] = 4;
G2L["3c"]["BorderSizePixel"] = 0;
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(255, 129, 64);
G2L["3c"]["Size"] = UDim2.new(1, 6, 1, 6);
G2L["3c"]["Position"] = UDim2.new(0, -3, 0, -3);
G2L["3c"]["Name"] = [[GlowEffect]];
G2L["3c"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Bracket.Slider.Slider.Bar.GlowEffect.Gradient
G2L["3d"] = Instance.new("UIGradient", G2L["3c"]);
G2L["3d"]["Rotation"] = 90;
G2L["3d"]["Name"] = [[Gradient]];
G2L["3d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.932, Color3.fromRGB(62, 62, 62)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

-- StarterGui.ScreenGui.Bracket.Slider.Slider.Bar.Gradient
G2L["3e"] = Instance.new("UIGradient", G2L["3b"]);
G2L["3e"]["Rotation"] = 90;
G2L["3e"]["Name"] = [[Gradient]];
G2L["3e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.932, Color3.fromRGB(62, 62, 62)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

-- StarterGui.ScreenGui.Bracket.Slider.Slider.Gradient
G2L["3f"] = Instance.new("UIGradient", G2L["3a"]);
G2L["3f"]["Rotation"] = 90;
G2L["3f"]["Name"] = [[Gradient]];
G2L["3f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.932, Color3.fromRGB(62, 62, 62)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

-- StarterGui.ScreenGui.Bracket.Slider.Value
G2L["40"] = Instance.new("TextBox", G2L["38"]);
G2L["40"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["40"]["PlaceholderColor3"] = Color3.fromRGB(152, 152, 152);
G2L["40"]["ZIndex"] = 3;
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["40"]["TextWrapped"] = true;
G2L["40"]["TextSize"] = 15;
G2L["40"]["Name"] = [[Value]];
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["40"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["40"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["40"]["PlaceholderText"] = [[50]];
G2L["40"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["40"]["Position"] = UDim2.new(0, 0, 1, -10);
G2L["40"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["40"]["Text"] = [[]];
G2L["40"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Bracket.TabButton
G2L["41"] = Instance.new("TextButton", G2L["2"]);
G2L["41"]["TextWrapped"] = true;
G2L["41"]["TextStrokeTransparency"] = 0.75;
G2L["41"]["BorderSizePixel"] = 0;
G2L["41"]["AutoButtonColor"] = false;
G2L["41"]["TextSize"] = 15;
G2L["41"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(202, 202, 202);
G2L["41"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["41"]["ZIndex"] = 3;
G2L["41"]["Size"] = UDim2.new(0, 240, 1, 0);
G2L["41"]["Name"] = [[TabButton]];
G2L["41"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["41"]["Text"] = [[]];

-- StarterGui.ScreenGui.Bracket.TabButton.Title
G2L["42"] = Instance.new("TextLabel", G2L["41"]);
G2L["42"]["TextWrapped"] = true;
G2L["42"]["TextStrokeTransparency"] = 0.75;
G2L["42"]["ZIndex"] = 3;
G2L["42"]["BorderSizePixel"] = 0;
G2L["42"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["42"]["TextSize"] = 15;
G2L["42"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["42"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["42"]["BackgroundTransparency"] = 1;
G2L["42"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["42"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["42"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["42"]["Text"] = [[Tab Button]];
G2L["42"]["Name"] = [[Title]];
G2L["42"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.ScreenGui.Bracket.TabButton.Gradient
G2L["43"] = Instance.new("UIGradient", G2L["41"]);
G2L["43"]["Rotation"] = 90;
G2L["43"]["Name"] = [[Gradient]];
G2L["43"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(122, 122, 122))};

-- StarterGui.ScreenGui.Bracket.TabButton.Underline
G2L["44"] = Instance.new("Frame", G2L["41"]);
G2L["44"]["ZIndex"] = 10;
G2L["44"]["BorderSizePixel"] = 0;
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(255, 129, 64);
G2L["44"]["Size"] = UDim2.new(1, 0, 0, 2);
G2L["44"]["Position"] = UDim2.new(0, 0, 1, -2);
G2L["44"]["Name"] = [[Underline]];

-- StarterGui.ScreenGui.Bracket.TabButton.Underline.Gradient
G2L["45"] = Instance.new("UIGradient", G2L["44"]);
G2L["45"]["Rotation"] = 90;
G2L["45"]["Name"] = [[Gradient]];
G2L["45"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(122, 122, 122))};

-- StarterGui.ScreenGui.Bracket.TextBox
G2L["46"] = Instance.new("TextButton", G2L["2"]);
G2L["46"]["TextStrokeTransparency"] = 0.75;
G2L["46"]["BorderSizePixel"] = 0;
G2L["46"]["AutoButtonColor"] = false;
G2L["46"]["TextSize"] = 15;
G2L["46"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["46"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["46"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["46"]["ZIndex"] = 4;
G2L["46"]["Size"] = UDim2.new(1, -10, 0, 40);
G2L["46"]["BackgroundTransparency"] = 1;
G2L["46"]["Name"] = [[TextBox]];
G2L["46"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["46"]["Text"] = [[]];

-- StarterGui.ScreenGui.Bracket.TextBox.Title
G2L["47"] = Instance.new("TextLabel", G2L["46"]);
G2L["47"]["TextStrokeTransparency"] = 0.75;
G2L["47"]["ZIndex"] = 3;
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["47"]["TextSize"] = 15;
G2L["47"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["47"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["47"]["BackgroundTransparency"] = 1;
G2L["47"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["47"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["47"]["Text"] = [[TextBox]];
G2L["47"]["Name"] = [[Title]];

-- StarterGui.ScreenGui.Bracket.TextBox.Background
G2L["48"] = Instance.new("Frame", G2L["46"]);
G2L["48"]["ZIndex"] = 3;
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["48"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["48"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["48"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["48"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["48"]["Name"] = [[Background]];

-- StarterGui.ScreenGui.Bracket.TextBox.Background.Input
G2L["49"] = Instance.new("TextBox", G2L["48"]);
G2L["49"]["TextStrokeTransparency"] = 0.75;
G2L["49"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["49"]["PlaceholderColor3"] = Color3.fromRGB(152, 152, 152);
G2L["49"]["ZIndex"] = 4;
G2L["49"]["TextWrapped"] = true;
G2L["49"]["TextSize"] = 15;
G2L["49"]["Name"] = [[Input]];
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["49"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["49"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["49"]["ClearTextOnFocus"] = false;
G2L["49"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["49"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["49"]["Text"] = [[]];
G2L["49"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Bracket.TextBox.Background.Gradient
G2L["4a"] = Instance.new("UIGradient", G2L["48"]);
G2L["4a"]["Rotation"] = 90;
G2L["4a"]["Name"] = [[Gradient]];
G2L["4a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Bracket.Toggle
G2L["4b"] = Instance.new("TextButton", G2L["2"]);
G2L["4b"]["TextStrokeTransparency"] = 0.75;
G2L["4b"]["BorderSizePixel"] = 0;
G2L["4b"]["AutoButtonColor"] = false;
G2L["4b"]["TextSize"] = 15;
G2L["4b"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4b"]["ZIndex"] = 3;
G2L["4b"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["4b"]["BackgroundTransparency"] = 1;
G2L["4b"]["Name"] = [[Toggle]];
G2L["4b"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4b"]["Text"] = [[]];

-- StarterGui.ScreenGui.Bracket.Toggle.Toggle
G2L["4c"] = Instance.new("Frame", G2L["4b"]);
G2L["4c"]["ZIndex"] = 3;
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["4c"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["4c"]["Size"] = UDim2.new(0, 10, 0, 10);
G2L["4c"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["Name"] = [[Toggle]];

-- StarterGui.ScreenGui.Bracket.Toggle.Toggle.Gradient
G2L["4d"] = Instance.new("UIGradient", G2L["4c"]);
G2L["4d"]["Rotation"] = 90;
G2L["4d"]["Name"] = [[Gradient]];
G2L["4d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(57, 57, 57))};

-- StarterGui.ScreenGui.Bracket.Toggle.Toggle.GlowEffect
G2L["4e"] = Instance.new("Frame", G2L["4c"]);
G2L["4e"]["ZIndex"] = 4;
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(255, 86, 86);
G2L["4e"]["Size"] = UDim2.new(1, 4, 1, 4);
G2L["4e"]["Position"] = UDim2.new(0, -2, 0, -2);
G2L["4e"]["Name"] = [[GlowEffect]];
G2L["4e"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Bracket.Toggle.Toggle.GlowEffect.Gradient
G2L["4f"] = Instance.new("UIGradient", G2L["4e"]);
G2L["4f"]["Rotation"] = 90;
G2L["4f"]["Name"] = [[Gradient]];
G2L["4f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(57, 57, 57))};

-- StarterGui.ScreenGui.Bracket.Toggle.Title
G2L["50"] = Instance.new("TextLabel", G2L["4b"]);
G2L["50"]["TextStrokeTransparency"] = 0.75;
G2L["50"]["ZIndex"] = 3;
G2L["50"]["BorderSizePixel"] = 0;
G2L["50"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["50"]["TextSize"] = 15;
G2L["50"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["50"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["50"]["BackgroundTransparency"] = 1;
G2L["50"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["50"]["Size"] = UDim2.new(1, -66, 1, 0);
G2L["50"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["50"]["Text"] = [[Toggle]];
G2L["50"]["Name"] = [[Title]];
G2L["50"]["Position"] = UDim2.new(0, 15, 0.5, 0);

-- StarterGui.ScreenGui.Bracket.Toggle.Keybind
G2L["51"] = Instance.new("TextButton", G2L["4b"]);
G2L["51"]["TextStrokeTransparency"] = 0.75;
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["51"]["TextSize"] = 15;
G2L["51"]["TextColor3"] = Color3.fromRGB(102, 102, 102);
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["51"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["51"]["ZIndex"] = 3;
G2L["51"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["51"]["Size"] = UDim2.new(0, 51, 1, 0);
G2L["51"]["BackgroundTransparency"] = 1;
G2L["51"]["Name"] = [[Keybind]];
G2L["51"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["51"]["Text"] = [[ NONE ]];
G2L["51"]["Visible"] = false;
G2L["51"]["Position"] = UDim2.new(1, 0, 0.5, 0);

-- StarterGui.ScreenGui.Bracket.Toggle.ModePopup
G2L["52"] = Instance.new("Frame", G2L["4b"]);
G2L["52"]["Visible"] = false;
G2L["52"]["ZIndex"] = 23;
G2L["52"]["BorderSizePixel"] = 0;
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["52"]["Size"] = UDim2.new(0, 120, 0, 80);
G2L["52"]["Position"] = UDim2.new(0, 205, 1, 5);
G2L["52"]["Name"] = [[ModePopup]];

-- StarterGui.ScreenGui.Bracket.Toggle.ModePopup.BorderFrame1
G2L["53"] = Instance.new("Frame", G2L["52"]);
G2L["53"]["ZIndex"] = 24;
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["53"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["53"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["53"]["Name"] = [[BorderFrame1]];

-- StarterGui.ScreenGui.Bracket.Toggle.ModePopup.BorderFrame1.BorderFrame2
G2L["54"] = Instance.new("Frame", G2L["53"]);
G2L["54"]["ZIndex"] = 25;
G2L["54"]["BorderSizePixel"] = 0;
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["54"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["54"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["54"]["Name"] = [[BorderFrame2]];

-- StarterGui.ScreenGui.Bracket.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3
G2L["55"] = Instance.new("Frame", G2L["54"]);
G2L["55"]["ZIndex"] = 26;
G2L["55"]["BorderSizePixel"] = 0;
G2L["55"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["55"]["Size"] = UDim2.new(1, -6, 1, -6);
G2L["55"]["Position"] = UDim2.new(0, 3, 0, 3);
G2L["55"]["Name"] = [[BorderFrame3]];

-- StarterGui.ScreenGui.Bracket.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame
G2L["56"] = Instance.new("Frame", G2L["55"]);
G2L["56"]["ZIndex"] = 27;
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(6, 6, 5);
G2L["56"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["56"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["56"]["Name"] = [[InnerFrame]];

-- StarterGui.ScreenGui.Bracket.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame
G2L["57"] = Instance.new("Frame", G2L["56"]);
G2L["57"]["ZIndex"] = 28;
G2L["57"]["BorderSizePixel"] = 0;
G2L["57"]["BackgroundColor3"] = Color3.fromRGB(43, 43, 43);
G2L["57"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["57"]["Name"] = [[GradientFrame]];

-- StarterGui.ScreenGui.Bracket.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ShadowLine
G2L["58"] = Instance.new("Frame", G2L["56"]);
G2L["58"]["ZIndex"] = 28;
G2L["58"]["BorderSizePixel"] = 0;
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["58"]["Position"] = UDim2.new(0, 0, 0, 1);
G2L["58"]["Name"] = [[ShadowLine]];
G2L["58"]["BackgroundTransparency"] = 0.2;

-- StarterGui.ScreenGui.Bracket.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.Title
G2L["59"] = Instance.new("TextLabel", G2L["56"]);
G2L["59"]["ZIndex"] = 28;
G2L["59"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["59"]["TextSize"] = 14;
G2L["59"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["59"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["59"]["BackgroundTransparency"] = 1;
G2L["59"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["59"]["Text"] = [[Keybind Mode]];
G2L["59"]["Name"] = [[Title]];
G2L["59"]["Position"] = UDim2.new(0, 5, 0, 5);

-- StarterGui.ScreenGui.Bracket.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ToggleMode
G2L["5a"] = Instance.new("TextButton", G2L["56"]);
G2L["5a"]["BorderSizePixel"] = 0;
G2L["5a"]["TextSize"] = 14;
G2L["5a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5a"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["5a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5a"]["ZIndex"] = 28;
G2L["5a"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["5a"]["BackgroundTransparency"] = 1;
G2L["5a"]["Name"] = [[ToggleMode]];
G2L["5a"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["5a"]["Text"] = [[Toggle]];
G2L["5a"]["Position"] = UDim2.new(0, 5, 0, 25);

-- StarterGui.ScreenGui.Bracket.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.HoldMode
G2L["5b"] = Instance.new("TextButton", G2L["56"]);
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["TextSize"] = 14;
G2L["5b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["5b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5b"]["ZIndex"] = 28;
G2L["5b"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["5b"]["BackgroundTransparency"] = 1;
G2L["5b"]["Name"] = [[HoldMode]];
G2L["5b"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["5b"]["Text"] = [[Hold]];
G2L["5b"]["Position"] = UDim2.new(0, 5, 0, 40);

-- StarterGui.ScreenGui.Bracket.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.RemoveKeybind
G2L["5c"] = Instance.new("TextButton", G2L["56"]);
G2L["5c"]["BorderSizePixel"] = 0;
G2L["5c"]["TextSize"] = 14;
G2L["5c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5c"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["5c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5c"]["ZIndex"] = 28;
G2L["5c"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["5c"]["BackgroundTransparency"] = 1;
G2L["5c"]["Name"] = [[RemoveKeybind]];
G2L["5c"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["5c"]["Text"] = [[Remove]];
G2L["5c"]["Position"] = UDim2.new(0, 5, 0, 55);

-- StarterGui.ScreenGui.Bracket.Toggle.InfoIndicator
G2L["5d"] = Instance.new("TextButton", G2L["4b"]);
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["TextSize"] = 15;
G2L["5d"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 61);
G2L["5d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["5d"]["ZIndex"] = 4;
G2L["5d"]["Size"] = UDim2.new(0, 14, 0, 14);
G2L["5d"]["BackgroundTransparency"] = 0.3;
G2L["5d"]["Name"] = [[InfoIndicator]];
G2L["5d"]["Text"] = [[?]];
G2L["5d"]["Position"] = UDim2.new(1, -19, 0.5, -7);

-- StarterGui.ScreenGui.Bracket.Toggle.InfoIndicator.UICorner
G2L["5e"] = Instance.new("UICorner", G2L["5d"]);
G2L["5e"]["CornerRadius"] = UDim.new(0.5, 0);

-- StarterGui.ScreenGui.Bracket.Toggle.StatusIndicator
G2L["5f"] = Instance.new("TextLabel", G2L["4b"]);
G2L["5f"]["ZIndex"] = 4;
G2L["5f"]["TextTransparency"] = 0.3;
G2L["5f"]["TextSize"] = 15;
G2L["5f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5f"]["TextColor3"] = Color3.fromRGB(255, 86, 86);
G2L["5f"]["BackgroundTransparency"] = 1;
G2L["5f"]["Size"] = UDim2.new(0, 16, 1, 0);
G2L["5f"]["Text"] = [[(!)]];
G2L["5f"]["Name"] = [[StatusIndicator]];
G2L["5f"]["Position"] = UDim2.new(1, -40, 0, 0);

-- StarterGui.ScreenGui.Bracket.Label
G2L["60"] = Instance.new("TextLabel", G2L["2"]);
G2L["60"]["TextStrokeTransparency"] = 0.75;
G2L["60"]["ZIndex"] = 3;
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["60"]["TextSize"] = 15;
G2L["60"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["60"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["60"]["BackgroundTransparency"] = 1;
G2L["60"]["Size"] = UDim2.new(1, -10, 0, 15);
G2L["60"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["60"]["Text"] = [[Text Label]];
G2L["60"]["Name"] = [[Label]];

-- StarterGui.ScreenGui.Bracket.Palette
G2L["61"] = Instance.new("Frame", G2L["2"]);
G2L["61"]["Visible"] = false;
G2L["61"]["ZIndex"] = 5;
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["61"]["Size"] = UDim2.new(0, 150, 0, 240);
G2L["61"]["Position"] = UDim2.new(0, 100, 0, 100);
G2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["Name"] = [[Palette]];

-- StarterGui.ScreenGui.Bracket.Palette.GradientPalette
G2L["62"] = Instance.new("ImageButton", G2L["61"]);
G2L["62"]["AutoButtonColor"] = false;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["62"]["ZIndex"] = 5;
G2L["62"]["Size"] = UDim2.new(1, -10, 0, 150);
G2L["62"]["Name"] = [[GradientPalette]];
G2L["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["Position"] = UDim2.new(0, 5, 0, 5);

-- StarterGui.ScreenGui.Bracket.Palette.GradientPalette.SaturationOverlay
G2L["63"] = Instance.new("Frame", G2L["62"]);
G2L["63"]["ZIndex"] = 6;
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["63"]["Name"] = [[SaturationOverlay]];

-- StarterGui.ScreenGui.Bracket.Palette.GradientPalette.SaturationOverlay.UIGradient
G2L["64"] = Instance.new("UIGradient", G2L["63"]);
G2L["64"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)};

-- StarterGui.ScreenGui.Bracket.Palette.GradientPalette.BrightnessOverlay
G2L["65"] = Instance.new("Frame", G2L["62"]);
G2L["65"]["ZIndex"] = 7;
G2L["65"]["BorderSizePixel"] = 0;
G2L["65"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["65"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["65"]["Name"] = [[BrightnessOverlay]];

-- StarterGui.ScreenGui.Bracket.Palette.GradientPalette.BrightnessOverlay.UIGradient
G2L["66"] = Instance.new("UIGradient", G2L["65"]);
G2L["66"]["Rotation"] = 90;
G2L["66"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(1.000, 0)};

-- StarterGui.ScreenGui.Bracket.Palette.GradientPalette.Dot
G2L["67"] = Instance.new("Frame", G2L["62"]);
G2L["67"]["ZIndex"] = 8;
G2L["67"]["BorderSizePixel"] = 2;
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["67"]["Size"] = UDim2.new(0, 3, 0, 3);
G2L["67"]["Position"] = UDim2.new(1, 0, 0, 0);
G2L["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["Name"] = [[Dot]];
G2L["67"]["Rotation"] = 45;

-- StarterGui.ScreenGui.Bracket.Palette.ColorSlider
G2L["68"] = Instance.new("TextButton", G2L["61"]);
G2L["68"]["AutoButtonColor"] = false;
G2L["68"]["TextSize"] = 14;
G2L["68"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["68"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["68"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["68"]["ZIndex"] = 5;
G2L["68"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["68"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["68"]["Name"] = [[ColorSlider]];
G2L["68"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["68"]["Text"] = [[]];
G2L["68"]["Position"] = UDim2.new(1, -5, 0, 160);

-- StarterGui.ScreenGui.Bracket.Palette.ColorSlider.Gradient
G2L["69"] = Instance.new("UIGradient", G2L["68"]);
G2L["69"]["Name"] = [[Gradient]];
G2L["69"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 0, 6)),ColorSequenceKeypoint.new(0.200, Color3.fromRGB(255, 0, 253)),ColorSequenceKeypoint.new(0.400, Color3.fromRGB(0, 19, 255)),ColorSequenceKeypoint.new(0.600, Color3.fromRGB(0, 255, 255)),ColorSequenceKeypoint.new(0.800, Color3.fromRGB(23, 255, 0)),ColorSequenceKeypoint.new(0.900, Color3.fromRGB(236, 255, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 0, 6))};

-- StarterGui.ScreenGui.Bracket.Palette.TransparencySlider
G2L["6a"] = Instance.new("TextButton", G2L["61"]);
G2L["6a"]["AutoButtonColor"] = false;
G2L["6a"]["TextSize"] = 14;
G2L["6a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6a"]["ZIndex"] = 5;
G2L["6a"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["6a"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["6a"]["Name"] = [[TransparencySlider]];
G2L["6a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6a"]["Text"] = [[]];
G2L["6a"]["Position"] = UDim2.new(1, -5, 0, 175);

-- StarterGui.ScreenGui.Bracket.Palette.TransparencySlider.Gradient
G2L["6b"] = Instance.new("UIGradient", G2L["6a"]);
G2L["6b"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)};
G2L["6b"]["Name"] = [[Gradient]];

-- StarterGui.ScreenGui.Bracket.Palette.ColorPreview
G2L["6c"] = Instance.new("Frame", G2L["61"]);
G2L["6c"]["ZIndex"] = 5;
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["6c"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["6c"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["6c"]["Position"] = UDim2.new(0.5, 0, 0, 190);
G2L["6c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6c"]["Name"] = [[ColorPreview]];

-- StarterGui.ScreenGui.Bracket.Palette.InputFrame
G2L["6d"] = Instance.new("Frame", G2L["61"]);
G2L["6d"]["ZIndex"] = 5;
G2L["6d"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["6d"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["6d"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["6d"]["Position"] = UDim2.new(0.5, 0, 0, 215);
G2L["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6d"]["Name"] = [[InputFrame]];

-- StarterGui.ScreenGui.Bracket.Palette.InputFrame.InputBox
G2L["6e"] = Instance.new("TextBox", G2L["6d"]);
G2L["6e"]["TextStrokeTransparency"] = 0.75;
G2L["6e"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["6e"]["PlaceholderColor3"] = Color3.fromRGB(202, 202, 202);
G2L["6e"]["ZIndex"] = 5;
G2L["6e"]["BorderSizePixel"] = 0;
G2L["6e"]["TextWrapped"] = true;
G2L["6e"]["TextSize"] = 12;
G2L["6e"]["Name"] = [[InputBox]];
G2L["6e"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6e"]["PlaceholderText"] = [[RGBA: 255, 0, 0, 255]];
G2L["6e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["6e"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6e"]["Text"] = [[]];
G2L["6e"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Bracket.Palette.Gradient
G2L["6f"] = Instance.new("UIGradient", G2L["61"]);
G2L["6f"]["Rotation"] = 90;
G2L["6f"]["Name"] = [[Gradient]];
G2L["6f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.602, Color3.fromRGB(62, 62, 62)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

-- StarterGui.ScreenGui.Bracket.UIGradient
G2L["70"] = Instance.new("UIGradient", G2L["2"]);
G2L["70"]["Rotation"] = 90;
G2L["70"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.602, Color3.fromRGB(62, 62, 62)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker
G2L["71"] = Instance.new("TextButton", G2L["2"]);
G2L["71"]["TextStrokeTransparency"] = 0.75;
G2L["71"]["BorderSizePixel"] = 0;
G2L["71"]["AutoButtonColor"] = false;
G2L["71"]["TextSize"] = 15;
G2L["71"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["71"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["71"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["71"]["ZIndex"] = 3;
G2L["71"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["71"]["BackgroundTransparency"] = 1;
G2L["71"]["Name"] = [[ToggleWColorpicker]];
G2L["71"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["71"]["Text"] = [[]];

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.Toggle
G2L["72"] = Instance.new("Frame", G2L["71"]);
G2L["72"]["ZIndex"] = 3;
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["72"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["72"]["Size"] = UDim2.new(0, 10, 0, 10);
G2L["72"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["72"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["72"]["Name"] = [[Toggle]];

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.Toggle.Gradient
G2L["73"] = Instance.new("UIGradient", G2L["72"]);
G2L["73"]["Rotation"] = 90;
G2L["73"]["Name"] = [[Gradient]];
G2L["73"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.Title
G2L["74"] = Instance.new("TextLabel", G2L["71"]);
G2L["74"]["TextStrokeTransparency"] = 0.75;
G2L["74"]["ZIndex"] = 3;
G2L["74"]["BorderSizePixel"] = 0;
G2L["74"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["74"]["TextSize"] = 15;
G2L["74"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["74"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["74"]["BackgroundTransparency"] = 1;
G2L["74"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["74"]["Size"] = UDim2.new(1, -66, 1, 0);
G2L["74"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["74"]["Text"] = [[Toggle]];
G2L["74"]["Name"] = [[Title]];
G2L["74"]["Position"] = UDim2.new(0, 15, 0.5, 0);

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.Keybind
G2L["75"] = Instance.new("TextButton", G2L["71"]);
G2L["75"]["TextStrokeTransparency"] = 0.75;
G2L["75"]["BorderSizePixel"] = 0;
G2L["75"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["75"]["TextSize"] = 15;
G2L["75"]["TextColor3"] = Color3.fromRGB(102, 102, 102);
G2L["75"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["75"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["75"]["ZIndex"] = 3;
G2L["75"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["75"]["Size"] = UDim2.new(0, 51, 1, 0);
G2L["75"]["BackgroundTransparency"] = 1;
G2L["75"]["Name"] = [[Keybind]];
G2L["75"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["75"]["Text"] = [[ NONE ]];
G2L["75"]["Visible"] = false;
G2L["75"]["Position"] = UDim2.new(1, 0, 0.5, 0);

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.ModePopup
G2L["76"] = Instance.new("Frame", G2L["71"]);
G2L["76"]["Visible"] = false;
G2L["76"]["ZIndex"] = 23;
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["76"]["Size"] = UDim2.new(0, 120, 0, 80);
G2L["76"]["Position"] = UDim2.new(0, 205, 1, 5);
G2L["76"]["Name"] = [[ModePopup]];

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.ModePopup.BorderFrame1
G2L["77"] = Instance.new("Frame", G2L["76"]);
G2L["77"]["ZIndex"] = 24;
G2L["77"]["BorderSizePixel"] = 0;
G2L["77"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["77"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["77"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["77"]["Name"] = [[BorderFrame1]];

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2
G2L["78"] = Instance.new("Frame", G2L["77"]);
G2L["78"]["ZIndex"] = 25;
G2L["78"]["BorderSizePixel"] = 0;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["78"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["78"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["78"]["Name"] = [[BorderFrame2]];

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3
G2L["79"] = Instance.new("Frame", G2L["78"]);
G2L["79"]["ZIndex"] = 26;
G2L["79"]["BorderSizePixel"] = 0;
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["79"]["Size"] = UDim2.new(1, -6, 1, -6);
G2L["79"]["Position"] = UDim2.new(0, 3, 0, 3);
G2L["79"]["Name"] = [[BorderFrame3]];

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame
G2L["7a"] = Instance.new("Frame", G2L["79"]);
G2L["7a"]["ZIndex"] = 27;
G2L["7a"]["BorderSizePixel"] = 0;
G2L["7a"]["BackgroundColor3"] = Color3.fromRGB(6, 6, 5);
G2L["7a"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["7a"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["7a"]["Name"] = [[InnerFrame]];

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame
G2L["7b"] = Instance.new("Frame", G2L["7a"]);
G2L["7b"]["ZIndex"] = 28;
G2L["7b"]["BorderSizePixel"] = 0;
G2L["7b"]["BackgroundColor3"] = Color3.fromRGB(101, 151, 201);
G2L["7b"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["7b"]["Name"] = [[GradientFrame]];

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ShadowLine
G2L["7c"] = Instance.new("Frame", G2L["7a"]);
G2L["7c"]["ZIndex"] = 28;
G2L["7c"]["BorderSizePixel"] = 0;
G2L["7c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7c"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["7c"]["Position"] = UDim2.new(0, 0, 0, 1);
G2L["7c"]["Name"] = [[ShadowLine]];
G2L["7c"]["BackgroundTransparency"] = 0.2;

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.Title
G2L["7d"] = Instance.new("TextLabel", G2L["7a"]);
G2L["7d"]["ZIndex"] = 28;
G2L["7d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7d"]["TextSize"] = 14;
G2L["7d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7d"]["BackgroundTransparency"] = 1;
G2L["7d"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["7d"]["Text"] = [[Keybind Mode]];
G2L["7d"]["Name"] = [[Title]];
G2L["7d"]["Position"] = UDim2.new(0, 5, 0, 5);

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ToggleMode
G2L["7e"] = Instance.new("TextButton", G2L["7a"]);
G2L["7e"]["BorderSizePixel"] = 0;
G2L["7e"]["TextSize"] = 14;
G2L["7e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["7e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7e"]["ZIndex"] = 28;
G2L["7e"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["7e"]["BackgroundTransparency"] = 1;
G2L["7e"]["Name"] = [[ToggleMode]];
G2L["7e"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["7e"]["Text"] = [[Toggle]];
G2L["7e"]["Position"] = UDim2.new(0, 5, 0, 25);

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.HoldMode
G2L["7f"] = Instance.new("TextButton", G2L["7a"]);
G2L["7f"]["BorderSizePixel"] = 0;
G2L["7f"]["TextSize"] = 14;
G2L["7f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7f"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["7f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7f"]["ZIndex"] = 28;
G2L["7f"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["7f"]["BackgroundTransparency"] = 1;
G2L["7f"]["Name"] = [[HoldMode]];
G2L["7f"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["7f"]["Text"] = [[Hold]];
G2L["7f"]["Position"] = UDim2.new(0, 5, 0, 40);

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.RemoveKeybind
G2L["80"] = Instance.new("TextButton", G2L["7a"]);
G2L["80"]["BorderSizePixel"] = 0;
G2L["80"]["TextSize"] = 14;
G2L["80"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["80"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["80"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["80"]["ZIndex"] = 28;
G2L["80"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["80"]["BackgroundTransparency"] = 1;
G2L["80"]["Name"] = [[RemoveKeybind]];
G2L["80"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["80"]["Text"] = [[Remove]];
G2L["80"]["Position"] = UDim2.new(0, 5, 0, 55);

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.Color
G2L["81"] = Instance.new("Frame", G2L["71"]);
G2L["81"]["ZIndex"] = 3;
G2L["81"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["81"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["81"]["Size"] = UDim2.new(0, 20, 0, 10);
G2L["81"]["Position"] = UDim2.new(1, 0, 0.5, 0);
G2L["81"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["81"]["Name"] = [[Color]];

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.Color.Gradient
G2L["82"] = Instance.new("UIGradient", G2L["81"]);
G2L["82"]["Rotation"] = 90;
G2L["82"]["Name"] = [[Gradient]];
G2L["82"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.StatusIndicator
G2L["83"] = Instance.new("TextLabel", G2L["71"]);
G2L["83"]["ZIndex"] = 4;
G2L["83"]["TextTransparency"] = 0.3;
G2L["83"]["TextSize"] = 15;
G2L["83"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["83"]["TextColor3"] = Color3.fromRGB(255, 86, 86);
G2L["83"]["BackgroundTransparency"] = 1;
G2L["83"]["Size"] = UDim2.new(0, 16, 1, 0);
G2L["83"]["Text"] = [[(!)]];
G2L["83"]["Name"] = [[StatusIndicator]];
G2L["83"]["Position"] = UDim2.new(1, -40, 0, 0);

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.InfoIndicator
G2L["84"] = Instance.new("TextButton", G2L["71"]);
G2L["84"]["BorderSizePixel"] = 0;
G2L["84"]["TextSize"] = 15;
G2L["84"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["84"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 61);
G2L["84"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["84"]["ZIndex"] = 4;
G2L["84"]["Size"] = UDim2.new(0, 14, 0, 14);
G2L["84"]["BackgroundTransparency"] = 0.3;
G2L["84"]["Name"] = [[InfoIndicator]];
G2L["84"]["Text"] = [[?]];
G2L["84"]["Position"] = UDim2.new(1, -19, 0.5, -7);

-- StarterGui.ScreenGui.Bracket.ToggleWColorpicker.InfoIndicator.UICorner
G2L["85"] = Instance.new("UICorner", G2L["84"]);
G2L["85"]["CornerRadius"] = UDim.new(0.5, 0);

-- StarterGui.ScreenGui.Bracket.Hud
G2L["86"] = Instance.new("Frame", G2L["2"]);
G2L["86"]["BorderSizePixel"] = 0;
G2L["86"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["86"]["Size"] = UDim2.new(0, 388, 0, 35);
G2L["86"]["Position"] = UDim2.new(1, -398, 0, 10);
G2L["86"]["Name"] = [[Hud]];

-- StarterGui.ScreenGui.Bracket.Hud.BorderFrame1
G2L["87"] = Instance.new("Frame", G2L["86"]);
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["87"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["87"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["87"]["Name"] = [[BorderFrame1]];

-- StarterGui.ScreenGui.Bracket.Hud.BorderFrame1.BorderFrame2
G2L["88"] = Instance.new("Frame", G2L["87"]);
G2L["88"]["BorderSizePixel"] = 0;
G2L["88"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["88"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["88"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["88"]["Name"] = [[BorderFrame2]];

-- StarterGui.ScreenGui.Bracket.Hud.BorderFrame1.BorderFrame2.BorderFrame3
G2L["89"] = Instance.new("Frame", G2L["88"]);
G2L["89"]["BorderSizePixel"] = 0;
G2L["89"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["89"]["Size"] = UDim2.new(1, -6, 1, -6);
G2L["89"]["Position"] = UDim2.new(0, 3, 0, 3);
G2L["89"]["Name"] = [[BorderFrame3]];

-- StarterGui.ScreenGui.Bracket.Hud.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame
G2L["8a"] = Instance.new("Frame", G2L["89"]);
G2L["8a"]["BorderSizePixel"] = 0;
G2L["8a"]["BackgroundColor3"] = Color3.fromRGB(6, 6, 5);
G2L["8a"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["8a"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["8a"]["Name"] = [[InnerFrame]];

-- StarterGui.ScreenGui.Bracket.Hud.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame
G2L["8b"] = Instance.new("Frame", G2L["8a"]);
G2L["8b"]["BorderSizePixel"] = 0;
G2L["8b"]["BackgroundColor3"] = Color3.fromRGB(101, 151, 201);
G2L["8b"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["8b"]["Name"] = [[GradientFrame]];

-- StarterGui.ScreenGui.Bracket.Hud.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ShadowLine
G2L["8c"] = Instance.new("Frame", G2L["8a"]);
G2L["8c"]["BorderSizePixel"] = 0;
G2L["8c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8c"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["8c"]["Position"] = UDim2.new(0, 0, 0, 1);
G2L["8c"]["Name"] = [[ShadowLine]];
G2L["8c"]["BackgroundTransparency"] = 0.2;

-- StarterGui.ScreenGui.Bracket.Hud.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.InfoText
G2L["8d"] = Instance.new("TextLabel", G2L["8a"]);
G2L["8d"]["TextSize"] = 14;
G2L["8d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8d"]["BackgroundTransparency"] = 1;
G2L["8d"]["RichText"] = true;
G2L["8d"]["Size"] = UDim2.new(1, -12, 1, -4);
G2L["8d"]["Text"] = [[<font color="rgb(255,255,255)">game</font><font color="rgb(163,200,79)">sense</font><font color="rgb(255,255,255)"> | </font><font color="rgb(255,255,255)">PerfectoExternal</font><font color="rgb(255,255,255)"> | </font><font color="rgb(255,255,255)">144fps</font><font color="rgb(255,255,255)"> | </font><font color="rgb(255,255,255)">72ms</font><font color="rgb(255,255,255)"> | </font><font color="rgb(255,255,255)">17:20</font>]];
G2L["8d"]["Name"] = [[InfoText]];
G2L["8d"]["Position"] = UDim2.new(0, 6, 0, 2);

-- StarterGui.ScreenGui.Bracket.SearchOption
G2L["8e"] = Instance.new("TextBox", G2L["2"]);
G2L["8e"]["TextStrokeTransparency"] = 0.75;
G2L["8e"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["8e"]["ZIndex"] = 4;
G2L["8e"]["BorderSizePixel"] = 0;
G2L["8e"]["TextSize"] = 15;
G2L["8e"]["Name"] = [[SearchOption]];
G2L["8e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8e"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["8e"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["8e"]["Text"] = [[]];
G2L["8e"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Bracket.KeybindViewer
G2L["8f"] = Instance.new("Frame", G2L["2"]);
G2L["8f"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["8f"]["Size"] = UDim2.new(0, 200, 0, 27);
G2L["8f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8f"]["Name"] = [[KeybindViewer]];

-- StarterGui.ScreenGui.Bracket.KeybindViewer.BorderFrame1
G2L["90"] = Instance.new("Frame", G2L["8f"]);
G2L["90"]["BorderSizePixel"] = 0;
G2L["90"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["90"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["90"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["90"]["Name"] = [[BorderFrame1]];

-- StarterGui.ScreenGui.Bracket.KeybindViewer.BorderFrame1.BorderFrame2
G2L["91"] = Instance.new("Frame", G2L["90"]);
G2L["91"]["BorderSizePixel"] = 0;
G2L["91"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["91"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["91"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["91"]["Name"] = [[BorderFrame2]];

-- StarterGui.ScreenGui.Bracket.KeybindViewer.BorderFrame1.BorderFrame2.BorderFrame3
G2L["92"] = Instance.new("Frame", G2L["91"]);
G2L["92"]["BorderSizePixel"] = 0;
G2L["92"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["92"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["92"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["92"]["Name"] = [[BorderFrame3]];

-- StarterGui.ScreenGui.Bracket.KeybindViewer.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame
G2L["93"] = Instance.new("Frame", G2L["92"]);
G2L["93"]["BorderSizePixel"] = 0;
G2L["93"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["93"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["93"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["93"]["Name"] = [[InnerFrame]];

-- StarterGui.ScreenGui.Bracket.KeybindViewer.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.Title
G2L["94"] = Instance.new("TextLabel", G2L["93"]);
G2L["94"]["TextSize"] = 14;
G2L["94"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["94"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["94"]["BackgroundTransparency"] = 1;
G2L["94"]["Size"] = UDim2.new(1, 0, 0, 16);
G2L["94"]["Text"] = [[Keybinds]];
G2L["94"]["Name"] = [[Title]];

-- StarterGui.ScreenGui.Bracket.KeybindViewer.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.Container
G2L["95"] = Instance.new("ScrollingFrame", G2L["93"]);
G2L["95"]["Name"] = [[Container]];
G2L["95"]["Size"] = UDim2.new(1, 0, 1, -20);
G2L["95"]["Position"] = UDim2.new(0, 0, 0, 15);
G2L["95"]["ScrollBarThickness"] = 2;
G2L["95"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Bracket.KeybindViewer.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.Container.UIPadding
G2L["96"] = Instance.new("UIPadding", G2L["95"]);
G2L["96"]["PaddingTop"] = UDim.new(0, 5);
G2L["96"]["PaddingRight"] = UDim.new(0, 5);
G2L["96"]["PaddingLeft"] = UDim.new(0, 5);
G2L["96"]["PaddingBottom"] = UDim.new(0, 5);

-- StarterGui.ScreenGui.Bracket.KeybindViewer.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.Container.ListLayout
G2L["97"] = Instance.new("UIListLayout", G2L["95"]);
G2L["97"]["Padding"] = UDim.new(0, 1);
G2L["97"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["97"]["Name"] = [[ListLayout]];

-- StarterGui.ScreenGui.Bracket.KeybindViewer.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame
G2L["98"] = Instance.new("Frame", G2L["93"]);
G2L["98"]["BorderSizePixel"] = 0;
G2L["98"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["98"]["BorderColor3"] = Color3.fromRGB(60, 60, 60);
G2L["98"]["Name"] = [[GradientFrame]];

-- StarterGui.ScreenGui.Bracket.KeybindViewer.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.UIGradient
G2L["99"] = Instance.new("UIGradient", G2L["93"]);
G2L["99"]["Rotation"] = 90;
G2L["99"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.602, Color3.fromRGB(62, 62, 62)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};


return G2L["1"], require;
