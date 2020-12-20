local Selection = game:GetService('Selection')
local toolbar = plugin:CreateToolbar("Custom Script Tools")
local directoryButton = toolbar:CreateButton("Get Directory", "Get the working directory of an instance", "rbxassetid://4458901886")

local function onDirectoryButtonClick()

	local select = game.Selection:Get()[1]:GetFullName()
	print(select)

	end

directoryButton.Click:Connect(onDirectoryButtonClick)