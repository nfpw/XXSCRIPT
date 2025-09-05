--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 128 | Scripts: 0 | Modules: 0
local G2L = {};

-- ReplicatedStorage.Folder
G2L["1"] = Instance.new("Folder");
G2L["1"]["Name"] = [[Bracket]];

-- ReplicatedStorage.Folder.Label
G2L["2"] = Instance.new("TextLabel", G2L["1"]);
G2L["2"]["TextStrokeTransparency"] = 0.75;
G2L["2"]["ZIndex"] = 3;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2"]["TextSize"] = 15;
G2L["2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["2"]["BackgroundTransparency"] = 1;
G2L["2"]["Size"] = UDim2.new(1, -10, 0, 15);
G2L["2"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2"]["Text"] = [[Text Label]];
G2L["2"]["Name"] = [[Label]];

-- ReplicatedStorage.Folder.ToggleWColorpicker
G2L["3"] = Instance.new("TextButton", G2L["1"]);
G2L["3"]["TextStrokeTransparency"] = 0.75;
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["AutoButtonColor"] = false;
G2L["3"]["TextSize"] = 15;
G2L["3"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3"]["ZIndex"] = 3;
G2L["3"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["3"]["BackgroundTransparency"] = 1;
G2L["3"]["Name"] = [[ToggleWColorpicker]];
G2L["3"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3"]["Text"] = [[]];

-- ReplicatedStorage.Folder.ToggleWColorpicker.Toggle
G2L["4"] = Instance.new("Frame", G2L["3"]);
G2L["4"]["ZIndex"] = 3;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["4"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["4"]["Size"] = UDim2.new(0, 10, 0, 10);
G2L["4"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Name"] = [[Toggle]];

-- ReplicatedStorage.Folder.ToggleWColorpicker.Toggle.Gradient
G2L["5"] = Instance.new("UIGradient", G2L["4"]);
G2L["5"]["Rotation"] = 90;
G2L["5"]["Name"] = [[Gradient]];
G2L["5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Folder.ToggleWColorpicker.Title
G2L["6"] = Instance.new("TextLabel", G2L["3"]);
G2L["6"]["TextStrokeTransparency"] = 0.75;
G2L["6"]["ZIndex"] = 3;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6"]["TextSize"] = 15;
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["6"]["Size"] = UDim2.new(1, -66, 1, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6"]["Text"] = [[Toggle]];
G2L["6"]["Name"] = [[Title]];
G2L["6"]["Position"] = UDim2.new(0, 15, 0.5, 0);

-- ReplicatedStorage.Folder.ToggleWColorpicker.Keybind
G2L["7"] = Instance.new("TextButton", G2L["3"]);
G2L["7"]["TextStrokeTransparency"] = 0.75;
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["7"]["TextSize"] = 15;
G2L["7"]["TextColor3"] = Color3.fromRGB(102, 102, 102);
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7"]["ZIndex"] = 3;
G2L["7"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["7"]["Size"] = UDim2.new(0, 51, 1, 0);
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["Name"] = [[Keybind]];
G2L["7"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["7"]["Text"] = [[ NONE ]];
G2L["7"]["Visible"] = false;
G2L["7"]["Position"] = UDim2.new(1, 0, 0.5, 0);

-- ReplicatedStorage.Folder.ToggleWColorpicker.ModePopup
G2L["8"] = Instance.new("Frame", G2L["3"]);
G2L["8"]["Visible"] = false;
G2L["8"]["ZIndex"] = 23;
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Size"] = UDim2.new(0, 120, 0, 80);
G2L["8"]["Position"] = UDim2.new(0, 205, 1, 5);
G2L["8"]["Name"] = [[ModePopup]];

-- ReplicatedStorage.Folder.ToggleWColorpicker.ModePopup.BorderFrame1
G2L["9"] = Instance.new("Frame", G2L["8"]);
G2L["9"]["ZIndex"] = 24;
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["9"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["9"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["9"]["Name"] = [[BorderFrame1]];

-- ReplicatedStorage.Folder.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2
G2L["a"] = Instance.new("Frame", G2L["9"]);
G2L["a"]["ZIndex"] = 25;
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["a"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["a"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["a"]["Name"] = [[BorderFrame2]];

-- ReplicatedStorage.Folder.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3
G2L["b"] = Instance.new("Frame", G2L["a"]);
G2L["b"]["ZIndex"] = 26;
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["b"]["Size"] = UDim2.new(1, -6, 1, -6);
G2L["b"]["Position"] = UDim2.new(0, 3, 0, 3);
G2L["b"]["Name"] = [[BorderFrame3]];

-- ReplicatedStorage.Folder.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame
G2L["c"] = Instance.new("Frame", G2L["b"]);
G2L["c"]["ZIndex"] = 27;
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(6, 6, 5);
G2L["c"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["c"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["c"]["Name"] = [[InnerFrame]];

-- ReplicatedStorage.Folder.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame
G2L["d"] = Instance.new("Frame", G2L["c"]);
G2L["d"]["ZIndex"] = 28;
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(101, 151, 201);
G2L["d"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["d"]["Name"] = [[GradientFrame]];

-- ReplicatedStorage.Folder.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame.UIGradient
G2L["e"] = Instance.new("UIGradient", G2L["d"]);
G2L["e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 151, 201)),ColorSequenceKeypoint.new(0.173, Color3.fromRGB(156, 116, 173)),ColorSequenceKeypoint.new(0.250, Color3.fromRGB(181, 101, 161)),ColorSequenceKeypoint.new(0.351, Color3.fromRGB(181, 127, 148)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(181, 231, 101)),ColorSequenceKeypoint.new(0.793, Color3.fromRGB(181, 208, 111)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 101, 161))};

-- ReplicatedStorage.Folder.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ShadowLine
G2L["f"] = Instance.new("Frame", G2L["c"]);
G2L["f"]["ZIndex"] = 28;
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["f"]["Position"] = UDim2.new(0, 0, 0, 1);
G2L["f"]["Name"] = [[ShadowLine]];
G2L["f"]["BackgroundTransparency"] = 0.2;

-- ReplicatedStorage.Folder.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.Title
G2L["10"] = Instance.new("TextLabel", G2L["c"]);
G2L["10"]["ZIndex"] = 28;
G2L["10"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["10"]["TextSize"] = 14;
G2L["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["BackgroundTransparency"] = 1;
G2L["10"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["10"]["Text"] = [[Keybind Mode]];
G2L["10"]["Name"] = [[Title]];
G2L["10"]["Position"] = UDim2.new(0, 5, 0, 5);

-- ReplicatedStorage.Folder.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ToggleMode
G2L["11"] = Instance.new("TextButton", G2L["c"]);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["TextSize"] = 14;
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11"]["ZIndex"] = 28;
G2L["11"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Name"] = [[ToggleMode]];
G2L["11"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["11"]["Text"] = [[Toggle]];
G2L["11"]["Position"] = UDim2.new(0, 5, 0, 25);

-- ReplicatedStorage.Folder.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.HoldMode
G2L["12"] = Instance.new("TextButton", G2L["c"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["TextSize"] = 14;
G2L["12"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12"]["ZIndex"] = 28;
G2L["12"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["12"]["BackgroundTransparency"] = 1;
G2L["12"]["Name"] = [[HoldMode]];
G2L["12"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["12"]["Text"] = [[Hold]];
G2L["12"]["Position"] = UDim2.new(0, 5, 0, 40);

-- ReplicatedStorage.Folder.ToggleWColorpicker.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.RemoveKeybind
G2L["13"] = Instance.new("TextButton", G2L["c"]);
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["TextSize"] = 14;
G2L["13"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["13"]["ZIndex"] = 28;
G2L["13"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["13"]["BackgroundTransparency"] = 1;
G2L["13"]["Name"] = [[RemoveKeybind]];
G2L["13"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["13"]["Text"] = [[Remove]];
G2L["13"]["Position"] = UDim2.new(0, 5, 0, 55);

-- ReplicatedStorage.Folder.ToggleWColorpicker.Color
G2L["14"] = Instance.new("Frame", G2L["3"]);
G2L["14"]["ZIndex"] = 3;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["14"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["14"]["Size"] = UDim2.new(0, 20, 0, 10);
G2L["14"]["Position"] = UDim2.new(1, 0, 0.5, 0);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Name"] = [[Color]];

-- ReplicatedStorage.Folder.ToggleWColorpicker.Color.Gradient
G2L["15"] = Instance.new("UIGradient", G2L["14"]);
G2L["15"]["Rotation"] = 90;
G2L["15"]["Name"] = [[Gradient]];
G2L["15"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Folder.Toggle
G2L["16"] = Instance.new("TextButton", G2L["1"]);
G2L["16"]["TextStrokeTransparency"] = 0.75;
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["AutoButtonColor"] = false;
G2L["16"]["TextSize"] = 15;
G2L["16"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["16"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["16"]["ZIndex"] = 3;
G2L["16"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["16"]["BackgroundTransparency"] = 1;
G2L["16"]["Name"] = [[Toggle]];
G2L["16"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["16"]["Text"] = [[]];

-- ReplicatedStorage.Folder.Toggle.Toggle
G2L["17"] = Instance.new("Frame", G2L["16"]);
G2L["17"]["ZIndex"] = 3;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["17"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["17"]["Size"] = UDim2.new(0, 10, 0, 10);
G2L["17"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Name"] = [[Toggle]];

-- ReplicatedStorage.Folder.Toggle.Toggle.Gradient
G2L["18"] = Instance.new("UIGradient", G2L["17"]);
G2L["18"]["Rotation"] = 90;
G2L["18"]["Name"] = [[Gradient]];
G2L["18"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Folder.Toggle.Title
G2L["19"] = Instance.new("TextLabel", G2L["16"]);
G2L["19"]["TextStrokeTransparency"] = 0.75;
G2L["19"]["ZIndex"] = 3;
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["19"]["TextSize"] = 15;
G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["19"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["19"]["BackgroundTransparency"] = 1;
G2L["19"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["19"]["Size"] = UDim2.new(1, -66, 1, 0);
G2L["19"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["19"]["Text"] = [[Toggle]];
G2L["19"]["Name"] = [[Title]];
G2L["19"]["Position"] = UDim2.new(0, 15, 0.5, 0);

-- ReplicatedStorage.Folder.Toggle.Keybind
G2L["1a"] = Instance.new("TextButton", G2L["16"]);
G2L["1a"]["TextStrokeTransparency"] = 0.75;
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["1a"]["TextSize"] = 15;
G2L["1a"]["TextColor3"] = Color3.fromRGB(102, 102, 102);
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a"]["ZIndex"] = 3;
G2L["1a"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["1a"]["Size"] = UDim2.new(0, 51, 1, 0);
G2L["1a"]["BackgroundTransparency"] = 1;
G2L["1a"]["Name"] = [[Keybind]];
G2L["1a"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["1a"]["Text"] = [[ NONE ]];
G2L["1a"]["Visible"] = false;
G2L["1a"]["Position"] = UDim2.new(1, 0, 0.5, 0);

-- ReplicatedStorage.Folder.Toggle.ModePopup
G2L["1b"] = Instance.new("Frame", G2L["16"]);
G2L["1b"]["Visible"] = false;
G2L["1b"]["ZIndex"] = 23;
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Size"] = UDim2.new(0, 120, 0, 80);
G2L["1b"]["Position"] = UDim2.new(0, 205, 1, 5);
G2L["1b"]["Name"] = [[ModePopup]];

-- ReplicatedStorage.Folder.Toggle.ModePopup.BorderFrame1
G2L["1c"] = Instance.new("Frame", G2L["1b"]);
G2L["1c"]["ZIndex"] = 24;
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["1c"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["1c"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["1c"]["Name"] = [[BorderFrame1]];

-- ReplicatedStorage.Folder.Toggle.ModePopup.BorderFrame1.BorderFrame2
G2L["1d"] = Instance.new("Frame", G2L["1c"]);
G2L["1d"]["ZIndex"] = 25;
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["1d"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["1d"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["1d"]["Name"] = [[BorderFrame2]];

-- ReplicatedStorage.Folder.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3
G2L["1e"] = Instance.new("Frame", G2L["1d"]);
G2L["1e"]["ZIndex"] = 26;
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["1e"]["Size"] = UDim2.new(1, -6, 1, -6);
G2L["1e"]["Position"] = UDim2.new(0, 3, 0, 3);
G2L["1e"]["Name"] = [[BorderFrame3]];

-- ReplicatedStorage.Folder.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame
G2L["1f"] = Instance.new("Frame", G2L["1e"]);
G2L["1f"]["ZIndex"] = 27;
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(6, 6, 5);
G2L["1f"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["1f"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["1f"]["Name"] = [[InnerFrame]];

-- ReplicatedStorage.Folder.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame
G2L["20"] = Instance.new("Frame", G2L["1f"]);
G2L["20"]["ZIndex"] = 28;
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(101, 151, 201);
G2L["20"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["20"]["Name"] = [[GradientFrame]];

-- ReplicatedStorage.Folder.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame.UIGradient
G2L["21"] = Instance.new("UIGradient", G2L["20"]);
G2L["21"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 151, 201)),ColorSequenceKeypoint.new(0.173, Color3.fromRGB(156, 116, 173)),ColorSequenceKeypoint.new(0.250, Color3.fromRGB(181, 101, 161)),ColorSequenceKeypoint.new(0.351, Color3.fromRGB(181, 127, 148)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(181, 231, 101)),ColorSequenceKeypoint.new(0.793, Color3.fromRGB(181, 208, 111)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 101, 161))};

-- ReplicatedStorage.Folder.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ShadowLine
G2L["22"] = Instance.new("Frame", G2L["1f"]);
G2L["22"]["ZIndex"] = 28;
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["22"]["Position"] = UDim2.new(0, 0, 0, 1);
G2L["22"]["Name"] = [[ShadowLine]];
G2L["22"]["BackgroundTransparency"] = 0.2;

-- ReplicatedStorage.Folder.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.Title
G2L["23"] = Instance.new("TextLabel", G2L["1f"]);
G2L["23"]["ZIndex"] = 28;
G2L["23"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["23"]["TextSize"] = 14;
G2L["23"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["23"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["BackgroundTransparency"] = 1;
G2L["23"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["23"]["Text"] = [[Keybind Mode]];
G2L["23"]["Name"] = [[Title]];
G2L["23"]["Position"] = UDim2.new(0, 5, 0, 5);

-- ReplicatedStorage.Folder.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ToggleMode
G2L["24"] = Instance.new("TextButton", G2L["1f"]);
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["TextSize"] = 14;
G2L["24"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["24"]["ZIndex"] = 28;
G2L["24"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["24"]["BackgroundTransparency"] = 1;
G2L["24"]["Name"] = [[ToggleMode]];
G2L["24"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["24"]["Text"] = [[Toggle]];
G2L["24"]["Position"] = UDim2.new(0, 5, 0, 25);

-- ReplicatedStorage.Folder.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.HoldMode
G2L["25"] = Instance.new("TextButton", G2L["1f"]);
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["TextSize"] = 14;
G2L["25"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["25"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["25"]["ZIndex"] = 28;
G2L["25"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["25"]["BackgroundTransparency"] = 1;
G2L["25"]["Name"] = [[HoldMode]];
G2L["25"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["25"]["Text"] = [[Hold]];
G2L["25"]["Position"] = UDim2.new(0, 5, 0, 40);

-- ReplicatedStorage.Folder.Toggle.ModePopup.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.RemoveKeybind
G2L["26"] = Instance.new("TextButton", G2L["1f"]);
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["TextSize"] = 14;
G2L["26"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["26"]["ZIndex"] = 28;
G2L["26"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["26"]["BackgroundTransparency"] = 1;
G2L["26"]["Name"] = [[RemoveKeybind]];
G2L["26"]["BorderColor3"] = Color3.fromRGB(255, 129, 65);
G2L["26"]["Text"] = [[Remove]];
G2L["26"]["Position"] = UDim2.new(0, 5, 0, 55);

-- ReplicatedStorage.Folder.TextBox
G2L["27"] = Instance.new("TextButton", G2L["1"]);
G2L["27"]["TextStrokeTransparency"] = 0.75;
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["AutoButtonColor"] = false;
G2L["27"]["TextSize"] = 15;
G2L["27"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["27"]["ZIndex"] = 4;
G2L["27"]["Size"] = UDim2.new(1, -10, 0, 40);
G2L["27"]["BackgroundTransparency"] = 1;
G2L["27"]["Name"] = [[TextBox]];
G2L["27"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["27"]["Text"] = [[]];

-- ReplicatedStorage.Folder.TextBox.Title
G2L["28"] = Instance.new("TextLabel", G2L["27"]);
G2L["28"]["TextStrokeTransparency"] = 0.75;
G2L["28"]["ZIndex"] = 3;
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["28"]["TextSize"] = 15;
G2L["28"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["28"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["28"]["BackgroundTransparency"] = 1;
G2L["28"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["28"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["28"]["Text"] = [[TextBox]];
G2L["28"]["Name"] = [[Title]];

-- ReplicatedStorage.Folder.TextBox.Background
G2L["29"] = Instance.new("Frame", G2L["27"]);
G2L["29"]["ZIndex"] = 3;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["29"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["29"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["29"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Name"] = [[Background]];

-- ReplicatedStorage.Folder.TextBox.Background.Input
G2L["2a"] = Instance.new("TextBox", G2L["29"]);
G2L["2a"]["TextStrokeTransparency"] = 0.75;
G2L["2a"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["2a"]["PlaceholderColor3"] = Color3.fromRGB(152, 152, 152);
G2L["2a"]["ZIndex"] = 4;
G2L["2a"]["TextWrapped"] = true;
G2L["2a"]["TextSize"] = 15;
G2L["2a"]["Name"] = [[Input]];
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["2a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2a"]["ClearTextOnFocus"] = false;
G2L["2a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["Text"] = [[]];
G2L["2a"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Folder.TextBox.Background.Gradient
G2L["2b"] = Instance.new("UIGradient", G2L["29"]);
G2L["2b"]["Rotation"] = 90;
G2L["2b"]["Name"] = [[Gradient]];
G2L["2b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Folder.TabButton
G2L["2c"] = Instance.new("TextButton", G2L["1"]);
G2L["2c"]["TextWrapped"] = true;
G2L["2c"]["TextStrokeTransparency"] = 0.75;
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["AutoButtonColor"] = false;
G2L["2c"]["TextSize"] = 15;
G2L["2c"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(202, 202, 202);
G2L["2c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2c"]["ZIndex"] = 3;
G2L["2c"]["Size"] = UDim2.new(0, 240, 1, 0);
G2L["2c"]["Name"] = [[TabButton]];
G2L["2c"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2c"]["Text"] = [[]];

-- ReplicatedStorage.Folder.TabButton.Title
G2L["2d"] = Instance.new("TextLabel", G2L["2c"]);
G2L["2d"]["TextWrapped"] = true;
G2L["2d"]["TextStrokeTransparency"] = 0.75;
G2L["2d"]["ZIndex"] = 3;
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2d"]["TextSize"] = 15;
G2L["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2d"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["2d"]["BackgroundTransparency"] = 1;
G2L["2d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2d"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2d"]["Text"] = [[Tab Button]];
G2L["2d"]["Name"] = [[Title]];
G2L["2d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- ReplicatedStorage.Folder.TabButton.Gradient
G2L["2e"] = Instance.new("UIGradient", G2L["2c"]);
G2L["2e"]["Rotation"] = 90;
G2L["2e"]["Name"] = [[Gradient]];
G2L["2e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Folder.Slider
G2L["2f"] = Instance.new("TextButton", G2L["1"]);
G2L["2f"]["TextStrokeTransparency"] = 0.75;
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["AutoButtonColor"] = false;
G2L["2f"]["TextSize"] = 15;
G2L["2f"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2f"]["ZIndex"] = 4;
G2L["2f"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["2f"]["BackgroundTransparency"] = 1;
G2L["2f"]["Name"] = [[Slider]];
G2L["2f"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2f"]["Text"] = [[]];

-- ReplicatedStorage.Folder.Slider.Title
G2L["30"] = Instance.new("TextLabel", G2L["2f"]);
G2L["30"]["TextStrokeTransparency"] = 0.75;
G2L["30"]["ZIndex"] = 3;
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["30"]["TextSize"] = 15;
G2L["30"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["30"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["30"]["BackgroundTransparency"] = 1;
G2L["30"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["30"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["30"]["Text"] = [[Slider]];
G2L["30"]["Name"] = [[Title]];

-- ReplicatedStorage.Folder.Slider.Slider
G2L["31"] = Instance.new("Frame", G2L["2f"]);
G2L["31"]["ZIndex"] = 3;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["31"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["31"]["Size"] = UDim2.new(1, 0, 0, 10);
G2L["31"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Name"] = [[Slider]];

-- ReplicatedStorage.Folder.Slider.Slider.Bar
G2L["32"] = Instance.new("Frame", G2L["31"]);
G2L["32"]["ZIndex"] = 3;
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["32"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["32"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["32"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["32"]["Name"] = [[Bar]];

-- ReplicatedStorage.Folder.Slider.Slider.Bar.Gradient
G2L["33"] = Instance.new("UIGradient", G2L["32"]);
G2L["33"]["Rotation"] = 90;
G2L["33"]["Name"] = [[Gradient]];
G2L["33"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Folder.Slider.Slider.Gradient
G2L["34"] = Instance.new("UIGradient", G2L["31"]);
G2L["34"]["Rotation"] = 90;
G2L["34"]["Name"] = [[Gradient]];
G2L["34"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Folder.Slider.Value
G2L["35"] = Instance.new("TextBox", G2L["2f"]);
G2L["35"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["35"]["PlaceholderColor3"] = Color3.fromRGB(152, 152, 152);
G2L["35"]["ZIndex"] = 3;
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["35"]["TextWrapped"] = true;
G2L["35"]["TextSize"] = 15;
G2L["35"]["Name"] = [[Value]];
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["35"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["35"]["PlaceholderText"] = [[50]];
G2L["35"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["35"]["Position"] = UDim2.new(0, 0, 1, -10);
G2L["35"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["35"]["Text"] = [[]];
G2L["35"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Folder.Option
G2L["36"] = Instance.new("TextButton", G2L["1"]);
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

-- ReplicatedStorage.Folder.Option.Title
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

-- ReplicatedStorage.Folder.Option.Gradient
G2L["38"] = Instance.new("UIGradient", G2L["36"]);
G2L["38"]["Rotation"] = 90;
G2L["38"]["Name"] = [[Gradient]];
G2L["38"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Folder.Dropdown
G2L["39"] = Instance.new("TextButton", G2L["1"]);
G2L["39"]["TextStrokeTransparency"] = 0.75;
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["AutoButtonColor"] = false;
G2L["39"]["TextSize"] = 15;
G2L["39"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["39"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["39"]["ZIndex"] = 3;
G2L["39"]["Size"] = UDim2.new(1, -10, 0, 40);
G2L["39"]["BackgroundTransparency"] = 1;
G2L["39"]["Name"] = [[Dropdown]];
G2L["39"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["39"]["Text"] = [[]];

-- ReplicatedStorage.Folder.Dropdown.Title
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
G2L["3a"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["3a"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3a"]["Text"] = [[Dropdown]];
G2L["3a"]["Name"] = [[Title]];

-- ReplicatedStorage.Folder.Dropdown.Container
G2L["3b"] = Instance.new("Frame", G2L["39"]);
G2L["3b"]["ZIndex"] = 3;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["3b"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["3b"]["Position"] = UDim2.new(0, 0, 0, 20);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["Name"] = [[Container]];

-- ReplicatedStorage.Folder.Dropdown.Container.Value
G2L["3c"] = Instance.new("TextLabel", G2L["3b"]);
G2L["3c"]["TextStrokeTransparency"] = 0.75;
G2L["3c"]["ZIndex"] = 3;
G2L["3c"]["BorderSizePixel"] = 0;
G2L["3c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3c"]["TextSize"] = 15;
G2L["3c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3c"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["3c"]["BackgroundTransparency"] = 1;
G2L["3c"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["3c"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["3c"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3c"]["Text"] = [[...]];
G2L["3c"]["Name"] = [[Value]];
G2L["3c"]["Position"] = UDim2.new(0.5, 0, 0, 0);

-- ReplicatedStorage.Folder.Dropdown.Container.Holder
G2L["3d"] = Instance.new("Frame", G2L["3b"]);
G2L["3d"]["Visible"] = false;
G2L["3d"]["ZIndex"] = 3;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["3d"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["3d"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["3d"]["Position"] = UDim2.new(0.5, 0, 0, 25);
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["Name"] = [[Holder]];

-- ReplicatedStorage.Folder.Dropdown.Container.Holder.Container
G2L["3e"] = Instance.new("Frame", G2L["3d"]);
G2L["3e"]["ZIndex"] = 3;
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["3e"]["Name"] = [[Container]];
G2L["3e"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Folder.Dropdown.Container.Holder.Container.ListLayout
G2L["3f"] = Instance.new("UIListLayout", G2L["3e"]);
G2L["3f"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["3f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["3f"]["Name"] = [[ListLayout]];

-- ReplicatedStorage.Folder.Dropdown.Container.Holder.Container.UIGradient
G2L["40"] = Instance.new("UIGradient", G2L["3e"]);
G2L["40"]["Rotation"] = 90;
G2L["40"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 129, 65)),ColorSequenceKeypoint.new(0.250, Color3.fromRGB(181, 101, 161)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(181, 231, 101)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 101, 161))};

-- ReplicatedStorage.Folder.Dropdown.Container.Holder.Gradient
G2L["41"] = Instance.new("UIGradient", G2L["3d"]);
G2L["41"]["Rotation"] = 90;
G2L["41"]["Name"] = [[Gradient]];
G2L["41"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Folder.Dropdown.Container.Gradient
G2L["42"] = Instance.new("UIGradient", G2L["3b"]);
G2L["42"]["Rotation"] = 90;
G2L["42"]["Name"] = [[Gradient]];
G2L["42"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Folder.Colorpicker
G2L["43"] = Instance.new("TextButton", G2L["1"]);
G2L["43"]["TextStrokeTransparency"] = 0.75;
G2L["43"]["BorderSizePixel"] = 0;
G2L["43"]["AutoButtonColor"] = false;
G2L["43"]["TextSize"] = 15;
G2L["43"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["43"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["43"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["43"]["ZIndex"] = 3;
G2L["43"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["43"]["BackgroundTransparency"] = 1;
G2L["43"]["Name"] = [[Colorpicker]];
G2L["43"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["43"]["Text"] = [[]];

-- ReplicatedStorage.Folder.Colorpicker.Title
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
G2L["44"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["44"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["44"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["44"]["Text"] = [[Colorpicker]];
G2L["44"]["Name"] = [[Title]];
G2L["44"]["Position"] = UDim2.new(0, 0, 0.5, 0);

-- ReplicatedStorage.Folder.Colorpicker.Color
G2L["45"] = Instance.new("Frame", G2L["43"]);
G2L["45"]["ZIndex"] = 3;
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["45"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["45"]["Size"] = UDim2.new(0, 20, 0, 10);
G2L["45"]["Position"] = UDim2.new(1, 0, 0.5, 0);
G2L["45"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["45"]["Name"] = [[Color]];

-- ReplicatedStorage.Folder.Colorpicker.Color.Gradient
G2L["46"] = Instance.new("UIGradient", G2L["45"]);
G2L["46"]["Rotation"] = 90;
G2L["46"]["Name"] = [[Gradient]];
G2L["46"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Folder.Button
G2L["47"] = Instance.new("TextButton", G2L["1"]);
G2L["47"]["TextStrokeTransparency"] = 0.75;
G2L["47"]["AutoButtonColor"] = false;
G2L["47"]["TextSize"] = 15;
G2L["47"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["47"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["47"]["ZIndex"] = 3;
G2L["47"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["47"]["Name"] = [[Button]];
G2L["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["47"]["Text"] = [[]];

-- ReplicatedStorage.Folder.Button.Title
G2L["48"] = Instance.new("TextLabel", G2L["47"]);
G2L["48"]["TextStrokeTransparency"] = 0.75;
G2L["48"]["ZIndex"] = 3;
G2L["48"]["BorderSizePixel"] = 0;
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["48"]["TextSize"] = 15;
G2L["48"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["48"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["48"]["BackgroundTransparency"] = 1;
G2L["48"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["48"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["48"]["Text"] = [[Button]];
G2L["48"]["Name"] = [[Title]];

-- ReplicatedStorage.Folder.Button.Gradient
G2L["49"] = Instance.new("UIGradient", G2L["47"]);
G2L["49"]["Rotation"] = 90;
G2L["49"]["Name"] = [[Gradient]];
G2L["49"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};

-- ReplicatedStorage.Folder.Tab
G2L["4a"] = Instance.new("ScrollingFrame", G2L["1"]);
G2L["4a"]["Active"] = true;
G2L["4a"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["4a"]["ZIndex"] = 2;
G2L["4a"]["BorderSizePixel"] = 0;
G2L["4a"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["4a"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4a"]["Name"] = [[Tab]];
G2L["4a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4a"]["ScrollBarImageColor3"] = Color3.fromRGB(52, 52, 52);
G2L["4a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["4a"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4a"]["ScrollBarThickness"] = 0;
G2L["4a"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Folder.Tab.RightSide
G2L["4b"] = Instance.new("Frame", G2L["4a"]);
G2L["4b"]["ZIndex"] = 2;
G2L["4b"]["BorderSizePixel"] = 0;
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4b"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["4b"]["Size"] = UDim2.new(0.5, -5, 1, 0);
G2L["4b"]["Position"] = UDim2.new(1, -5, 0, 0);
G2L["4b"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4b"]["Name"] = [[RightSide]];
G2L["4b"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Folder.Tab.RightSide.Padding
G2L["4c"] = Instance.new("UIPadding", G2L["4b"]);
G2L["4c"]["PaddingTop"] = UDim.new(0, 10);
G2L["4c"]["Name"] = [[Padding]];
G2L["4c"]["PaddingLeft"] = UDim.new(0, 3);

-- ReplicatedStorage.Folder.Tab.RightSide.ListLayout
G2L["4d"] = Instance.new("UIListLayout", G2L["4b"]);
G2L["4d"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["4d"]["Padding"] = UDim.new(0, 10);
G2L["4d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["4d"]["Name"] = [[ListLayout]];

-- ReplicatedStorage.Folder.Tab.LeftSide
G2L["4e"] = Instance.new("Frame", G2L["4a"]);
G2L["4e"]["ZIndex"] = 2;
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4e"]["Size"] = UDim2.new(0.5, -5, 1, 0);
G2L["4e"]["Position"] = UDim2.new(0, 5, 0, 0);
G2L["4e"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4e"]["Name"] = [[LeftSide]];
G2L["4e"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Folder.Tab.LeftSide.Padding
G2L["4f"] = Instance.new("UIPadding", G2L["4e"]);
G2L["4f"]["PaddingTop"] = UDim.new(0, 10);
G2L["4f"]["PaddingRight"] = UDim.new(0, 3);
G2L["4f"]["Name"] = [[Padding]];

-- ReplicatedStorage.Folder.Tab.LeftSide.ListLayout
G2L["50"] = Instance.new("UIListLayout", G2L["4e"]);
G2L["50"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["50"]["Padding"] = UDim.new(0, 10);
G2L["50"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["50"]["Name"] = [[ListLayout]];

-- ReplicatedStorage.Folder.Section
G2L["51"] = Instance.new("Frame", G2L["1"]);
G2L["51"]["ZIndex"] = 3;
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["51"]["Size"] = UDim2.new(1, 0, 0, 235);
G2L["51"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["51"]["Name"] = [[Section]];

-- ReplicatedStorage.Folder.Section.Border
G2L["52"] = Instance.new("Frame", G2L["51"]);
G2L["52"]["ZIndex"] = 2;
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["52"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["52"]["Size"] = UDim2.new(1, 2, 1, 2);
G2L["52"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["52"]["Name"] = [[Border]];

-- ReplicatedStorage.Folder.Section.Title
G2L["53"] = Instance.new("TextLabel", G2L["51"]);
G2L["53"]["TextStrokeTransparency"] = 0.75;
G2L["53"]["ZIndex"] = 3;
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["53"]["TextSize"] = 15;
G2L["53"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["53"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["53"]["Size"] = UDim2.new(0, 45, 0, 2);
G2L["53"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["53"]["Text"] = [[Section]];
G2L["53"]["Name"] = [[Title]];
G2L["53"]["Position"] = UDim2.new(0, 5, 0, -2);

-- ReplicatedStorage.Folder.Section.Container
G2L["54"] = Instance.new("Frame", G2L["51"]);
G2L["54"]["ZIndex"] = 3;
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["54"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["54"]["Size"] = UDim2.new(1, 0, 1, -10);
G2L["54"]["Position"] = UDim2.new(0.5, 0, 0, 10);
G2L["54"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["54"]["Name"] = [[Container]];
G2L["54"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Folder.Section.Container.ListLayout
G2L["55"] = Instance.new("UIListLayout", G2L["54"]);
G2L["55"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["55"]["Padding"] = UDim.new(0, 5);
G2L["55"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["55"]["Name"] = [[ListLayout]];

-- ReplicatedStorage.Folder.Section.UIGradient
G2L["56"] = Instance.new("UIGradient", G2L["51"]);
G2L["56"]["Rotation"] = 90;
G2L["56"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 129, 65)),ColorSequenceKeypoint.new(0.250, Color3.fromRGB(181, 101, 161)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(181, 231, 101)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 101, 161))};

-- ReplicatedStorage.Folder.Palette
G2L["57"] = Instance.new("Frame", G2L["1"]);
G2L["57"]["Visible"] = false;
G2L["57"]["ZIndex"] = 5;
G2L["57"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["57"]["Size"] = UDim2.new(0, 150, 0, 240);
G2L["57"]["Position"] = UDim2.new(0, 100, 0, 100);
G2L["57"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["57"]["Name"] = [[Palette]];

-- ReplicatedStorage.Folder.Palette.GradientPalette
G2L["58"] = Instance.new("ImageButton", G2L["57"]);
G2L["58"]["AutoButtonColor"] = false;
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["58"]["ZIndex"] = 5;
G2L["58"]["Size"] = UDim2.new(1, -10, 0, 150);
G2L["58"]["Name"] = [[GradientPalette]];
G2L["58"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["Position"] = UDim2.new(0, 5, 0, 5);

-- ReplicatedStorage.Folder.Palette.GradientPalette.SaturationOverlay
G2L["59"] = Instance.new("Frame", G2L["58"]);
G2L["59"]["ZIndex"] = 6;
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["59"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["59"]["Name"] = [[SaturationOverlay]];

-- ReplicatedStorage.Folder.Palette.GradientPalette.SaturationOverlay.UIGradient
G2L["5a"] = Instance.new("UIGradient", G2L["59"]);
G2L["5a"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)};

-- ReplicatedStorage.Folder.Palette.GradientPalette.BrightnessOverlay
G2L["5b"] = Instance.new("Frame", G2L["58"]);
G2L["5b"]["ZIndex"] = 7;
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["5b"]["Name"] = [[BrightnessOverlay]];

-- ReplicatedStorage.Folder.Palette.GradientPalette.BrightnessOverlay.UIGradient
G2L["5c"] = Instance.new("UIGradient", G2L["5b"]);
G2L["5c"]["Rotation"] = 90;
G2L["5c"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(1.000, 0)};

-- ReplicatedStorage.Folder.Palette.GradientPalette.Dot
G2L["5d"] = Instance.new("Frame", G2L["58"]);
G2L["5d"]["ZIndex"] = 8;
G2L["5d"]["BorderSizePixel"] = 2;
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5d"]["Size"] = UDim2.new(0, 3, 0, 3);
G2L["5d"]["Position"] = UDim2.new(1, 0, 0, 0);
G2L["5d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["Name"] = [[Dot]];
G2L["5d"]["Rotation"] = 45;

-- ReplicatedStorage.Folder.Palette.ColorSlider
G2L["5e"] = Instance.new("TextButton", G2L["57"]);
G2L["5e"]["AutoButtonColor"] = false;
G2L["5e"]["TextSize"] = 14;
G2L["5e"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5e"]["ZIndex"] = 5;
G2L["5e"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["5e"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["5e"]["Name"] = [[ColorSlider]];
G2L["5e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5e"]["Text"] = [[]];
G2L["5e"]["Position"] = UDim2.new(1, -5, 0, 160);

-- ReplicatedStorage.Folder.Palette.ColorSlider.Gradient
G2L["5f"] = Instance.new("UIGradient", G2L["5e"]);
G2L["5f"]["Name"] = [[Gradient]];
G2L["5f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 0, 6)),ColorSequenceKeypoint.new(0.200, Color3.fromRGB(255, 0, 253)),ColorSequenceKeypoint.new(0.400, Color3.fromRGB(0, 19, 255)),ColorSequenceKeypoint.new(0.600, Color3.fromRGB(0, 255, 255)),ColorSequenceKeypoint.new(0.800, Color3.fromRGB(23, 255, 0)),ColorSequenceKeypoint.new(0.900, Color3.fromRGB(236, 255, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 0, 6))};

-- ReplicatedStorage.Folder.Palette.TransparencySlider
G2L["60"] = Instance.new("TextButton", G2L["57"]);
G2L["60"]["AutoButtonColor"] = false;
G2L["60"]["TextSize"] = 14;
G2L["60"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["60"]["ZIndex"] = 5;
G2L["60"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["60"]["Size"] = UDim2.new(1, -10, 0, 10);
G2L["60"]["Name"] = [[TransparencySlider]];
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["Text"] = [[]];
G2L["60"]["Position"] = UDim2.new(1, -5, 0, 175);

-- ReplicatedStorage.Folder.Palette.TransparencySlider.Gradient
G2L["61"] = Instance.new("UIGradient", G2L["60"]);
G2L["61"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)};
G2L["61"]["Name"] = [[Gradient]];

-- ReplicatedStorage.Folder.Palette.ColorPreview
G2L["62"] = Instance.new("Frame", G2L["57"]);
G2L["62"]["ZIndex"] = 5;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["62"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["62"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["62"]["Position"] = UDim2.new(0.5, 0, 0, 190);
G2L["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["Name"] = [[ColorPreview]];

-- ReplicatedStorage.Folder.Palette.InputFrame
G2L["63"] = Instance.new("Frame", G2L["57"]);
G2L["63"]["ZIndex"] = 5;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["63"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["63"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["63"]["Position"] = UDim2.new(0.5, 0, 0, 215);
G2L["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["63"]["Name"] = [[InputFrame]];

-- ReplicatedStorage.Folder.Palette.InputFrame.InputBox
G2L["64"] = Instance.new("TextBox", G2L["63"]);
G2L["64"]["TextStrokeTransparency"] = 0.75;
G2L["64"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["64"]["PlaceholderColor3"] = Color3.fromRGB(202, 202, 202);
G2L["64"]["ZIndex"] = 5;
G2L["64"]["BorderSizePixel"] = 0;
G2L["64"]["TextWrapped"] = true;
G2L["64"]["TextSize"] = 12;
G2L["64"]["Name"] = [[InputBox]];
G2L["64"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["64"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["64"]["PlaceholderText"] = [[RGBA: 255, 0, 0, 255]];
G2L["64"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["64"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["64"]["Text"] = [[]];
G2L["64"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Folder.Hud
G2L["65"] = Instance.new("Frame", G2L["1"]);
G2L["65"]["BorderSizePixel"] = 0;
G2L["65"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["65"]["Size"] = UDim2.new(0, 388, 0, 35);
G2L["65"]["Position"] = UDim2.new(1, -398, 0, 10);
G2L["65"]["Name"] = [[Hud]];

-- ReplicatedStorage.Folder.Hud.BorderFrame1
G2L["66"] = Instance.new("Frame", G2L["65"]);
G2L["66"]["BorderSizePixel"] = 0;
G2L["66"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["66"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["66"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["66"]["Name"] = [[BorderFrame1]];

-- ReplicatedStorage.Folder.Hud.BorderFrame1.BorderFrame2
G2L["67"] = Instance.new("Frame", G2L["66"]);
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["67"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["67"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["67"]["Name"] = [[BorderFrame2]];

-- ReplicatedStorage.Folder.Hud.BorderFrame1.BorderFrame2.BorderFrame3
G2L["68"] = Instance.new("Frame", G2L["67"]);
G2L["68"]["BorderSizePixel"] = 0;
G2L["68"]["BackgroundColor3"] = Color3.fromRGB(53, 54, 53);
G2L["68"]["Size"] = UDim2.new(1, -6, 1, -6);
G2L["68"]["Position"] = UDim2.new(0, 3, 0, 3);
G2L["68"]["Name"] = [[BorderFrame3]];

-- ReplicatedStorage.Folder.Hud.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame
G2L["69"] = Instance.new("Frame", G2L["68"]);
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(6, 6, 5);
G2L["69"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["69"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["69"]["Name"] = [[InnerFrame]];

-- ReplicatedStorage.Folder.Hud.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.GradientFrame
G2L["6a"] = Instance.new("Frame", G2L["69"]);
G2L["6a"]["BorderSizePixel"] = 0;
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(101, 151, 201);
G2L["6a"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["6a"]["Name"] = [[GradientFrame]];

-- ReplicatedStorage.Folder.Hud.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.ShadowLine
G2L["6b"] = Instance.new("Frame", G2L["69"]);
G2L["6b"]["BorderSizePixel"] = 0;
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["6b"]["Position"] = UDim2.new(0, 0, 0, 1);
G2L["6b"]["Name"] = [[ShadowLine]];
G2L["6b"]["BackgroundTransparency"] = 0.2;

-- ReplicatedStorage.Folder.Hud.BorderFrame1.BorderFrame2.BorderFrame3.InnerFrame.InfoText
G2L["6c"] = Instance.new("TextLabel", G2L["69"]);
G2L["6c"]["TextSize"] = 14;
G2L["6c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6c"]["BackgroundTransparency"] = 1;
G2L["6c"]["RichText"] = true;
G2L["6c"]["Size"] = UDim2.new(1, -12, 1, -4);
G2L["6c"]["Text"] = [[<font color="rgb(255,255,255)">game</font><font color="rgb(163,200,79)">sense</font><font color="rgb(255,255,255)"> | </font><font color="rgb(255,255,255)">PerfectoExternal</font><font color="rgb(255,255,255)"> | </font><font color="rgb(255,255,255)">144fps</font><font color="rgb(255,255,255)"> | </font><font color="rgb(255,255,255)">72ms</font><font color="rgb(255,255,255)"> | </font><font color="rgb(255,255,255)">17:20</font>]];
G2L["6c"]["Name"] = [[InfoText]];
G2L["6c"]["Position"] = UDim2.new(0, 6, 0, 2);

-- ReplicatedStorage.Folder.Bracket
G2L["6d"] = Instance.new("ScreenGui", G2L["1"]);
G2L["6d"]["IgnoreGuiInset"] = true;
G2L["6d"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["6d"]["Name"] = [[Bracket]];
G2L["6d"]["ResetOnSpawn"] = false;

-- ReplicatedStorage.Folder.Bracket.Main
G2L["6e"] = Instance.new("Frame", G2L["6d"]);
G2L["6e"]["BorderSizePixel"] = 0;
G2L["6e"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["6e"]["Size"] = UDim2.new(0, 500, 0, 500);
G2L["6e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["6e"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["6e"]["Name"] = [[Main]];

-- ReplicatedStorage.Folder.Bracket.Main.Border
G2L["6f"] = Instance.new("Frame", G2L["6e"]);
G2L["6f"]["ZIndex"] = 0;
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["6f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["6f"]["Size"] = UDim2.new(1, 2, 1, 2);
G2L["6f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6f"]["Name"] = [[Border]];

-- ReplicatedStorage.Folder.Bracket.Main.Topbar
G2L["70"] = Instance.new("Frame", G2L["6e"]);
G2L["70"]["BorderSizePixel"] = 0;
G2L["70"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["70"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["70"]["Size"] = UDim2.new(1, -10, 0, 15);
G2L["70"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["70"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["70"]["Name"] = [[Topbar]];
G2L["70"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Folder.Bracket.Main.Topbar.WindowName
G2L["71"] = Instance.new("TextLabel", G2L["70"]);
G2L["71"]["TextStrokeTransparency"] = 0.75;
G2L["71"]["BorderSizePixel"] = 0;
G2L["71"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["71"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["71"]["TextSize"] = 15;
G2L["71"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["71"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["71"]["BackgroundTransparency"] = 1;
G2L["71"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["71"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["71"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["71"]["Text"] = [[Window Name]];
G2L["71"]["Name"] = [[WindowName]];
G2L["71"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- ReplicatedStorage.Folder.Bracket.Main.Topbar.LibraryName
G2L["72"] = Instance.new("TextLabel", G2L["70"]);
G2L["72"]["TextStrokeTransparency"] = 0.75;
G2L["72"]["BorderSizePixel"] = 0;
G2L["72"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["72"]["TextSize"] = 15;
G2L["72"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["72"]["TextColor3"] = Color3.fromRGB(102, 102, 102);
G2L["72"]["BackgroundTransparency"] = 1;
G2L["72"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["72"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["72"]["Visible"] = false;
G2L["72"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["72"]["Text"] = [[Bracket]];
G2L["72"]["Name"] = [[LibraryName]];
G2L["72"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- ReplicatedStorage.Folder.Bracket.Main.Topbar.SearchBar
G2L["73"] = Instance.new("TextBox", G2L["70"]);
G2L["73"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["73"]["PlaceholderColor3"] = Color3.fromRGB(101, 101, 101);
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["73"]["TextWrapped"] = true;
G2L["73"]["TextSize"] = 14;
G2L["73"]["Name"] = [[SearchBar]];
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["73"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["73"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["73"]["ClearTextOnFocus"] = false;
G2L["73"]["ClipsDescendants"] = true;
G2L["73"]["PlaceholderText"] = [[Search]];
G2L["73"]["Size"] = UDim2.new(0, 90, 0, 20);
G2L["73"]["Position"] = UDim2.new(0.95, -10, 0.6, 0);
G2L["73"]["Text"] = [[]];
G2L["73"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Folder.Bracket.Main.Topbar.SearchBar.ClearButton
G2L["74"] = Instance.new("TextButton", G2L["73"]);
G2L["74"]["TextSize"] = 16;
G2L["74"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["74"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["74"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["74"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["74"]["BackgroundTransparency"] = 1;
G2L["74"]["Name"] = [[ClearButton]];
G2L["74"]["Text"] = [[✕]];
G2L["74"]["Visible"] = false;
G2L["74"]["Position"] = UDim2.new(1, -5, 0.5, 0);

-- ReplicatedStorage.Folder.Bracket.Main.Topbar.Close
G2L["75"] = Instance.new("TextButton", G2L["70"]);
G2L["75"]["TextSize"] = 20;
G2L["75"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["75"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["75"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["75"]["BackgroundTransparency"] = 1;
G2L["75"]["Name"] = [[Close]];
G2L["75"]["Text"] = [[×]];
G2L["75"]["Position"] = UDim2.new(1, 5, 0, 0);

-- ReplicatedStorage.Folder.Bracket.Main.Holder
G2L["76"] = Instance.new("ImageLabel", G2L["6e"]);
G2L["76"]["ZIndex"] = 2;
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["76"]["ScaleType"] = Enum.ScaleType.Tile;
G2L["76"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["76"]["TileSize"] = UDim2.new(0, 500, 0, 500);
G2L["76"]["Size"] = UDim2.new(1, -10, 1, -25);
G2L["76"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["76"]["Name"] = [[Holder]];
G2L["76"]["Position"] = UDim2.new(0.5, 0, 0, 20);

-- ReplicatedStorage.Folder.Bracket.Main.Holder.Border
G2L["77"] = Instance.new("Frame", G2L["76"]);
G2L["77"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["77"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["77"]["Size"] = UDim2.new(1, 2, 1, 2);
G2L["77"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["77"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["77"]["Name"] = [[Border]];

-- ReplicatedStorage.Folder.Bracket.Main.Holder.TBContainer
G2L["78"] = Instance.new("Frame", G2L["76"]);
G2L["78"]["ZIndex"] = 3;
G2L["78"]["BorderSizePixel"] = 0;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["78"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["78"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["78"]["Position"] = UDim2.new(0.5, 0, 0, 5);
G2L["78"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["78"]["Name"] = [[TBContainer]];

-- ReplicatedStorage.Folder.Bracket.Main.Holder.TBContainer.Border
G2L["79"] = Instance.new("Frame", G2L["78"]);
G2L["79"]["ZIndex"] = 2;
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
G2L["79"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["79"]["Size"] = UDim2.new(1, 2, 1, 2);
G2L["79"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["79"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["79"]["Name"] = [[Border]];

-- ReplicatedStorage.Folder.Bracket.Main.Holder.TBContainer.Holder
G2L["7a"] = Instance.new("Frame", G2L["78"]);
G2L["7a"]["ZIndex"] = 3;
G2L["7a"]["BorderSizePixel"] = 0;
G2L["7a"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["7a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["7a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["7a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["7a"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["7a"]["Name"] = [[Holder]];
G2L["7a"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Folder.Bracket.Main.Holder.TBContainer.Holder.ListLayout
G2L["7b"] = Instance.new("UIListLayout", G2L["7a"]);
G2L["7b"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["7b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["7b"]["Name"] = [[ListLayout]];
G2L["7b"]["FillDirection"] = Enum.FillDirection.Horizontal;

-- ReplicatedStorage.Folder.Bracket.Main.Holder.TContainer
G2L["7c"] = Instance.new("Frame", G2L["76"]);
G2L["7c"]["ZIndex"] = 2;
G2L["7c"]["BorderSizePixel"] = 0;
G2L["7c"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["7c"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["7c"]["Size"] = UDim2.new(1, 0, 1, -25);
G2L["7c"]["Position"] = UDim2.new(0.5, 0, 0, 25);
G2L["7c"]["BorderColor3"] = Color3.fromRGB(27, 27, 27);
G2L["7c"]["Name"] = [[TContainer]];
G2L["7c"]["BackgroundTransparency"] = 1;

-- ReplicatedStorage.Folder.Bracket.Main.Holder.UIGradient
G2L["7d"] = Instance.new("UIGradient", G2L["76"]);
G2L["7d"]["Rotation"] = 90;
G2L["7d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.534, Color3.fromRGB(42, 34, 75)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(167, 181, 72))};

-- ReplicatedStorage.Folder.Bracket.ToolTip
G2L["7e"] = Instance.new("TextLabel", G2L["6d"]);
G2L["7e"]["TextStrokeTransparency"] = 0.75;
G2L["7e"]["ZIndex"] = 5;
G2L["7e"]["BorderSizePixel"] = 0;
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7e"]["TextSize"] = 15;
G2L["7e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7e"]["TextColor3"] = Color3.fromRGB(202, 202, 202);
G2L["7e"]["BackgroundTransparency"] = 0.5;
G2L["7e"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["7e"]["Size"] = UDim2.new(0, 45, 0, 20);
G2L["7e"]["Visible"] = false;
G2L["7e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7e"]["Text"] = [[ToolTip]];
G2L["7e"]["Name"] = [[ToolTip]];

-- ReplicatedStorage.Folder.Bracket.ToolTip.UICorner
G2L["7f"] = Instance.new("UICorner", G2L["7e"]);
G2L["7f"]["CornerRadius"] = UDim.new(0, 4);

-- ReplicatedStorage.Folder.UIGradient
G2L["80"] = Instance.new("UIGradient", G2L["1"]);
G2L["80"]["Rotation"] = 90;
G2L["80"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 129, 65)),ColorSequenceKeypoint.new(0.490, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 101, 161))};


return G2L["1"], require;
