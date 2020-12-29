local Selection = game:GetService('Selection')
local toolbar = plugin:CreateToolbar("Custom Script Tools")
local directoryButton = toolbar:CreateButton("Get Directory", "Get the working directory of an instance", "rbxassetid://4458901886")

local function onDirectoryButtonClick()

	local select = game.Selection:Get()[1]:GetFullName()
	local message = Instance.new('Hint')
	message.Text='Your Directory is' .. select .. ', Check the output to copy and paste it'
	message.Parent = workspace
	print('InstanceDirectories - ' .. select)
	
	wait(6)
	message:Destroy()
end

directoryButton.Click:Connect(onDirectoryButtonClick)