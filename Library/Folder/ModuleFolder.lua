--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 125 | Scripts: 0 | Modules: 0
local G2L = {};

G2L["1"] = Instance.new("Folder");
G2L["1"]["Name"] = [[Bracket]];

-- StarterGui.ScreenGui.UIGradient
G2L["2"] = Instance.new("UIGradient", G2L["1"]);
G2L["2"]["Rotation"] = 90;
G2L["2"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 129, 65)),ColorSequenceKeypoint.new(0.490, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 101, 161))};

-- StarterGui.ScreenGui.Bracket
G2L["3"] = Instance.new("ScreenGui", G2L["1"]);
G2L["3"]["IgnoreGuiInset"] = true;
G2L["3"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["3"]["Name"] = [[Bracket]];
G2L["3"]["ResetOnSpawn"] = false;

-- StarterGui.ScreenGui.Bracket.Main
G2L["4"] = Instance.new("Frame", G2L["3"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4"]["Size"] = UDim2.new(0, 500, 0, 500);
G2L["4"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4"]["Name"] = [[Main]];

-- StarterGui.ScreenGui.Bracket.Main.Border
G2L["5"] = Instance.new("Frame", G2L["4"]);
G2L["5"]["ZIndex"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5"]["Size"] = UDim2.new(1, 2, 1, 2);
G2L["5"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Name"] = [[Border]];

-- StarterGui.ScreenGui.Bracket.Main.Topbar
G2L["6"] = Instance.new("Frame", G2L["4"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["6"]["Size"] = UDim2.new(1, -10, 0, 15);
G2L["6"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6"]["Name"] = [[Topbar]];
G2L["6"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Bracket.Main.Topbar.WindowName
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

-- StarterGui.ScreenGui.Bracket.Main.Topbar.LibraryName
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

-- StarterGui.ScreenGui.Bracket.Main.Topbar.SearchBar
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

-- StarterGui.ScreenGui.Bracket.Main.Topbar.SearchBar.ClearButton
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

-- StarterGui.ScreenGui.Bracket.Main.Topbar.Close
G2L["b"] = Instance.new("TextButton", G2L["6"]);
G2L["b"]["TextSize"] = 20;
G2L["b"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["b"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["b"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["Name"] = [[Close]];
G2L["b"]["Text"] = [[×]];
G2L["b"]["Position"] = UDim2.new(1, 5, 0, 0);

-- StarterGui.ScreenGui.Bracket.Main.Holder
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

-- StarterGui.ScreenGui.Bracket.Main.Holder.Border
G2L["d"] = Instance.new("Frame", G2L["c"]);
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["d"]["Size"] = UDim2.new(1, 2, 1, 2);
G2L["d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Name"] = [[Border]];

-- StarterGui.ScreenGui.Bracket.Main.Holder.TBContainer
G2L["e"] = Instance.new("Frame", G2L["c"]);
G2L["e"]["ZIndex"] = 3;
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["e"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["e"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["e"]["Position"] = UDim2.new(0.5, 0, 0, 5);
G2L["e"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["e"]["Name"] = [[TBContainer]];

-- StarterGui.ScreenGui.Bracket.Main.Holder.TBContainer.Border
G2L["f"] = Instance.new("Frame", G2L["e"]);
G2L["f"]["ZIndex"] = 2;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["f"]["Size"] = UDim2.new(1, 2, 1, 2);
G2L["f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Name"] = [[Border]];

-- StarterGui.ScreenGui.Bracket.Main.Holder.TBContainer.Holder
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

-- StarterGui.ScreenGui.Bracket.Main.Holder.TBContainer.Holder.ListLayout
G2L["11"] = Instance.new("UIListLayout", G2L["10"]);
G2L["11"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["11"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["11"]["Name"] = [[ListLayout]];
G2L["11"]["FillDirection"] = Enum.FillDirection.Horizontal;

-- StarterGui.ScreenGui.Bracket.Main.Holder.TContainer
G2L["12"] = Instance.new("Frame", G2L["c"]);
G2L["12"]["ZIndex"] = 2;
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["12"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["12"]["Size"] = UDim2.new(1, 0, 1, -25);
G2L["12"]["Position"] = UDim2.new(0.5, 0, 0, 25);
G2L["12"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["12"]["Name"] = [[TContainer]];
G2L["12"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Bracket.Main.Holder.UIGradient
G2L["13"] = Instance.new("UIGradient", G2L["c"]);
G2L["13"]["Rotation"] = 90;
G2L["13"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.534, Color3.fromRGB(42, 34, 75)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(167, 181, 72))};

-- StarterGui.ScreenGui.Bracket.ToolTip
G2L["14"] = Instance.new("TextLabel", G2L["3"]);
G2L["14"]["TextStrokeTransparency"] = 0.75;
G2L["14"]["ZIndex"] = 5;
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["TextSize"] = 15;
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["14"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["14"]["BackgroundTransparency"] = 0.5;
G2L["14"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["14"]["Size"] = UDim2.new(0, 45, 0, 20);
G2L["14"]["Visible"] = false;
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[ToolTip]];
G2L["14"]["Name"] = [[ToolTip]];

-- StarterGui.ScreenGui.Bracket.ToolTip.UICorner
G2L["15"] = Instance.new("UICorner", G2L["14"]);
G2L["15"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.ScreenGui.Hud
G2L["16"] = Instance.new("Frame", G2L["1"]);
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["16"]["Size"] = UDim2.new(0, 380, 0, 28);
G2L["16"]["Position"] = UDim2.new(1, -390, 0, 10);
G2L["16"]["Name"] = [[Hud]];

-- StarterGui.ScreenGui.Hud.UICorner
G2L["17"] = Instance.new("UICorner", G2L["16"]);
G2L["17"]["CornerRadius"] = UDim.new(0, 2);

-- StarterGui.ScreenGui.Hud.UIStroke
G2L["18"] = Instance.new("UIStroke", G2L["16"]);
G2L["18"]["Color"] = Color3.fromRGB(61, 61, 61);

-- StarterGui.ScreenGui.Hud.TopLine
G2L["19"] = Instance.new("Frame", G2L["16"]);
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(164, 201, 80);
G2L["19"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["19"]["Position"] = UDim2.new(0, 0, 0, -1);
G2L["19"]["Name"] = [[TopLine]];

-- StarterGui.ScreenGui.Hud.InfoText
G2L["1a"] = Instance.new("TextLabel", G2L["16"]);
G2L["1a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1a"]["TextSize"] = 14;
G2L["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a"]["TextColor3"] = Color3.fromRGB(221, 221, 221);
G2L["1a"]["BackgroundTransparency"] = 1;
G2L["1a"]["RichText"] = true;
G2L["1a"]["Size"] = UDim2.new(1, -16, 1, 0);
G2L["1a"]["Text"] = [[<font color="rgb(220,220,220)">game</font><font color="rgb(163,200,79)">sense</font><font color="rgb(150,150,150)"> | </font><font color="rgb(180,180,180)">PerfectoExternal</font><font color="rgb(150,150,150)"> | </font><font color="rgb(100,180,255)">144fps</font><font color="rgb(150,150,150)"> | </font><font color="rgb(255,150,100)">72ms</font><font color="rgb(150,150,150)"> | </font><font color="rgb(200,200,200)">17:20</font>]];
G2L["1a"]["Name"] = [[InfoText]];
G2L["1a"]["Position"] = UDim2.new(0, 8, 0, 0);

-- StarterGui.ScreenGui.Palette
G2L["1b"] = Instance.new("Frame", G2L["1"]);
G2L["1b"]["Visible"] = false;
G2L["1b"]["ZIndex"] = 5;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["1b"]["Size"] = UDim2.new(0, 150, 0, 240);
G2L["1b"]["Position"] = UDim2.new(0, 100, 0, 100);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Name"] = [[Palette]];

-- StarterGui.ScreenGui.Palette.GradientPalette
G2L["1c"] = Instance.new("ImageButton", G2L["1b"]);
G2L["1c"]["AutoButtonColor"] = false;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["1c"]["ZIndex"] = 5;
G2L["1c"]["Size"] = UDim2.new(1, -10, 0, 150);
G2L["1c"]["Name"] = [[GradientPalette]];
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Position"] = UDim2.new(0, 5, 0, 5);

-- StarterGui.ScreenGui.Palette.GradientPalette.SaturationOverlay
G2L["1d"] = Instance.new("Frame", G2L["1c"]);
G2L["1d"]["ZIndex"] = 6;
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1d"]["Name"] = [[SaturationOverlay]];

-- StarterGui.ScreenGui.Palette.GradientPalette.SaturationOverlay.UIGradient
G2L["1e"] = Instance.new("UIGradient", G2L["1d"]);
G2L["1e"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)};

-- StarterGui.ScreenGui.Palette.GradientPalette.BrightnessOverlay
G2L["1f"] = Instance.new("Frame", G2L["1c"]);
G2L["1f"]["ZIndex"] = 7;
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1f"]["Name"] = [[BrightnessOverlay]];

-- StarterGui.ScreenGui.Palette.GradientPalette.BrightnessOverlay.UIGradient
G2L["20"] = Instance.new("UIGradient", G2L["1f"]);
G2L["20"]["Rotation"] = 90;
G2L["20"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(1.000, 0)};

-- StarterGui.ScreenGui.Palette.GradientPalette.Dot
G2L["21"] = Instance.new("Frame", G2L["1c"]);
G2L["21"]["ZIndex"] = 8;
G2L["21"]["BorderSizePixel"] = 2;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["21"]["Size"] = UDim2.new(0, 3, 0, 3);
G2L["21"]["Position"] = UDim2.new(1, 0, 0, 0);
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Name"] = [[Dot]];
G2L["21"]["Rotation"] = 45;

-- StarterGui.ScreenGui.Palette.ColorSlider
G2L["22"] = Instance.new("TextButton", G2L["1b"]);
G2L["22"]["AutoButtonColor"] = false;
G2L["22"]["TextSize"] = 14;
G2L["22"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["22"]["ZIndex"] = 5;
G2L["22"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["22"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["22"]["Name"] = [[ColorSlider]];
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Text"] = [[]];
G2L["22"]["Position"] = UDim2.new(1, -5, 0, 160);

-- StarterGui.ScreenGui.Palette.ColorSlider.Gradient
G2L["23"] = Instance.new("UIGradient", G2L["22"]);
G2L["23"]["Name"] = [[Gradient]];
G2L["23"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 0, 6)),ColorSequenceKeypoint.new(0.200, Color3.fromRGB(255, 0, 253)),ColorSequenceKeypoint.new(0.400, Color3.fromRGB(0, 19, 255)),ColorSequenceKeypoint.new(0.600, Color3.fromRGB(0, 255, 255)),ColorSequenceKeypoint.new(0.800, Color3.fromRGB(23, 255, 0)),ColorSequenceKeypoint.new(0.900, Color3.fromRGB(236, 255, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 0, 6))};

-- StarterGui.ScreenGui.Palette.TransparencySlider
G2L["24"] = Instance.new("TextButton", G2L["1b"]);
G2L["24"]["AutoButtonColor"] = false;
G2L["24"]["TextSize"] = 14;
G2L["24"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["24"]["ZIndex"] = 5;
G2L["24"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["24"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["24"]["Name"] = [[TransparencySlider]];
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Text"] = [[]];
G2L["24"]["Position"] = UDim2.new(1, -5, 0, 175);

-- StarterGui.ScreenGui.Palette.TransparencySlider.Gradient
G2L["25"] = Instance.new("UIGradient", G2L["24"]);
G2L["25"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)};
G2L["25"]["Name"] = [[Gradient]];

-- StarterGui.ScreenGui.Palette.ColorPreview
G2L["26"] = Instance.new("Frame", G2L["1b"]);
G2L["26"]["ZIndex"] = 5;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["26"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["26"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["26"]["Position"] = UDim2.new(0.5, 0, 0, 190);
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Name"] = [[ColorPreview]];

-- StarterGui.ScreenGui.Palette.InputFrame
G2L["27"] = Instance.new("Frame", G2L["1b"]);
G2L["27"]["ZIndex"] = 5;
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["27"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["27"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["27"]["Position"] = UDim2.new(0.5, 0, 0, 215);
G2L["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["Name"] = [[InputFrame]];

-- StarterGui.ScreenGui.Palette.InputFrame.InputBox
G2L["28"] = Instance.new("TextBox", G2L["27"]);
G2L["28"]["TextStrokeTransparency"] = 0.75;
G2L["28"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["28"]["PlaceholderColor3"] = Color3.fromRGB(202, 202, 202);
G2L["28"]["ZIndex"] = 5;
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["TextWrapped"] = true;
G2L["28"]["TextSize"] = 12;
G2L["28"]["Name"] = [[InputBox]];
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["28"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["28"]["PlaceholderText"] = [[RGBA: 255, 0, 0, 255]];
G2L["28"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["28"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["28"]["Text"] = [[]];
G2L["28"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Section
G2L["29"] = Instance.new("Frame", G2L["1"]);
G2L["29"]["ZIndex"] = 3;
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["29"]["Size"] = UDim2.new(1, 0, 0, 235);
G2L["29"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["29"]["Name"] = [[Section]];

-- StarterGui.ScreenGui.Section.Border
G2L["2a"] = Instance.new("Frame", G2L["29"]);
G2L["2a"]["ZIndex"] = 2;
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["2a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2a"]["Size"] = UDim2.new(1, 2, 1, 2);
G2L["2a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["Name"] = [[Border]];

-- StarterGui.ScreenGui.Section.Title
G2L["2b"] = Instance.new("TextLabel", G2L["29"]);
G2L["2b"]["TextStrokeTransparency"] = 0.75;
G2L["2b"]["ZIndex"] = 3;
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2b"]["TextSize"] = 15;
G2L["2b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2b"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["2b"]["Size"] = UDim2.new(0, 45, 0, 2);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2b"]["Text"] = [[Section]];
G2L["2b"]["Name"] = [[Title]];
G2L["2b"]["Position"] = UDim2.new(0, 5, 0, -2);

-- StarterGui.ScreenGui.Section.Container
G2L["2c"] = Instance.new("Frame", G2L["29"]);
G2L["2c"]["ZIndex"] = 3;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2c"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["2c"]["Size"] = UDim2.new(1, 0, 1, -10);
G2L["2c"]["Position"] = UDim2.new(0.5, 0, 0, 10);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2c"]["Name"] = [[Container]];
G2L["2c"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Section.Container.ListLayout
G2L["2d"] = Instance.new("UIListLayout", G2L["2c"]);
G2L["2d"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["2d"]["Padding"] = UDim.new(0, 5);
G2L["2d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["2d"]["Name"] = [[ListLayout]];

-- StarterGui.ScreenGui.Section.UIGradient
G2L["2e"] = Instance.new("UIGradient", G2L["29"]);
G2L["2e"]["Rotation"] = 90;
G2L["2e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 129, 65)),ColorSequenceKeypoint.new(0.250, Color3.fromRGB(181, 101, 161)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(181, 231, 101)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 101, 161))};

-- StarterGui.ScreenGui.Tab
G2L["2f"] = Instance.new("ScrollingFrame", G2L["1"]);
G2L["2f"]["Active"] = true;
G2L["2f"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["2f"]["ZIndex"] = 2;
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["2f"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2f"]["Name"] = [[Tab]];
G2L["2f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2f"]["ScrollBarImageColor3"] = Color3.fromRGB(52, 52, 52);
G2L["2f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2f"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2f"]["ScrollBarThickness"] = 0;
G2L["2f"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Tab.RightSide
G2L["30"] = Instance.new("Frame", G2L["2f"]);
G2L["30"]["ZIndex"] = 2;
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["30"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["30"]["Size"] = UDim2.new(0.5, -5, 1, 0);
G2L["30"]["Position"] = UDim2.new(1, -5, 0, 0);
G2L["30"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["30"]["Name"] = [[RightSide]];
G2L["30"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Tab.RightSide.Padding
G2L["31"] = Instance.new("UIPadding", G2L["30"]);
G2L["31"]["PaddingTop"] = UDim.new(0, 10);
G2L["31"]["Name"] = [[Padding]];
G2L["31"]["PaddingLeft"] = UDim.new(0, 3);

-- StarterGui.ScreenGui.Tab.RightSide.ListLayout
G2L["32"] = Instance.new("UIListLayout", G2L["30"]);
G2L["32"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["32"]["Padding"] = UDim.new(0, 10);
G2L["32"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["32"]["Name"] = [[ListLayout]];

-- StarterGui.ScreenGui.Tab.LeftSide
G2L["33"] = Instance.new("Frame", G2L["2f"]);
G2L["33"]["ZIndex"] = 2;
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["33"]["Size"] = UDim2.new(0.5, -5, 1, 0);
G2L["33"]["Position"] = UDim2.new(0, 5, 0, 0);
G2L["33"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["33"]["Name"] = [[LeftSide]];
G2L["33"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Tab.LeftSide.Padding
G2L["34"] = Instance.new("UIPadding", G2L["33"]);
G2L["34"]["PaddingTop"] = UDim.new(0, 10);
G2L["34"]["PaddingRight"] = UDim.new(0, 3);
G2L["34"]["Name"] = [[Padding]];

-- StarterGui.ScreenGui.Tab.LeftSide.ListLayout
G2L["35"] = Instance.new("UIListLayout", G2L["33"]);
G2L["35"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["35"]["Padding"] = UDim.new(0, 10);
G2L["35"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["35"]["Name"] = [[ListLayout]];

-- StarterGui.ScreenGui.Button
G2L["36"] = Instance.new("TextButton", G2L["1"]);
G2L["36"]["TextStrokeTransparency"] = 0.75;
G2L["36"]["AutoButtonColor"] = false;
G2L["36"]["TextSize"] = 15;
G2L["36"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["36"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["36"]["ZIndex"] = 3;
G2L["36"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["36"]["Name"] = [[Button]];
G2L["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["Text"] = [[]];

-- StarterGui.ScreenGui.Button.Title
G2L["37"] = Instance.new("TextLabel", G2L["36"]);
G2L["37"]["TextStrokeTransparency"] = 0.75;
G2L["37"]["ZIndex"] = 3;
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["37"]["TextSize"] = 15;
G2L["37"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["37"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["37"]["BackgroundTransparency"] = 1;
G2L["37"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["37"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["37"]["Text"] = [[Button]];
G2L["37"]["Name"] = [[Title]];

-- StarterGui.ScreenGui.Button.Gradient
G2L["38"] = Instance.new("UIGradient", G2L["36"]);
G2L["38"]["Rotation"] = 90;
G2L["38"]["Name"] = [[Gradient]];
G2L["38"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Colorpicker
G2L["39"] = Instance.new("TextButton", G2L["1"]);
G2L["39"]["TextStrokeTransparency"] = 0.75;
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["AutoButtonColor"] = false;
G2L["39"]["TextSize"] = 15;
G2L["39"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["39"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["39"]["ZIndex"] = 3;
G2L["39"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["39"]["BackgroundTransparency"] = 1;
G2L["39"]["Name"] = [[Colorpicker]];
G2L["39"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["39"]["Text"] = [[]];

-- StarterGui.ScreenGui.Colorpicker.Title
G2L["3a"] = Instance.new("TextLabel", G2L["39"]);
G2L["3a"]["TextStrokeTransparency"] = 0.75;
G2L["3a"]["ZIndex"] = 3;
G2L["3a"]["BorderSizePixel"] = 0;
G2L["3a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3a"]["TextSize"] = 15;
G2L["3a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3a"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["3a"]["BackgroundTransparency"] = 1;
G2L["3a"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["3a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["3a"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3a"]["Text"] = [[Colorpicker]];
G2L["3a"]["Name"] = [[Title]];
G2L["3a"]["Position"] = UDim2.new(0, 0, 0.5, 0);

-- StarterGui.ScreenGui.Colorpicker.Color
G2L["3b"] = Instance.new("Frame", G2L["39"]);
G2L["3b"]["ZIndex"] = 3;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["3b"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["3b"]["Size"] = UDim2.new(0, 20, 0, 10);
G2L["3b"]["Position"] = UDim2.new(1, 0, 0.5, 0);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["Name"] = [[Color]];

-- StarterGui.ScreenGui.Colorpicker.Color.Gradient
G2L["3c"] = Instance.new("UIGradient", G2L["3b"]);
G2L["3c"]["Rotation"] = 90;
G2L["3c"]["Name"] = [[Gradient]];
G2L["3c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Dropdown
G2L["3d"] = Instance.new("TextButton", G2L["1"]);
G2L["3d"]["TextStrokeTransparency"] = 0.75;
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["AutoButtonColor"] = false;
G2L["3d"]["TextSize"] = 15;
G2L["3d"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3d"]["ZIndex"] = 3;
G2L["3d"]["Size"] = UDim2.new(1, -10, 0, 40);
G2L["3d"]["BackgroundTransparency"] = 1;
G2L["3d"]["Name"] = [[Dropdown]];
G2L["3d"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3d"]["Text"] = [[]];

-- StarterGui.ScreenGui.Dropdown.Title
G2L["3e"] = Instance.new("TextLabel", G2L["3d"]);
G2L["3e"]["TextStrokeTransparency"] = 0.75;
G2L["3e"]["ZIndex"] = 3;
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3e"]["TextSize"] = 15;
G2L["3e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3e"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["3e"]["BackgroundTransparency"] = 1;
G2L["3e"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3e"]["Text"] = [[Dropdown]];
G2L["3e"]["Name"] = [[Title]];

-- StarterGui.ScreenGui.Dropdown.Container
G2L["3f"] = Instance.new("Frame", G2L["3d"]);
G2L["3f"]["ZIndex"] = 3;
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["3f"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["3f"]["Position"] = UDim2.new(0, 0, 0, 20);
G2L["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["Name"] = [[Container]];

-- StarterGui.ScreenGui.Dropdown.Container.Value
G2L["40"] = Instance.new("TextLabel", G2L["3f"]);
G2L["40"]["TextStrokeTransparency"] = 0.75;
G2L["40"]["ZIndex"] = 3;
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["40"]["TextSize"] = 15;
G2L["40"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["40"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["40"]["BackgroundTransparency"] = 1;
G2L["40"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["40"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["40"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["40"]["Text"] = [[...]];
G2L["40"]["Name"] = [[Value]];
G2L["40"]["Position"] = UDim2.new(0.5, 0, 0, 0);

-- StarterGui.ScreenGui.Dropdown.Container.Holder
G2L["41"] = Instance.new("Frame", G2L["3f"]);
G2L["41"]["Visible"] = false;
G2L["41"]["ZIndex"] = 3;
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["41"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["41"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["41"]["Position"] = UDim2.new(0.5, 0, 0, 25);
G2L["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["Name"] = [[Holder]];

-- StarterGui.ScreenGui.Dropdown.Container.Holder.Container
G2L["42"] = Instance.new("Frame", G2L["41"]);
G2L["42"]["ZIndex"] = 3;
G2L["42"]["BorderSizePixel"] = 0;
G2L["42"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["42"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["42"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["42"]["Name"] = [[Container]];
G2L["42"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Dropdown.Container.Holder.Container.ListLayout
G2L["43"] = Instance.new("UIListLayout", G2L["42"]);
G2L["43"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["43"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["43"]["Name"] = [[ListLayout]];

-- StarterGui.ScreenGui.Dropdown.Container.Holder.Container.UIGradient
G2L["44"] = Instance.new("UIGradient", G2L["42"]);
G2L["44"]["Rotation"] = 90;
G2L["44"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 129, 65)),ColorSequenceKeypoint.new(0.250, Color3.fromRGB(181, 101, 161)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(181, 231, 101)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 101, 161))};

-- StarterGui.ScreenGui.Dropdown.Container.Holder.Gradient
G2L["45"] = Instance.new("UIGradient", G2L["41"]);
G2L["45"]["Rotation"] = 90;
G2L["45"]["Name"] = [[Gradient]];
G2L["45"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Dropdown.Container.Gradient
G2L["46"] = Instance.new("UIGradient", G2L["3f"]);
G2L["46"]["Rotation"] = 90;
G2L["46"]["Name"] = [[Gradient]];
G2L["46"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Option
G2L["47"] = Instance.new("TextButton", G2L["1"]);
G2L["47"]["TextStrokeTransparency"] = 0.75;
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["AutoButtonColor"] = false;
G2L["47"]["TextSize"] = 15;
G2L["47"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["47"]["ZIndex"] = 4;
G2L["47"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["47"]["BackgroundTransparency"] = 1;
G2L["47"]["Name"] = [[Option]];
G2L["47"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["47"]["Text"] = [[]];

-- StarterGui.ScreenGui.Option.Title
G2L["48"] = Instance.new("TextLabel", G2L["47"]);
G2L["48"]["TextStrokeTransparency"] = 0.75;
G2L["48"]["ZIndex"] = 4;
G2L["48"]["BorderSizePixel"] = 0;
G2L["48"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["48"]["TextSize"] = 15;
G2L["48"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["48"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["48"]["BackgroundTransparency"] = 1;
G2L["48"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["48"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["48"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["48"]["Text"] = [[Option]];
G2L["48"]["Name"] = [[Title]];
G2L["48"]["Position"] = UDim2.new(0.5, 0, 0, 0);

-- StarterGui.ScreenGui.Option.Gradient
G2L["49"] = Instance.new("UIGradient", G2L["47"]);
G2L["49"]["Rotation"] = 90;
G2L["49"]["Name"] = [[Gradient]];
G2L["49"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Slider
G2L["4a"] = Instance.new("TextButton", G2L["1"]);
G2L["4a"]["TextStrokeTransparency"] = 0.75;
G2L["4a"]["BorderSizePixel"] = 0;
G2L["4a"]["AutoButtonColor"] = false;
G2L["4a"]["TextSize"] = 15;
G2L["4a"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4a"]["ZIndex"] = 4;
G2L["4a"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["4a"]["BackgroundTransparency"] = 1;
G2L["4a"]["Name"] = [[Slider]];
G2L["4a"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4a"]["Text"] = [[]];

-- StarterGui.ScreenGui.Slider.Title
G2L["4b"] = Instance.new("TextLabel", G2L["4a"]);
G2L["4b"]["TextStrokeTransparency"] = 0.75;
G2L["4b"]["ZIndex"] = 3;
G2L["4b"]["BorderSizePixel"] = 0;
G2L["4b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4b"]["TextSize"] = 15;
G2L["4b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4b"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["4b"]["BackgroundTransparency"] = 1;
G2L["4b"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["4b"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4b"]["Text"] = [[Slider]];
G2L["4b"]["Name"] = [[Title]];

-- StarterGui.ScreenGui.Slider.Slider
G2L["4c"] = Instance.new("Frame", G2L["4a"]);
G2L["4c"]["ZIndex"] = 3;
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["4c"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["4c"]["Size"] = UDim2.new(1, 0, 0, 10);
G2L["4c"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["Name"] = [[Slider]];

-- StarterGui.ScreenGui.Slider.Slider.Bar
G2L["4d"] = Instance.new("Frame", G2L["4c"]);
G2L["4d"]["ZIndex"] = 3;
G2L["4d"]["BorderSizePixel"] = 0;
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4d"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["4d"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["4d"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["4d"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4d"]["Name"] = [[Bar]];

-- StarterGui.ScreenGui.Slider.Slider.Bar.Gradient
G2L["4e"] = Instance.new("UIGradient", G2L["4d"]);
G2L["4e"]["Rotation"] = 90;
G2L["4e"]["Name"] = [[Gradient]];
G2L["4e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Slider.Slider.Gradient
G2L["4f"] = Instance.new("UIGradient", G2L["4c"]);
G2L["4f"]["Rotation"] = 90;
G2L["4f"]["Name"] = [[Gradient]];
G2L["4f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Slider.Value
G2L["50"] = Instance.new("TextBox", G2L["4a"]);
G2L["50"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["50"]["PlaceholderColor3"] = Color3.fromRGB(152, 152, 152);
G2L["50"]["ZIndex"] = 3;
G2L["50"]["BorderSizePixel"] = 0;
G2L["50"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["50"]["TextWrapped"] = true;
G2L["50"]["TextSize"] = 15;
G2L["50"]["Name"] = [[Value]];
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["50"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["50"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["50"]["PlaceholderText"] = [[50]];
G2L["50"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["50"]["Position"] = UDim2.new(0, 0, 1, -10);
G2L["50"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["50"]["Text"] = [[]];
G2L["50"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.TabButton
G2L["51"] = Instance.new("TextButton", G2L["1"]);
G2L["51"]["TextWrapped"] = true;
G2L["51"]["TextStrokeTransparency"] = 0.75;
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["AutoButtonColor"] = false;
G2L["51"]["TextSize"] = 15;
G2L["51"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(202, 202, 202);
G2L["51"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["51"]["ZIndex"] = 3;
G2L["51"]["Size"] = UDim2.new(0, 240, 1, 0);
G2L["51"]["Name"] = [[TabButton]];
G2L["51"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["51"]["Text"] = [[]];

-- StarterGui.ScreenGui.TabButton.Title
G2L["52"] = Instance.new("TextLabel", G2L["51"]);
G2L["52"]["TextWrapped"] = true;
G2L["52"]["TextStrokeTransparency"] = 0.75;
G2L["52"]["ZIndex"] = 3;
G2L["52"]["BorderSizePixel"] = 0;
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["52"]["TextSize"] = 15;
G2L["52"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["52"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["52"]["BackgroundTransparency"] = 1;
G2L["52"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["52"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["52"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["52"]["Text"] = [[Tab Button]];
G2L["52"]["Name"] = [[Title]];
G2L["52"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.ScreenGui.TabButton.Gradient
G2L["53"] = Instance.new("UIGradient", G2L["51"]);
G2L["53"]["Rotation"] = 90;
G2L["53"]["Name"] = [[Gradient]];
G2L["53"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.TextBox
G2L["54"] = Instance.new("TextButton", G2L["1"]);
G2L["54"]["TextStrokeTransparency"] = 0.75;
G2L["54"]["BorderSizePixel"] = 0;
G2L["54"]["AutoButtonColor"] = false;
G2L["54"]["TextSize"] = 15;
G2L["54"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["54"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["54"]["ZIndex"] = 4;
G2L["54"]["Size"] = UDim2.new(1, -10, 0, 40);
G2L["54"]["BackgroundTransparency"] = 1;
G2L["54"]["Name"] = [[TextBox]];
G2L["54"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["54"]["Text"] = [[]];

-- StarterGui.ScreenGui.TextBox.Title
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
G2L["55"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["55"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["55"]["Text"] = [[TextBox]];
G2L["55"]["Name"] = [[Title]];

-- StarterGui.ScreenGui.TextBox.Background
G2L["56"] = Instance.new("Frame", G2L["54"]);
G2L["56"]["ZIndex"] = 3;
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["56"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["56"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["56"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["Name"] = [[Background]];

-- StarterGui.ScreenGui.TextBox.Background.Input
G2L["57"] = Instance.new("TextBox", G2L["56"]);
G2L["57"]["TextStrokeTransparency"] = 0.75;
G2L["57"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["57"]["PlaceholderColor3"] = Color3.fromRGB(152, 152, 152);
G2L["57"]["ZIndex"] = 4;
G2L["57"]["TextWrapped"] = true;
G2L["57"]["TextSize"] = 15;
G2L["57"]["Name"] = [[Input]];
G2L["57"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["57"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["57"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["57"]["ClearTextOnFocus"] = false;
G2L["57"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["57"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["57"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["57"]["Text"] = [[]];
G2L["57"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.TextBox.Background.Gradient
G2L["58"] = Instance.new("UIGradient", G2L["56"]);
G2L["58"]["Rotation"] = 90;
G2L["58"]["Name"] = [[Gradient]];
G2L["58"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Toggle
G2L["59"] = Instance.new("TextButton", G2L["1"]);
G2L["59"]["TextStrokeTransparency"] = 0.75;
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["AutoButtonColor"] = false;
G2L["59"]["TextSize"] = 15;
G2L["59"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["59"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["59"]["ZIndex"] = 3;
G2L["59"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["59"]["BackgroundTransparency"] = 1;
G2L["59"]["Name"] = [[Toggle]];
G2L["59"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["59"]["Text"] = [[]];

-- StarterGui.ScreenGui.Toggle.Toggle
G2L["5a"] = Instance.new("Frame", G2L["59"]);
G2L["5a"]["ZIndex"] = 3;
G2L["5a"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["5a"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["5a"]["Size"] = UDim2.new(0, 10, 0, 10);
G2L["5a"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["5a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5a"]["Name"] = [[Toggle]];

-- StarterGui.ScreenGui.Toggle.Toggle.Gradient
G2L["5b"] = Instance.new("UIGradient", G2L["5a"]);
G2L["5b"]["Rotation"] = 90;
G2L["5b"]["Name"] = [[Gradient]];
G2L["5b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Toggle.Title
G2L["5c"] = Instance.new("TextLabel", G2L["59"]);
G2L["5c"]["TextStrokeTransparency"] = 0.75;
G2L["5c"]["ZIndex"] = 3;
G2L["5c"]["BorderSizePixel"] = 0;
G2L["5c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5c"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["5c"]["TextSize"] = 15;
G2L["5c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5c"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["5c"]["BackgroundTransparency"] = 1;
G2L["5c"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["5c"]["Size"] = UDim2.new(1, -66, 1, 0);
G2L["5c"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["5c"]["Text"] = [[Toggle]];
G2L["5c"]["Name"] = [[Title]];
G2L["5c"]["Position"] = UDim2.new(0, 15, 0.5, 0);

-- StarterGui.ScreenGui.Toggle.Keybind
G2L["5d"] = Instance.new("TextButton", G2L["59"]);
G2L["5d"]["TextStrokeTransparency"] = 0.75;
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["5d"]["TextSize"] = 15;
G2L["5d"]["TextColor3"] = Color3.fromRGB(102, 102, 102);
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["5d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5d"]["ZIndex"] = 3;
G2L["5d"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["5d"]["Size"] = UDim2.new(0, 51, 1, 0);
G2L["5d"]["BackgroundTransparency"] = 1;
G2L["5d"]["Name"] = [[Keybind]];
G2L["5d"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["5d"]["Text"] = [[ NONE ]];
G2L["5d"]["Visible"] = false;
G2L["5d"]["Position"] = UDim2.new(1, 0, 0.5, 0);

-- StarterGui.ScreenGui.Toggle.ModePopup
G2L["5e"] = Instance.new("Frame", G2L["59"]);
G2L["5e"]["Visible"] = false;
G2L["5e"]["ZIndex"] = 23;
G2L["5e"]["BorderSizePixel"] = 0;
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5e"]["Size"] = UDim2.new(0, 120, 0, 80);
G2L["5e"]["Position"] = UDim2.new(0, 205, 1, 5);
G2L["5e"]["Name"] = [[ModePopup]];

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1
G2L["5f"] = Instance.new("Frame", G2L["5e"]);
G2L["5f"]["ZIndex"] = 24;
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["5f"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["5f"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["5f"]["Name"] = [[BorderFrame1]];

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1.BorderFrame2
G2L["60"] = Instance.new("Frame", G2L["5f"]);
G2L["60"]["ZIndex"] = 25;
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["60"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["60"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["60"]["Name"] = [[BorderFrame2]];

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3
G2L["61"] = Instance.new("Frame", G2L["60"]);
G2L["61"]["ZIndex"] = 26;
G2L["61"]["BorderSizePixel"] = 0;
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["61"]["Size"] = UDim2.new(1, -6, 1, -6);
G2L["61"]["Position"] = UDim2.new(0, 3, 0, 3);
G2L["61"]["Name"] = [[BorderFrame3]];

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame
G2L["62"] = Instance.new("Frame", G2L["61"]);
G2L["62"]["ZIndex"] = 27;
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(6, 6, 5);
G2L["62"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["62"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["62"]["Name"] = [[InnerFrame]];

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame
G2L["63"] = Instance.new("Frame", G2L["62"]);
G2L["63"]["ZIndex"] = 28;
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(101, 151, 201);
G2L["63"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["63"]["Name"] = [[GradientFrame]];

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame.UIGradient
G2L["64"] = Instance.new("UIGradient", G2L["63"]);
G2L["64"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 151, 201)),ColorSequenceKeypoint.new(0.173, Color3.fromRGB(156, 116, 173)),ColorSequenceKeypoint.new(0.250, Color3.fromRGB(181, 101, 161)),ColorSequenceKeypoint.new(0.351, Color3.fromRGB(181, 127, 148)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(181, 231, 101)),ColorSequenceKeypoint.new(0.793, Color3.fromRGB(181, 208, 111)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 101, 161))};

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ShadowLine
G2L["65"] = Instance.new("Frame", G2L["62"]);
G2L["65"]["ZIndex"] = 28;
G2L["65"]["BorderSizePixel"] = 0;
G2L["65"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["65"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["65"]["Position"] = UDim2.new(0, 0, 0, 1);
G2L["65"]["Name"] = [[ShadowLine]];
G2L["65"]["BackgroundTransparency"] = 0.2;

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.Title
G2L["66"] = Instance.new("TextLabel", G2L["62"]);
G2L["66"]["ZIndex"] = 28;
G2L["66"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["66"]["TextSize"] = 14;
G2L["66"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["66"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["66"]["BackgroundTransparency"] = 1;
G2L["66"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["66"]["Text"] = [[Keybind Mode]];
G2L["66"]["Name"] = [[Title]];
G2L["66"]["Position"] = UDim2.new(0, 5, 0, 5);

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ToggleMode
G2L["67"] = Instance.new("TextButton", G2L["62"]);
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["TextSize"] = 14;
G2L["67"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["67"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["67"]["ZIndex"] = 28;
G2L["67"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["67"]["BackgroundTransparency"] = 1;
G2L["67"]["Name"] = [[ToggleMode]];
G2L["67"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["67"]["Text"] = [[Toggle]];
G2L["67"]["Position"] = UDim2.new(0, 5, 0, 25);

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.HoldMode
G2L["68"] = Instance.new("TextButton", G2L["62"]);
G2L["68"]["BorderSizePixel"] = 0;
G2L["68"]["TextSize"] = 14;
G2L["68"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["68"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["68"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["68"]["ZIndex"] = 28;
G2L["68"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["68"]["BackgroundTransparency"] = 1;
G2L["68"]["Name"] = [[HoldMode]];
G2L["68"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["68"]["Text"] = [[Hold]];
G2L["68"]["Position"] = UDim2.new(0, 5, 0, 40);

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.RemoveKeybind
G2L["69"] = Instance.new("TextButton", G2L["62"]);
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["TextSize"] = 14;
G2L["69"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["69"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["69"]["ZIndex"] = 28;
G2L["69"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["69"]["BackgroundTransparency"] = 1;
G2L["69"]["Name"] = [[RemoveKeybind]];
G2L["69"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["69"]["Text"] = [[Remove]];
G2L["69"]["Position"] = UDim2.new(0, 5, 0, 55);

-- StarterGui.ScreenGui.ToggleWColorpicker
G2L["6a"] = Instance.new("TextButton", G2L["1"]);
G2L["6a"]["TextStrokeTransparency"] = 0.75;
G2L["6a"]["BorderSizePixel"] = 0;
G2L["6a"]["AutoButtonColor"] = false;
G2L["6a"]["TextSize"] = 15;
G2L["6a"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6a"]["ZIndex"] = 3;
G2L["6a"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["6a"]["BackgroundTransparency"] = 1;
G2L["6a"]["Name"] = [[ToggleWColorpicker]];
G2L["6a"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6a"]["Text"] = [[]];

-- StarterGui.ScreenGui.ToggleWColorpicker.Toggle
G2L["6b"] = Instance.new("Frame", G2L["6a"]);
G2L["6b"]["ZIndex"] = 3;
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["6b"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["6b"]["Size"] = UDim2.new(0, 10, 0, 10);
G2L["6b"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["Name"] = [[Toggle]];

-- StarterGui.ScreenGui.ToggleWColorpicker.Toggle.Gradient
G2L["6c"] = Instance.new("UIGradient", G2L["6b"]);
G2L["6c"]["Rotation"] = 90;
G2L["6c"]["Name"] = [[Gradient]];
G2L["6c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.ToggleWColorpicker.Title
G2L["6d"] = Instance.new("TextLabel", G2L["6a"]);
G2L["6d"]["TextStrokeTransparency"] = 0.75;
G2L["6d"]["ZIndex"] = 3;
G2L["6d"]["BorderSizePixel"] = 0;
G2L["6d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6d"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6d"]["TextSize"] = 15;
G2L["6d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6d"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["6d"]["BackgroundTransparency"] = 1;
G2L["6d"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["6d"]["Size"] = UDim2.new(1, -66, 1, 0);
G2L["6d"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6d"]["Text"] = [[Toggle]];
G2L["6d"]["Name"] = [[Title]];
G2L["6d"]["Position"] = UDim2.new(0, 15, 0.5, 0);

-- StarterGui.ScreenGui.ToggleWColorpicker.Keybind
G2L["6e"] = Instance.new("TextButton", G2L["6a"]);
G2L["6e"]["TextStrokeTransparency"] = 0.75;
G2L["6e"]["BorderSizePixel"] = 0;
G2L["6e"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["6e"]["TextSize"] = 15;
G2L["6e"]["TextColor3"] = Color3.fromRGB(102, 102, 102);
G2L["6e"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6e"]["ZIndex"] = 3;
G2L["6e"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["6e"]["Size"] = UDim2.new(0, 51, 1, 0);
G2L["6e"]["BackgroundTransparency"] = 1;
G2L["6e"]["Name"] = [[Keybind]];
G2L["6e"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6e"]["Text"] = [[ NONE ]];
G2L["6e"]["Visible"] = false;
G2L["6e"]["Position"] = UDim2.new(1, 0, 0.5, 0);

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup
G2L["6f"] = Instance.new("Frame", G2L["6a"]);
G2L["6f"]["Visible"] = false;
G2L["6f"]["ZIndex"] = 23;
G2L["6f"]["BorderSizePixel"] = 0;
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6f"]["Size"] = UDim2.new(0, 120, 0, 80);
G2L["6f"]["Position"] = UDim2.new(0, 205, 1, 5);
G2L["6f"]["Name"] = [[ModePopup]];

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1
G2L["70"] = Instance.new("Frame", G2L["6f"]);
G2L["70"]["ZIndex"] = 24;
G2L["70"]["BorderSizePixel"] = 0;
G2L["70"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["70"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["70"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["70"]["Name"] = [[BorderFrame1]];

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2
G2L["71"] = Instance.new("Frame", G2L["70"]);
G2L["71"]["ZIndex"] = 25;
G2L["71"]["BorderSizePixel"] = 0;
G2L["71"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["71"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["71"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["71"]["Name"] = [[BorderFrame2]];

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3
G2L["72"] = Instance.new("Frame", G2L["71"]);
G2L["72"]["ZIndex"] = 26;
G2L["72"]["BorderSizePixel"] = 0;
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["72"]["Size"] = UDim2.new(1, -6, 1, -6);
G2L["72"]["Position"] = UDim2.new(0, 3, 0, 3);
G2L["72"]["Name"] = [[BorderFrame3]];

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame
G2L["73"] = Instance.new("Frame", G2L["72"]);
G2L["73"]["ZIndex"] = 27;
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(6, 6, 5);
G2L["73"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["73"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["73"]["Name"] = [[InnerFrame]];

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame
G2L["74"] = Instance.new("Frame", G2L["73"]);
G2L["74"]["ZIndex"] = 28;
G2L["74"]["BorderSizePixel"] = 0;
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(101, 151, 201);
G2L["74"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["74"]["Name"] = [[GradientFrame]];

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame.UIGradient
G2L["75"] = Instance.new("UIGradient", G2L["74"]);
G2L["75"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 151, 201)),ColorSequenceKeypoint.new(0.173, Color3.fromRGB(156, 116, 173)),ColorSequenceKeypoint.new(0.250, Color3.fromRGB(181, 101, 161)),ColorSequenceKeypoint.new(0.351, Color3.fromRGB(181, 127, 148)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(181, 231, 101)),ColorSequenceKeypoint.new(0.793, Color3.fromRGB(181, 208, 111)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 101, 161))};

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ShadowLine
G2L["76"] = Instance.new("Frame", G2L["73"]);
G2L["76"]["ZIndex"] = 28;
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["76"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["76"]["Position"] = UDim2.new(0, 0, 0, 1);
G2L["76"]["Name"] = [[ShadowLine]];
G2L["76"]["BackgroundTransparency"] = 0.2;

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.Title
G2L["77"] = Instance.new("TextLabel", G2L["73"]);
G2L["77"]["ZIndex"] = 28;
G2L["77"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["77"]["TextSize"] = 14;
G2L["77"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["77"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["77"]["BackgroundTransparency"] = 1;
G2L["77"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["77"]["Text"] = [[Keybind Mode]];
G2L["77"]["Name"] = [[Title]];
G2L["77"]["Position"] = UDim2.new(0, 5, 0, 5);

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ToggleMode
G2L["78"] = Instance.new("TextButton", G2L["73"]);
G2L["78"]["BorderSizePixel"] = 0;
G2L["78"]["TextSize"] = 14;
G2L["78"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["78"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["78"]["ZIndex"] = 28;
G2L["78"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["78"]["BackgroundTransparency"] = 1;
G2L["78"]["Name"] = [[ToggleMode]];
G2L["78"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["78"]["Text"] = [[Toggle]];
G2L["78"]["Position"] = UDim2.new(0, 5, 0, 25);

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.HoldMode
G2L["79"] = Instance.new("TextButton", G2L["73"]);
G2L["79"]["BorderSizePixel"] = 0;
G2L["79"]["TextSize"] = 14;
G2L["79"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["79"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["79"]["ZIndex"] = 28;
G2L["79"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["79"]["BackgroundTransparency"] = 1;
G2L["79"]["Name"] = [[HoldMode]];
G2L["79"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["79"]["Text"] = [[Hold]];
G2L["79"]["Position"] = UDim2.new(0, 5, 0, 40);

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.RemoveKeybind
G2L["7a"] = Instance.new("TextButton", G2L["73"]);
G2L["7a"]["BorderSizePixel"] = 0;
G2L["7a"]["TextSize"] = 14;
G2L["7a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7a"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["7a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7a"]["ZIndex"] = 28;
G2L["7a"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["7a"]["BackgroundTransparency"] = 1;
G2L["7a"]["Name"] = [[RemoveKeybind]];
G2L["7a"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["7a"]["Text"] = [[Remove]];
G2L["7a"]["Position"] = UDim2.new(0, 5, 0, 55);

-- StarterGui.ScreenGui.ToggleWColorpicker.Color
G2L["7b"] = Instance.new("Frame", G2L["6a"]);
G2L["7b"]["ZIndex"] = 3;
G2L["7b"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["7b"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["7b"]["Size"] = UDim2.new(0, 20, 0, 10);
G2L["7b"]["Position"] = UDim2.new(1, 0, 0.5, 0);
G2L["7b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7b"]["Name"] = [[Color]];

-- StarterGui.ScreenGui.ToggleWColorpicker.Color.Gradient
G2L["7c"] = Instance.new("UIGradient", G2L["7b"]);
G2L["7c"]["Rotation"] = 90;
G2L["7c"]["Name"] = [[Gradient]];
G2L["7c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Label
G2L["7d"] = Instance.new("TextLabel", G2L["1"]);
G2L["7d"]["TextStrokeTransparency"] = 0.75;
G2L["7d"]["ZIndex"] = 3;
G2L["7d"]["BorderSizePixel"] = 0;
G2L["7d"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["7d"]["TextSize"] = 15;
G2L["7d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7d"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["7d"]["BackgroundTransparency"] = 1;
G2L["7d"]["Size"] = UDim2.new(1, -10, 0, 15);
G2L["7d"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["7d"]["Text"] = [[Text Label]];
G2L["7d"]["Name"] = [[Label]];


return G2L["1"], require;
