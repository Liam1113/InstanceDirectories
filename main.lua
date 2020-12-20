local Selection = game:GetService('Selection')
local toolbar = plugin:CreateToolbar("Custom Script Tools")
local directoryButton = toolbar:CreateButton("Get Directory", "Get the working directory of an instance", "rbxassetid://4458901886")

local function onDirectoryButtonClick()
for _, object in pairs (Selection:Get()) do
    if object == Instance then
        local directory = object:GetFullName()
        Print(directory)

    elseif print('Error, Not an instance') then

directoryButton.Click:Connect(onDirectoryButtonClick)

    end
end