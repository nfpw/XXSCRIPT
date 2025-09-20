--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 141 | Scripts: 0 | Modules: 0
local G2L = {};

-- StarterGui.ScreenGui
G2L["1"] = Instance.new("Folder");
G2L["1"]["Name"] = [[Bracket]];

-- StarterGui.ScreenGui.UIGradient
G2L["2"] = Instance.new("UIGradient", G2L["1"]);
G2L["2"]["Rotation"] = 90;
G2L["2"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.602, Color3.fromRGB(62, 62, 62)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

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

-- StarterGui.ScreenGui.Bracket.Main.Holder.TBContainer.Holder.UIGradient
G2L["12"] = Instance.new("UIGradient", G2L["10"]);
G2L["12"]["Rotation"] = 90;
G2L["12"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.602, Color3.fromRGB(62, 62, 62)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

-- StarterGui.ScreenGui.Bracket.Main.Holder.TContainer
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

-- StarterGui.ScreenGui.Bracket.Main.Holder.UIGradient
G2L["14"] = Instance.new("UIGradient", G2L["c"]);
G2L["14"]["Rotation"] = 90;
G2L["14"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.602, Color3.fromRGB(62, 62, 62)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

-- StarterGui.ScreenGui.Bracket.ToolTip
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

-- StarterGui.ScreenGui.Bracket.ToolTip.UICorner
G2L["16"] = Instance.new("UICorner", G2L["15"]);
G2L["16"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.ScreenGui.Hud
G2L["17"] = Instance.new("Frame", G2L["1"]);
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Size"] = UDim2.new(0, 388, 0, 35);
G2L["17"]["Position"] = UDim2.new(1, -398, 0, 10);
G2L["17"]["Name"] = [[Hud]];

-- StarterGui.ScreenGui.Hud.BorderFrame1
G2L["18"] = Instance.new("Frame", G2L["17"]);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["18"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["18"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["18"]["Name"] = [[BorderFrame1]];

-- StarterGui.ScreenGui.Hud.BorderFrame1.BorderFrame2
G2L["19"] = Instance.new("Frame", G2L["18"]);
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["19"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["19"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["19"]["Name"] = [[BorderFrame2]];

-- StarterGui.ScreenGui.Hud.BorderFrame1.BorderFrame2.BorderFrame3
G2L["1a"] = Instance.new("Frame", G2L["19"]);
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["1a"]["Size"] = UDim2.new(1, -6, 1, -6);
G2L["1a"]["Position"] = UDim2.new(0, 3, 0, 3);
G2L["1a"]["Name"] = [[BorderFrame3]];

-- StarterGui.ScreenGui.Hud.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame
G2L["1b"] = Instance.new("Frame", G2L["1a"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(6, 6, 5);
G2L["1b"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["1b"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["1b"]["Name"] = [[InnerFrame]];

-- StarterGui.ScreenGui.Hud.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame
G2L["1c"] = Instance.new("Frame", G2L["1b"]);
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(101, 151, 201);
G2L["1c"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["1c"]["Name"] = [[GradientFrame]];

-- StarterGui.ScreenGui.Hud.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ShadowLine
G2L["1d"] = Instance.new("Frame", G2L["1b"]);
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["1d"]["Position"] = UDim2.new(0, 0, 0, 1);
G2L["1d"]["Name"] = [[ShadowLine]];
G2L["1d"]["BackgroundTransparency"] = 0.2;

-- StarterGui.ScreenGui.Hud.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.InfoText
G2L["1e"] = Instance.new("TextLabel", G2L["1b"]);
G2L["1e"]["TextSize"] = 14;
G2L["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["BackgroundTransparency"] = 1;
G2L["1e"]["RichText"] = true;
G2L["1e"]["Size"] = UDim2.new(1, -12, 1, -4);
G2L["1e"]["Text"] = [[<font color="rgb(255,255,255)">game</font><font color="rgb(163,200,79)">sense</font><font color="rgb(255,255,255)"> | </font><font color="rgb(255,255,255)">PerfectoExternal</font><font color="rgb(255,255,255)"> | </font><font color="rgb(255,255,255)">144fps</font><font color="rgb(255,255,255)"> | </font><font color="rgb(255,255,255)">72ms</font><font color="rgb(255,255,255)"> | </font><font color="rgb(255,255,255)">17:20</font>]];
G2L["1e"]["Name"] = [[InfoText]];
G2L["1e"]["Position"] = UDim2.new(0, 6, 0, 2);

-- StarterGui.ScreenGui.Palette
G2L["1f"] = Instance.new("Frame", G2L["1"]);
G2L["1f"]["Visible"] = false;
G2L["1f"]["ZIndex"] = 5;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["1f"]["Size"] = UDim2.new(0, 150, 0, 240);
G2L["1f"]["Position"] = UDim2.new(0, 100, 0, 100);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Name"] = [[Palette]];

-- StarterGui.ScreenGui.Palette.GradientPalette
G2L["20"] = Instance.new("ImageButton", G2L["1f"]);
G2L["20"]["AutoButtonColor"] = false;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["20"]["ZIndex"] = 5;
G2L["20"]["Size"] = UDim2.new(1, -10, 0, 150);
G2L["20"]["Name"] = [[GradientPalette]];
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Position"] = UDim2.new(0, 5, 0, 5);

-- StarterGui.ScreenGui.Palette.GradientPalette.SaturationOverlay
G2L["21"] = Instance.new("Frame", G2L["20"]);
G2L["21"]["ZIndex"] = 6;
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["21"]["Name"] = [[SaturationOverlay]];

-- StarterGui.ScreenGui.Palette.GradientPalette.SaturationOverlay.UIGradient
G2L["22"] = Instance.new("UIGradient", G2L["21"]);
G2L["22"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)};

-- StarterGui.ScreenGui.Palette.GradientPalette.BrightnessOverlay
G2L["23"] = Instance.new("Frame", G2L["20"]);
G2L["23"]["ZIndex"] = 7;
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["23"]["Name"] = [[BrightnessOverlay]];

-- StarterGui.ScreenGui.Palette.GradientPalette.BrightnessOverlay.UIGradient
G2L["24"] = Instance.new("UIGradient", G2L["23"]);
G2L["24"]["Rotation"] = 90;
G2L["24"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(1.000, 0)};

-- StarterGui.ScreenGui.Palette.GradientPalette.Dot
G2L["25"] = Instance.new("Frame", G2L["20"]);
G2L["25"]["ZIndex"] = 8;
G2L["25"]["BorderSizePixel"] = 2;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["25"]["Size"] = UDim2.new(0, 3, 0, 3);
G2L["25"]["Position"] = UDim2.new(1, 0, 0, 0);
G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["Name"] = [[Dot]];
G2L["25"]["Rotation"] = 45;

-- StarterGui.ScreenGui.Palette.ColorSlider
G2L["26"] = Instance.new("TextButton", G2L["1f"]);
G2L["26"]["AutoButtonColor"] = false;
G2L["26"]["TextSize"] = 14;
G2L["26"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["26"]["ZIndex"] = 5;
G2L["26"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["26"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["26"]["Name"] = [[ColorSlider]];
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Text"] = [[]];
G2L["26"]["Position"] = UDim2.new(1, -5, 0, 160);

-- StarterGui.ScreenGui.Palette.ColorSlider.Gradient
G2L["27"] = Instance.new("UIGradient", G2L["26"]);
G2L["27"]["Name"] = [[Gradient]];
G2L["27"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 0, 6)),ColorSequenceKeypoint.new(0.200, Color3.fromRGB(255, 0, 253)),ColorSequenceKeypoint.new(0.400, Color3.fromRGB(0, 19, 255)),ColorSequenceKeypoint.new(0.600, Color3.fromRGB(0, 255, 255)),ColorSequenceKeypoint.new(0.800, Color3.fromRGB(23, 255, 0)),ColorSequenceKeypoint.new(0.900, Color3.fromRGB(236, 255, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 0, 6))};

-- StarterGui.ScreenGui.Palette.TransparencySlider
G2L["28"] = Instance.new("TextButton", G2L["1f"]);
G2L["28"]["AutoButtonColor"] = false;
G2L["28"]["TextSize"] = 14;
G2L["28"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["28"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["28"]["ZIndex"] = 5;
G2L["28"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["28"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["28"]["Name"] = [[TransparencySlider]];
G2L["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["Text"] = [[]];
G2L["28"]["Position"] = UDim2.new(1, -5, 0, 175);

-- StarterGui.ScreenGui.Palette.TransparencySlider.Gradient
G2L["29"] = Instance.new("UIGradient", G2L["28"]);
G2L["29"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)};
G2L["29"]["Name"] = [[Gradient]];

-- StarterGui.ScreenGui.Palette.ColorPreview
G2L["2a"] = Instance.new("Frame", G2L["1f"]);
G2L["2a"]["ZIndex"] = 5;
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["2a"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["2a"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["2a"]["Position"] = UDim2.new(0.5, 0, 0, 190);
G2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["Name"] = [[ColorPreview]];

-- StarterGui.ScreenGui.Palette.InputFrame
G2L["2b"] = Instance.new("Frame", G2L["1f"]);
G2L["2b"]["ZIndex"] = 5;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["2b"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["2b"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["2b"]["Position"] = UDim2.new(0.5, 0, 0, 215);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["Name"] = [[InputFrame]];

-- StarterGui.ScreenGui.Palette.InputFrame.InputBox
G2L["2c"] = Instance.new("TextBox", G2L["2b"]);
G2L["2c"]["TextStrokeTransparency"] = 0.75;
G2L["2c"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["2c"]["PlaceholderColor3"] = Color3.fromRGB(202, 202, 202);
G2L["2c"]["ZIndex"] = 5;
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["TextWrapped"] = true;
G2L["2c"]["TextSize"] = 12;
G2L["2c"]["Name"] = [[InputBox]];
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2c"]["PlaceholderText"] = [[RGBA: 255, 0, 0, 255]];
G2L["2c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2c"]["Text"] = [[]];
G2L["2c"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Palette.Gradient
G2L["2d"] = Instance.new("UIGradient", G2L["1f"]);
G2L["2d"]["Rotation"] = 90;
G2L["2d"]["Name"] = [[Gradient]];
G2L["2d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.602, Color3.fromRGB(62, 62, 62)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

-- StarterGui.ScreenGui.Section
G2L["2e"] = Instance.new("Frame", G2L["1"]);
G2L["2e"]["ZIndex"] = 3;
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2e"]["Size"] = UDim2.new(1, 0, 0, 235);
G2L["2e"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2e"]["Name"] = [[Section]];

-- StarterGui.ScreenGui.Section.Border
G2L["2f"] = Instance.new("Frame", G2L["2e"]);
G2L["2f"]["ZIndex"] = 2;
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["2f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2f"]["Size"] = UDim2.new(1, 2, 1, 2);
G2L["2f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f"]["Name"] = [[Border]];

-- StarterGui.ScreenGui.Section.Title
G2L["30"] = Instance.new("TextLabel", G2L["2e"]);
G2L["30"]["TextStrokeTransparency"] = 0.75;
G2L["30"]["ZIndex"] = 3;
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["30"]["TextSize"] = 15;
G2L["30"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["30"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["30"]["Size"] = UDim2.new(0, 45, 0, 2);
G2L["30"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["30"]["Text"] = [[Section]];
G2L["30"]["Name"] = [[Title]];
G2L["30"]["Position"] = UDim2.new(0, 5, 0, -2);

-- StarterGui.ScreenGui.Section.Container
G2L["31"] = Instance.new("Frame", G2L["2e"]);
G2L["31"]["ZIndex"] = 3;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["31"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["31"]["Size"] = UDim2.new(1, 0, 1, -10);
G2L["31"]["Position"] = UDim2.new(0.5, 0, 0, 10);
G2L["31"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["31"]["Name"] = [[Container]];
G2L["31"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Section.Container.ListLayout
G2L["32"] = Instance.new("UIListLayout", G2L["31"]);
G2L["32"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["32"]["Padding"] = UDim.new(0, 5);
G2L["32"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["32"]["Name"] = [[ListLayout]];

-- StarterGui.ScreenGui.Section.UIGradient
G2L["33"] = Instance.new("UIGradient", G2L["2e"]);
G2L["33"]["Rotation"] = 90;
G2L["33"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.602, Color3.fromRGB(62, 62, 62)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

-- StarterGui.ScreenGui.Tab
G2L["34"] = Instance.new("ScrollingFrame", G2L["1"]);
G2L["34"]["Active"] = true;
G2L["34"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["34"]["ZIndex"] = 2;
G2L["34"]["BorderSizePixel"] = 0;
G2L["34"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["34"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["34"]["Name"] = [[Tab]];
G2L["34"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["34"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["34"]["ScrollBarImageColor3"] = Color3.fromRGB(52, 52, 52);
G2L["34"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["34"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["34"]["ScrollBarThickness"] = 0;
G2L["34"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Tab.RightSide
G2L["35"] = Instance.new("Frame", G2L["34"]);
G2L["35"]["ZIndex"] = 2;
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["35"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["35"]["Size"] = UDim2.new(0.5, -5, 1, 0);
G2L["35"]["Position"] = UDim2.new(1, -5, 0, 0);
G2L["35"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["35"]["Name"] = [[RightSide]];
G2L["35"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Tab.RightSide.Padding
G2L["36"] = Instance.new("UIPadding", G2L["35"]);
G2L["36"]["PaddingTop"] = UDim.new(0, 10);
G2L["36"]["Name"] = [[Padding]];
G2L["36"]["PaddingLeft"] = UDim.new(0, 3);

-- StarterGui.ScreenGui.Tab.RightSide.ListLayout
G2L["37"] = Instance.new("UIListLayout", G2L["35"]);
G2L["37"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["37"]["Padding"] = UDim.new(0, 10);
G2L["37"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["37"]["Name"] = [[ListLayout]];

-- StarterGui.ScreenGui.Tab.LeftSide
G2L["38"] = Instance.new("Frame", G2L["34"]);
G2L["38"]["ZIndex"] = 2;
G2L["38"]["BorderSizePixel"] = 0;
G2L["38"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["38"]["Size"] = UDim2.new(0.5, -5, 1, 0);
G2L["38"]["Position"] = UDim2.new(0, 5, 0, 0);
G2L["38"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["38"]["Name"] = [[LeftSide]];
G2L["38"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Tab.LeftSide.Padding
G2L["39"] = Instance.new("UIPadding", G2L["38"]);
G2L["39"]["PaddingTop"] = UDim.new(0, 10);
G2L["39"]["PaddingRight"] = UDim.new(0, 3);
G2L["39"]["Name"] = [[Padding]];

-- StarterGui.ScreenGui.Tab.LeftSide.ListLayout
G2L["3a"] = Instance.new("UIListLayout", G2L["38"]);
G2L["3a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["3a"]["Padding"] = UDim.new(0, 10);
G2L["3a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["3a"]["Name"] = [[ListLayout]];

-- StarterGui.ScreenGui.Button
G2L["3b"] = Instance.new("TextButton", G2L["1"]);
G2L["3b"]["TextStrokeTransparency"] = 0.75;
G2L["3b"]["AutoButtonColor"] = false;
G2L["3b"]["TextSize"] = 15;
G2L["3b"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3b"]["ZIndex"] = 3;
G2L["3b"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["3b"]["Name"] = [[Button]];
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["Text"] = [[]];

-- StarterGui.ScreenGui.Button.Title
G2L["3c"] = Instance.new("TextLabel", G2L["3b"]);
G2L["3c"]["TextStrokeTransparency"] = 0.75;
G2L["3c"]["ZIndex"] = 3;
G2L["3c"]["BorderSizePixel"] = 0;
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3c"]["TextSize"] = 15;
G2L["3c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3c"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["3c"]["BackgroundTransparency"] = 1;
G2L["3c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["3c"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3c"]["Text"] = [[Button]];
G2L["3c"]["Name"] = [[Title]];

-- StarterGui.ScreenGui.Button.Gradient
G2L["3d"] = Instance.new("UIGradient", G2L["3b"]);
G2L["3d"]["Rotation"] = 90;
G2L["3d"]["Name"] = [[Gradient]];
G2L["3d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Button.Keybind
G2L["3e"] = Instance.new("TextButton", G2L["3b"]);
G2L["3e"]["TextStrokeTransparency"] = 0.75;
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["3e"]["TextSize"] = 15;
G2L["3e"]["TextColor3"] = Color3.fromRGB(102, 102, 102);
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3e"]["ZIndex"] = 3;
G2L["3e"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["3e"]["Size"] = UDim2.new(0, 51, 1, 0);
G2L["3e"]["BackgroundTransparency"] = 1;
G2L["3e"]["Name"] = [[Keybind]];
G2L["3e"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3e"]["Text"] = [[ NONE ]];
G2L["3e"]["Visible"] = false;
G2L["3e"]["Position"] = UDim2.new(1, 0, 0.5, 0);

-- StarterGui.ScreenGui.Colorpicker
G2L["3f"] = Instance.new("TextButton", G2L["1"]);
G2L["3f"]["TextStrokeTransparency"] = 0.75;
G2L["3f"]["BorderSizePixel"] = 0;
G2L["3f"]["AutoButtonColor"] = false;
G2L["3f"]["TextSize"] = 15;
G2L["3f"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3f"]["ZIndex"] = 3;
G2L["3f"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["3f"]["BackgroundTransparency"] = 1;
G2L["3f"]["Name"] = [[Colorpicker]];
G2L["3f"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3f"]["Text"] = [[]];

-- StarterGui.ScreenGui.Colorpicker.Title
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
G2L["40"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["40"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["40"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["40"]["Text"] = [[Colorpicker]];
G2L["40"]["Name"] = [[Title]];
G2L["40"]["Position"] = UDim2.new(0, 0, 0.5, 0);

-- StarterGui.ScreenGui.Colorpicker.Color
G2L["41"] = Instance.new("Frame", G2L["3f"]);
G2L["41"]["ZIndex"] = 3;
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["41"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["41"]["Size"] = UDim2.new(0, 20, 0, 10);
G2L["41"]["Position"] = UDim2.new(1, 0, 0.5, 0);
G2L["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["Name"] = [[Color]];

-- StarterGui.ScreenGui.Colorpicker.Color.Gradient
G2L["42"] = Instance.new("UIGradient", G2L["41"]);
G2L["42"]["Rotation"] = 90;
G2L["42"]["Name"] = [[Gradient]];
G2L["42"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Dropdown
G2L["43"] = Instance.new("TextButton", G2L["1"]);
G2L["43"]["TextStrokeTransparency"] = 0.75;
G2L["43"]["BorderSizePixel"] = 0;
G2L["43"]["AutoButtonColor"] = false;
G2L["43"]["TextSize"] = 15;
G2L["43"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["43"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["43"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["43"]["ZIndex"] = 3;
G2L["43"]["Size"] = UDim2.new(1, -10, 0, 40);
G2L["43"]["BackgroundTransparency"] = 1;
G2L["43"]["Name"] = [[Dropdown]];
G2L["43"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["43"]["Text"] = [[]];

-- StarterGui.ScreenGui.Dropdown.Title
G2L["44"] = Instance.new("TextLabel", G2L["43"]);
G2L["44"]["TextStrokeTransparency"] = 0.75;
G2L["44"]["ZIndex"] = 3;
G2L["44"]["BorderSizePixel"] = 0;
G2L["44"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["44"]["TextSize"] = 15;
G2L["44"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["44"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["44"]["BackgroundTransparency"] = 1;
G2L["44"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["44"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["44"]["Text"] = [[Dropdown]];
G2L["44"]["Name"] = [[Title]];

-- StarterGui.ScreenGui.Dropdown.Container
G2L["45"] = Instance.new("Frame", G2L["43"]);
G2L["45"]["ZIndex"] = 3;
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["45"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["45"]["Position"] = UDim2.new(0, 0, 0, 20);
G2L["45"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["45"]["Name"] = [[Container]];

-- StarterGui.ScreenGui.Dropdown.Container.Value
G2L["46"] = Instance.new("TextLabel", G2L["45"]);
G2L["46"]["TextStrokeTransparency"] = 0.75;
G2L["46"]["ZIndex"] = 3;
G2L["46"]["BorderSizePixel"] = 0;
G2L["46"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["46"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["46"]["TextSize"] = 15;
G2L["46"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["46"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["46"]["BackgroundTransparency"] = 1;
G2L["46"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["46"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["46"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["46"]["Text"] = [[...]];
G2L["46"]["Name"] = [[Value]];
G2L["46"]["Position"] = UDim2.new(0.5, 0, 0, 0);

-- StarterGui.ScreenGui.Dropdown.Container.Holder
G2L["47"] = Instance.new("Frame", G2L["45"]);
G2L["47"]["Visible"] = false;
G2L["47"]["ZIndex"] = 3;
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["47"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["47"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["47"]["Position"] = UDim2.new(0.5, 0, 0, 25);
G2L["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["47"]["Name"] = [[Holder]];

-- StarterGui.ScreenGui.Dropdown.Container.Holder.Container
G2L["48"] = Instance.new("Frame", G2L["47"]);
G2L["48"]["ZIndex"] = 3;
G2L["48"]["BorderSizePixel"] = 0;
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["48"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["48"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["48"]["Name"] = [[Container]];
G2L["48"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Dropdown.Container.Holder.Container.ListLayout
G2L["49"] = Instance.new("UIListLayout", G2L["48"]);
G2L["49"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["49"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["49"]["Name"] = [[ListLayout]];

-- StarterGui.ScreenGui.Dropdown.Container.Holder.Container.UIGradient
G2L["4a"] = Instance.new("UIGradient", G2L["48"]);
G2L["4a"]["Rotation"] = 90;
G2L["4a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.602, Color3.fromRGB(62, 62, 62)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

-- StarterGui.ScreenGui.Dropdown.Container.Holder.Gradient
G2L["4b"] = Instance.new("UIGradient", G2L["47"]);
G2L["4b"]["Rotation"] = 90;
G2L["4b"]["Name"] = [[Gradient]];
G2L["4b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Dropdown.Container.Gradient
G2L["4c"] = Instance.new("UIGradient", G2L["45"]);
G2L["4c"]["Rotation"] = 90;
G2L["4c"]["Name"] = [[Gradient]];
G2L["4c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Option
G2L["4d"] = Instance.new("TextButton", G2L["1"]);
G2L["4d"]["TextStrokeTransparency"] = 0.75;
G2L["4d"]["BorderSizePixel"] = 0;
G2L["4d"]["AutoButtonColor"] = false;
G2L["4d"]["TextSize"] = 15;
G2L["4d"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4d"]["ZIndex"] = 4;
G2L["4d"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["4d"]["BackgroundTransparency"] = 1;
G2L["4d"]["Name"] = [[Option]];
G2L["4d"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4d"]["Text"] = [[]];

-- StarterGui.ScreenGui.Option.Title
G2L["4e"] = Instance.new("TextLabel", G2L["4d"]);
G2L["4e"]["TextStrokeTransparency"] = 0.75;
G2L["4e"]["ZIndex"] = 4;
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4e"]["TextSize"] = 15;
G2L["4e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4e"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["4e"]["BackgroundTransparency"] = 1;
G2L["4e"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["4e"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["4e"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4e"]["Text"] = [[Option]];
G2L["4e"]["Name"] = [[Title]];
G2L["4e"]["Position"] = UDim2.new(0.5, 0, 0, 0);

-- StarterGui.ScreenGui.SearchOption
G2L["4f"] = Instance.new("TextBox", G2L["1"]);
G2L["4f"]["TextStrokeTransparency"] = 0.75;
G2L["4f"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["4f"]["ZIndex"] = 4;
G2L["4f"]["BorderSizePixel"] = 0;
G2L["4f"]["TextSize"] = 15;
G2L["4f"]["Name"] = [[SearchOption]];
G2L["4f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4f"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["4f"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4f"]["Text"] = [[]];
G2L["4f"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Slider
G2L["50"] = Instance.new("TextButton", G2L["1"]);
G2L["50"]["TextStrokeTransparency"] = 0.75;
G2L["50"]["BorderSizePixel"] = 0;
G2L["50"]["AutoButtonColor"] = false;
G2L["50"]["TextSize"] = 15;
G2L["50"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["50"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["50"]["ZIndex"] = 4;
G2L["50"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["50"]["BackgroundTransparency"] = 1;
G2L["50"]["Name"] = [[Slider]];
G2L["50"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["50"]["Text"] = [[]];

-- StarterGui.ScreenGui.Slider.Title
G2L["51"] = Instance.new("TextLabel", G2L["50"]);
G2L["51"]["TextStrokeTransparency"] = 0.75;
G2L["51"]["ZIndex"] = 3;
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["51"]["TextSize"] = 15;
G2L["51"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["51"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["51"]["BackgroundTransparency"] = 1;
G2L["51"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["51"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["51"]["Text"] = [[Slider]];
G2L["51"]["Name"] = [[Title]];

-- StarterGui.ScreenGui.Slider.Slider
G2L["52"] = Instance.new("Frame", G2L["50"]);
G2L["52"]["ZIndex"] = 3;
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["52"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["52"]["Size"] = UDim2.new(1, 0, 0, 10);
G2L["52"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["52"]["Name"] = [[Slider]];

-- StarterGui.ScreenGui.Slider.Slider.Bar
G2L["53"] = Instance.new("Frame", G2L["52"]);
G2L["53"]["ZIndex"] = 3;
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["53"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["53"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["53"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["53"]["Name"] = [[Bar]];

-- StarterGui.ScreenGui.Slider.Slider.Bar.GlowEffect
G2L["54"] = Instance.new("Frame", G2L["53"]);
G2L["54"]["ZIndex"] = 4;
G2L["54"]["BorderSizePixel"] = 0;
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(255, 129, 64);
G2L["54"]["Size"] = UDim2.new(1, 6, 1, 6);
G2L["54"]["Position"] = UDim2.new(0, -3, 0, -3);
G2L["54"]["Name"] = [[GlowEffect]];
G2L["54"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Slider.Slider.Bar.GlowEffect.Gradient
G2L["55"] = Instance.new("UIGradient", G2L["54"]);
G2L["55"]["Rotation"] = 90;
G2L["55"]["Name"] = [[Gradient]];
G2L["55"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.932, Color3.fromRGB(62, 62, 62)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

-- StarterGui.ScreenGui.Slider.Slider.Bar.Gradient
G2L["56"] = Instance.new("UIGradient", G2L["53"]);
G2L["56"]["Rotation"] = 90;
G2L["56"]["Name"] = [[Gradient]];
G2L["56"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.932, Color3.fromRGB(62, 62, 62)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

-- StarterGui.ScreenGui.Slider.Slider.Gradient
G2L["57"] = Instance.new("UIGradient", G2L["52"]);
G2L["57"]["Rotation"] = 90;
G2L["57"]["Name"] = [[Gradient]];
G2L["57"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.932, Color3.fromRGB(62, 62, 62)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

-- StarterGui.ScreenGui.Slider.Value
G2L["58"] = Instance.new("TextBox", G2L["50"]);
G2L["58"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["58"]["PlaceholderColor3"] = Color3.fromRGB(152, 152, 152);
G2L["58"]["ZIndex"] = 3;
G2L["58"]["BorderSizePixel"] = 0;
G2L["58"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["58"]["TextWrapped"] = true;
G2L["58"]["TextSize"] = 15;
G2L["58"]["Name"] = [[Value]];
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["58"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["58"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["58"]["PlaceholderText"] = [[50]];
G2L["58"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["58"]["Position"] = UDim2.new(0, 0, 1, -10);
G2L["58"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["58"]["Text"] = [[]];
G2L["58"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.TabButton
G2L["59"] = Instance.new("TextButton", G2L["1"]);
G2L["59"]["TextWrapped"] = true;
G2L["59"]["TextStrokeTransparency"] = 0.75;
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["AutoButtonColor"] = false;
G2L["59"]["TextSize"] = 15;
G2L["59"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(202, 202, 202);
G2L["59"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["59"]["ZIndex"] = 3;
G2L["59"]["Size"] = UDim2.new(0, 240, 1, 0);
G2L["59"]["Name"] = [[TabButton]];
G2L["59"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["59"]["Text"] = [[]];

-- StarterGui.ScreenGui.TabButton.Title
G2L["5a"] = Instance.new("TextLabel", G2L["59"]);
G2L["5a"]["TextWrapped"] = true;
G2L["5a"]["TextStrokeTransparency"] = 0.75;
G2L["5a"]["ZIndex"] = 3;
G2L["5a"]["BorderSizePixel"] = 0;
G2L["5a"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["5a"]["TextSize"] = 15;
G2L["5a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5a"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["5a"]["BackgroundTransparency"] = 1;
G2L["5a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["5a"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["5a"]["Text"] = [[Tab Button]];
G2L["5a"]["Name"] = [[Title]];
G2L["5a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.ScreenGui.TabButton.Gradient
G2L["5b"] = Instance.new("UIGradient", G2L["59"]);
G2L["5b"]["Rotation"] = 90;
G2L["5b"]["Name"] = [[Gradient]];
G2L["5b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(122, 122, 122))};

-- StarterGui.ScreenGui.TabButton.Underline
G2L["5c"] = Instance.new("Frame", G2L["59"]);
G2L["5c"]["ZIndex"] = 10;
G2L["5c"]["BorderSizePixel"] = 0;
G2L["5c"]["BackgroundColor3"] = Color3.fromRGB(255, 129, 64);
G2L["5c"]["Size"] = UDim2.new(1, 0, 0, 2);
G2L["5c"]["Position"] = UDim2.new(0, 0, 1, -2);
G2L["5c"]["Name"] = [[Underline]];

-- StarterGui.ScreenGui.TabButton.Underline.Gradient
G2L["5d"] = Instance.new("UIGradient", G2L["5c"]);
G2L["5d"]["Rotation"] = 90;
G2L["5d"]["Name"] = [[Gradient]];
G2L["5d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(122, 122, 122))};

-- StarterGui.ScreenGui.TextBox
G2L["5e"] = Instance.new("TextButton", G2L["1"]);
G2L["5e"]["TextStrokeTransparency"] = 0.75;
G2L["5e"]["BorderSizePixel"] = 0;
G2L["5e"]["AutoButtonColor"] = false;
G2L["5e"]["TextSize"] = 15;
G2L["5e"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["5e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5e"]["ZIndex"] = 4;
G2L["5e"]["Size"] = UDim2.new(1, -10, 0, 40);
G2L["5e"]["BackgroundTransparency"] = 1;
G2L["5e"]["Name"] = [[TextBox]];
G2L["5e"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["5e"]["Text"] = [[]];

-- StarterGui.ScreenGui.TextBox.Title
G2L["5f"] = Instance.new("TextLabel", G2L["5e"]);
G2L["5f"]["TextStrokeTransparency"] = 0.75;
G2L["5f"]["ZIndex"] = 3;
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["5f"]["TextSize"] = 15;
G2L["5f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5f"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["5f"]["BackgroundTransparency"] = 1;
G2L["5f"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["5f"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["5f"]["Text"] = [[TextBox]];
G2L["5f"]["Name"] = [[Title]];

-- StarterGui.ScreenGui.TextBox.Background
G2L["60"] = Instance.new("Frame", G2L["5e"]);
G2L["60"]["ZIndex"] = 3;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["60"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["60"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["60"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["Name"] = [[Background]];

-- StarterGui.ScreenGui.TextBox.Background.Input
G2L["61"] = Instance.new("TextBox", G2L["60"]);
G2L["61"]["TextStrokeTransparency"] = 0.75;
G2L["61"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["61"]["PlaceholderColor3"] = Color3.fromRGB(152, 152, 152);
G2L["61"]["ZIndex"] = 4;
G2L["61"]["TextWrapped"] = true;
G2L["61"]["TextSize"] = 15;
G2L["61"]["Name"] = [[Input]];
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["61"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["61"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["61"]["ClearTextOnFocus"] = false;
G2L["61"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["61"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["Text"] = [[]];
G2L["61"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.TextBox.Background.Gradient
G2L["62"] = Instance.new("UIGradient", G2L["60"]);
G2L["62"]["Rotation"] = 90;
G2L["62"]["Name"] = [[Gradient]];
G2L["62"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.Toggle
G2L["63"] = Instance.new("TextButton", G2L["1"]);
G2L["63"]["TextStrokeTransparency"] = 0.75;
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["AutoButtonColor"] = false;
G2L["63"]["TextSize"] = 15;
G2L["63"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["63"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["63"]["ZIndex"] = 3;
G2L["63"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["63"]["BackgroundTransparency"] = 1;
G2L["63"]["Name"] = [[Toggle]];
G2L["63"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["63"]["Text"] = [[]];

-- StarterGui.ScreenGui.Toggle.Toggle
G2L["64"] = Instance.new("Frame", G2L["63"]);
G2L["64"]["ZIndex"] = 3;
G2L["64"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["64"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["64"]["Size"] = UDim2.new(0, 10, 0, 10);
G2L["64"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["64"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["64"]["Name"] = [[Toggle]];

-- StarterGui.ScreenGui.Toggle.Toggle.Gradient
G2L["65"] = Instance.new("UIGradient", G2L["64"]);
G2L["65"]["Rotation"] = 90;
G2L["65"]["Name"] = [[Gradient]];
G2L["65"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(57, 57, 57))};

-- StarterGui.ScreenGui.Toggle.Toggle.GlowEffect
G2L["66"] = Instance.new("Frame", G2L["64"]);
G2L["66"]["ZIndex"] = 4;
G2L["66"]["BorderSizePixel"] = 0;
G2L["66"]["BackgroundColor3"] = Color3.fromRGB(255, 86, 86);
G2L["66"]["Size"] = UDim2.new(1, 4, 1, 4);
G2L["66"]["Position"] = UDim2.new(0, -2, 0, -2);
G2L["66"]["Name"] = [[GlowEffect]];
G2L["66"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Toggle.Toggle.GlowEffect.Gradient
G2L["67"] = Instance.new("UIGradient", G2L["66"]);
G2L["67"]["Rotation"] = 90;
G2L["67"]["Name"] = [[Gradient]];
G2L["67"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(57, 57, 57))};

-- StarterGui.ScreenGui.Toggle.Title
G2L["68"] = Instance.new("TextLabel", G2L["63"]);
G2L["68"]["TextStrokeTransparency"] = 0.75;
G2L["68"]["ZIndex"] = 3;
G2L["68"]["BorderSizePixel"] = 0;
G2L["68"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["68"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["68"]["TextSize"] = 15;
G2L["68"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["68"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["68"]["BackgroundTransparency"] = 1;
G2L["68"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["68"]["Size"] = UDim2.new(1, -66, 1, 0);
G2L["68"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["68"]["Text"] = [[Toggle]];
G2L["68"]["Name"] = [[Title]];
G2L["68"]["Position"] = UDim2.new(0, 15, 0.5, 0);

-- StarterGui.ScreenGui.Toggle.Keybind
G2L["69"] = Instance.new("TextButton", G2L["63"]);
G2L["69"]["TextStrokeTransparency"] = 0.75;
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["69"]["TextSize"] = 15;
G2L["69"]["TextColor3"] = Color3.fromRGB(102, 102, 102);
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["69"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["69"]["ZIndex"] = 3;
G2L["69"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["69"]["Size"] = UDim2.new(0, 51, 1, 0);
G2L["69"]["BackgroundTransparency"] = 1;
G2L["69"]["Name"] = [[Keybind]];
G2L["69"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["69"]["Text"] = [[ NONE ]];
G2L["69"]["Visible"] = false;
G2L["69"]["Position"] = UDim2.new(1, 0, 0.5, 0);

-- StarterGui.ScreenGui.Toggle.ModePopup
G2L["6a"] = Instance.new("Frame", G2L["63"]);
G2L["6a"]["Visible"] = false;
G2L["6a"]["ZIndex"] = 23;
G2L["6a"]["BorderSizePixel"] = 0;
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6a"]["Size"] = UDim2.new(0, 120, 0, 80);
G2L["6a"]["Position"] = UDim2.new(0, 205, 1, 5);
G2L["6a"]["Name"] = [[ModePopup]];

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1
G2L["6b"] = Instance.new("Frame", G2L["6a"]);
G2L["6b"]["ZIndex"] = 24;
G2L["6b"]["BorderSizePixel"] = 0;
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["6b"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["6b"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["6b"]["Name"] = [[BorderFrame1]];

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1.BorderFrame2
G2L["6c"] = Instance.new("Frame", G2L["6b"]);
G2L["6c"]["ZIndex"] = 25;
G2L["6c"]["BorderSizePixel"] = 0;
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["6c"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["6c"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["6c"]["Name"] = [[BorderFrame2]];

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3
G2L["6d"] = Instance.new("Frame", G2L["6c"]);
G2L["6d"]["ZIndex"] = 26;
G2L["6d"]["BorderSizePixel"] = 0;
G2L["6d"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["6d"]["Size"] = UDim2.new(1, -6, 1, -6);
G2L["6d"]["Position"] = UDim2.new(0, 3, 0, 3);
G2L["6d"]["Name"] = [[BorderFrame3]];

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame
G2L["6e"] = Instance.new("Frame", G2L["6d"]);
G2L["6e"]["ZIndex"] = 27;
G2L["6e"]["BorderSizePixel"] = 0;
G2L["6e"]["BackgroundColor3"] = Color3.fromRGB(6, 6, 5);
G2L["6e"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["6e"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["6e"]["Name"] = [[InnerFrame]];

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame
G2L["6f"] = Instance.new("Frame", G2L["6e"]);
G2L["6f"]["ZIndex"] = 28;
G2L["6f"]["BorderSizePixel"] = 0;
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(43, 43, 43);
G2L["6f"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["6f"]["Name"] = [[GradientFrame]];

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ShadowLine
G2L["70"] = Instance.new("Frame", G2L["6e"]);
G2L["70"]["ZIndex"] = 28;
G2L["70"]["BorderSizePixel"] = 0;
G2L["70"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["70"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["70"]["Position"] = UDim2.new(0, 0, 0, 1);
G2L["70"]["Name"] = [[ShadowLine]];
G2L["70"]["BackgroundTransparency"] = 0.2;

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.Title
G2L["71"] = Instance.new("TextLabel", G2L["6e"]);
G2L["71"]["ZIndex"] = 28;
G2L["71"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["71"]["TextSize"] = 14;
G2L["71"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["71"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["71"]["BackgroundTransparency"] = 1;
G2L["71"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["71"]["Text"] = [[Keybind Mode]];
G2L["71"]["Name"] = [[Title]];
G2L["71"]["Position"] = UDim2.new(0, 5, 0, 5);

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ToggleMode
G2L["72"] = Instance.new("TextButton", G2L["6e"]);
G2L["72"]["BorderSizePixel"] = 0;
G2L["72"]["TextSize"] = 14;
G2L["72"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["72"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["72"]["ZIndex"] = 28;
G2L["72"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["72"]["BackgroundTransparency"] = 1;
G2L["72"]["Name"] = [[ToggleMode]];
G2L["72"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["72"]["Text"] = [[Toggle]];
G2L["72"]["Position"] = UDim2.new(0, 5, 0, 25);

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.HoldMode
G2L["73"] = Instance.new("TextButton", G2L["6e"]);
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["TextSize"] = 14;
G2L["73"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["73"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["73"]["ZIndex"] = 28;
G2L["73"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["73"]["BackgroundTransparency"] = 1;
G2L["73"]["Name"] = [[HoldMode]];
G2L["73"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["73"]["Text"] = [[Hold]];
G2L["73"]["Position"] = UDim2.new(0, 5, 0, 40);

-- StarterGui.ScreenGui.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.RemoveKeybind
G2L["74"] = Instance.new("TextButton", G2L["6e"]);
G2L["74"]["BorderSizePixel"] = 0;
G2L["74"]["TextSize"] = 14;
G2L["74"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["74"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["74"]["ZIndex"] = 28;
G2L["74"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["74"]["BackgroundTransparency"] = 1;
G2L["74"]["Name"] = [[RemoveKeybind]];
G2L["74"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["74"]["Text"] = [[Remove]];
G2L["74"]["Position"] = UDim2.new(0, 5, 0, 55);

-- StarterGui.ScreenGui.Toggle.InfoIndicator
G2L["75"] = Instance.new("TextButton", G2L["63"]);
G2L["75"]["BorderSizePixel"] = 0;
G2L["75"]["TextSize"] = 15;
G2L["75"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["75"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 61);
G2L["75"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["75"]["ZIndex"] = 4;
G2L["75"]["Size"] = UDim2.new(0, 14, 0, 14);
G2L["75"]["BackgroundTransparency"] = 0.3;
G2L["75"]["Name"] = [[InfoIndicator]];
G2L["75"]["Text"] = [[?]];
G2L["75"]["Position"] = UDim2.new(1, -19, 0.5, -7);

-- StarterGui.ScreenGui.Toggle.InfoIndicator.UICorner
G2L["76"] = Instance.new("UICorner", G2L["75"]);
G2L["76"]["CornerRadius"] = UDim.new(0.5, 0);

-- StarterGui.ScreenGui.Toggle.StatusIndicator
G2L["77"] = Instance.new("TextLabel", G2L["63"]);
G2L["77"]["ZIndex"] = 4;
G2L["77"]["TextTransparency"] = 0.3;
G2L["77"]["TextSize"] = 15;
G2L["77"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["77"]["TextColor3"] = Color3.fromRGB(255, 86, 86);
G2L["77"]["BackgroundTransparency"] = 1;
G2L["77"]["Size"] = UDim2.new(0, 16, 1, 0);
G2L["77"]["Text"] = [[(!)]];
G2L["77"]["Name"] = [[StatusIndicator]];
G2L["77"]["Position"] = UDim2.new(1, -40, 0, 0);

-- StarterGui.ScreenGui.ToggleWColorpicker
G2L["78"] = Instance.new("TextButton", G2L["1"]);
G2L["78"]["TextStrokeTransparency"] = 0.75;
G2L["78"]["BorderSizePixel"] = 0;
G2L["78"]["AutoButtonColor"] = false;
G2L["78"]["TextSize"] = 15;
G2L["78"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["78"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["78"]["ZIndex"] = 3;
G2L["78"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["78"]["BackgroundTransparency"] = 1;
G2L["78"]["Name"] = [[ToggleWColorpicker]];
G2L["78"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["78"]["Text"] = [[]];

-- StarterGui.ScreenGui.ToggleWColorpicker.Toggle
G2L["79"] = Instance.new("Frame", G2L["78"]);
G2L["79"]["ZIndex"] = 3;
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["79"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["79"]["Size"] = UDim2.new(0, 10, 0, 10);
G2L["79"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["79"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["79"]["Name"] = [[Toggle]];

-- StarterGui.ScreenGui.ToggleWColorpicker.Toggle.Gradient
G2L["7a"] = Instance.new("UIGradient", G2L["79"]);
G2L["7a"]["Rotation"] = 90;
G2L["7a"]["Name"] = [[Gradient]];
G2L["7a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.ToggleWColorpicker.Title
G2L["7b"] = Instance.new("TextLabel", G2L["78"]);
G2L["7b"]["TextStrokeTransparency"] = 0.75;
G2L["7b"]["ZIndex"] = 3;
G2L["7b"]["BorderSizePixel"] = 0;
G2L["7b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7b"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["7b"]["TextSize"] = 15;
G2L["7b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7b"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["7b"]["BackgroundTransparency"] = 1;
G2L["7b"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["7b"]["Size"] = UDim2.new(1, -66, 1, 0);
G2L["7b"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["7b"]["Text"] = [[Toggle]];
G2L["7b"]["Name"] = [[Title]];
G2L["7b"]["Position"] = UDim2.new(0, 15, 0.5, 0);

-- StarterGui.ScreenGui.ToggleWColorpicker.Keybind
G2L["7c"] = Instance.new("TextButton", G2L["78"]);
G2L["7c"]["TextStrokeTransparency"] = 0.75;
G2L["7c"]["BorderSizePixel"] = 0;
G2L["7c"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["7c"]["TextSize"] = 15;
G2L["7c"]["TextColor3"] = Color3.fromRGB(102, 102, 102);
G2L["7c"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["7c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7c"]["ZIndex"] = 3;
G2L["7c"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["7c"]["Size"] = UDim2.new(0, 51, 1, 0);
G2L["7c"]["BackgroundTransparency"] = 1;
G2L["7c"]["Name"] = [[Keybind]];
G2L["7c"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["7c"]["Text"] = [[ NONE ]];
G2L["7c"]["Visible"] = false;
G2L["7c"]["Position"] = UDim2.new(1, 0, 0.5, 0);

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup
G2L["7d"] = Instance.new("Frame", G2L["78"]);
G2L["7d"]["Visible"] = false;
G2L["7d"]["ZIndex"] = 23;
G2L["7d"]["BorderSizePixel"] = 0;
G2L["7d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7d"]["Size"] = UDim2.new(0, 120, 0, 80);
G2L["7d"]["Position"] = UDim2.new(0, 205, 1, 5);
G2L["7d"]["Name"] = [[ModePopup]];

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1
G2L["7e"] = Instance.new("Frame", G2L["7d"]);
G2L["7e"]["ZIndex"] = 24;
G2L["7e"]["BorderSizePixel"] = 0;
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["7e"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["7e"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["7e"]["Name"] = [[BorderFrame1]];

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2
G2L["7f"] = Instance.new("Frame", G2L["7e"]);
G2L["7f"]["ZIndex"] = 25;
G2L["7f"]["BorderSizePixel"] = 0;
G2L["7f"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["7f"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["7f"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["7f"]["Name"] = [[BorderFrame2]];

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3
G2L["80"] = Instance.new("Frame", G2L["7f"]);
G2L["80"]["ZIndex"] = 26;
G2L["80"]["BorderSizePixel"] = 0;
G2L["80"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["80"]["Size"] = UDim2.new(1, -6, 1, -6);
G2L["80"]["Position"] = UDim2.new(0, 3, 0, 3);
G2L["80"]["Name"] = [[BorderFrame3]];

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame
G2L["81"] = Instance.new("Frame", G2L["80"]);
G2L["81"]["ZIndex"] = 27;
G2L["81"]["BorderSizePixel"] = 0;
G2L["81"]["BackgroundColor3"] = Color3.fromRGB(6, 6, 5);
G2L["81"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["81"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["81"]["Name"] = [[InnerFrame]];

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame
G2L["82"] = Instance.new("Frame", G2L["81"]);
G2L["82"]["ZIndex"] = 28;
G2L["82"]["BorderSizePixel"] = 0;
G2L["82"]["BackgroundColor3"] = Color3.fromRGB(101, 151, 201);
G2L["82"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["82"]["Name"] = [[GradientFrame]];

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ShadowLine
G2L["83"] = Instance.new("Frame", G2L["81"]);
G2L["83"]["ZIndex"] = 28;
G2L["83"]["BorderSizePixel"] = 0;
G2L["83"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["83"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["83"]["Position"] = UDim2.new(0, 0, 0, 1);
G2L["83"]["Name"] = [[ShadowLine]];
G2L["83"]["BackgroundTransparency"] = 0.2;

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.Title
G2L["84"] = Instance.new("TextLabel", G2L["81"]);
G2L["84"]["ZIndex"] = 28;
G2L["84"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["84"]["TextSize"] = 14;
G2L["84"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["84"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["84"]["BackgroundTransparency"] = 1;
G2L["84"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["84"]["Text"] = [[Keybind Mode]];
G2L["84"]["Name"] = [[Title]];
G2L["84"]["Position"] = UDim2.new(0, 5, 0, 5);

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ToggleMode
G2L["85"] = Instance.new("TextButton", G2L["81"]);
G2L["85"]["BorderSizePixel"] = 0;
G2L["85"]["TextSize"] = 14;
G2L["85"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["85"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["85"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["85"]["ZIndex"] = 28;
G2L["85"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["85"]["BackgroundTransparency"] = 1;
G2L["85"]["Name"] = [[ToggleMode]];
G2L["85"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["85"]["Text"] = [[Toggle]];
G2L["85"]["Position"] = UDim2.new(0, 5, 0, 25);

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.HoldMode
G2L["86"] = Instance.new("TextButton", G2L["81"]);
G2L["86"]["BorderSizePixel"] = 0;
G2L["86"]["TextSize"] = 14;
G2L["86"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["86"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["86"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["86"]["ZIndex"] = 28;
G2L["86"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["86"]["BackgroundTransparency"] = 1;
G2L["86"]["Name"] = [[HoldMode]];
G2L["86"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["86"]["Text"] = [[Hold]];
G2L["86"]["Position"] = UDim2.new(0, 5, 0, 40);

-- StarterGui.ScreenGui.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.RemoveKeybind
G2L["87"] = Instance.new("TextButton", G2L["81"]);
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["TextSize"] = 14;
G2L["87"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["87"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["87"]["ZIndex"] = 28;
G2L["87"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["87"]["BackgroundTransparency"] = 1;
G2L["87"]["Name"] = [[RemoveKeybind]];
G2L["87"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["87"]["Text"] = [[Remove]];
G2L["87"]["Position"] = UDim2.new(0, 5, 0, 55);

-- StarterGui.ScreenGui.ToggleWColorpicker.Color
G2L["88"] = Instance.new("Frame", G2L["78"]);
G2L["88"]["ZIndex"] = 3;
G2L["88"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["88"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["88"]["Size"] = UDim2.new(0, 20, 0, 10);
G2L["88"]["Position"] = UDim2.new(1, 0, 0.5, 0);
G2L["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["88"]["Name"] = [[Color]];

-- StarterGui.ScreenGui.ToggleWColorpicker.Color.Gradient
G2L["89"] = Instance.new("UIGradient", G2L["88"]);
G2L["89"]["Rotation"] = 90;
G2L["89"]["Name"] = [[Gradient]];
G2L["89"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- StarterGui.ScreenGui.ToggleWColorpicker.StatusIndicator
G2L["8a"] = Instance.new("TextLabel", G2L["78"]);
G2L["8a"]["ZIndex"] = 4;
G2L["8a"]["TextTransparency"] = 0.3;
G2L["8a"]["TextSize"] = 15;
G2L["8a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8a"]["TextColor3"] = Color3.fromRGB(255, 86, 86);
G2L["8a"]["BackgroundTransparency"] = 1;
G2L["8a"]["Size"] = UDim2.new(0, 16, 1, 0);
G2L["8a"]["Text"] = [[(!)]];
G2L["8a"]["Name"] = [[StatusIndicator]];
G2L["8a"]["Position"] = UDim2.new(1, -40, 0, 0);

-- StarterGui.ScreenGui.ToggleWColorpicker.InfoIndicator
G2L["8b"] = Instance.new("TextButton", G2L["78"]);
G2L["8b"]["BorderSizePixel"] = 0;
G2L["8b"]["TextSize"] = 15;
G2L["8b"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["8b"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 61);
G2L["8b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["8b"]["ZIndex"] = 4;
G2L["8b"]["Size"] = UDim2.new(0, 14, 0, 14);
G2L["8b"]["BackgroundTransparency"] = 0.3;
G2L["8b"]["Name"] = [[InfoIndicator]];
G2L["8b"]["Text"] = [[?]];
G2L["8b"]["Position"] = UDim2.new(1, -19, 0.5, -7);

-- StarterGui.ScreenGui.ToggleWColorpicker.InfoIndicator.UICorner
G2L["8c"] = Instance.new("UICorner", G2L["8b"]);
G2L["8c"]["CornerRadius"] = UDim.new(0.5, 0);

-- StarterGui.ScreenGui.Label
G2L["8d"] = Instance.new("TextLabel", G2L["1"]);
G2L["8d"]["TextStrokeTransparency"] = 0.75;
G2L["8d"]["ZIndex"] = 3;
G2L["8d"]["BorderSizePixel"] = 0;
G2L["8d"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["8d"]["TextSize"] = 15;
G2L["8d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8d"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["8d"]["BackgroundTransparency"] = 1;
G2L["8d"]["Size"] = UDim2.new(1, -10, 0, 15);
G2L["8d"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["8d"]["Text"] = [[Text Label]];
G2L["8d"]["Name"] = [[Label]];


return G2L["1"], require;
