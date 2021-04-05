	local Selection = game:GetService('Selection')
	local toolbar = plugin:CreateToolbar("Custom Script Tools")
	local directoryButton = toolbar:CreateButton("Get Directory", "Get the working directory of an instance", "rbxassetid://4458901886")
	local treeButton = toolbar:CreateButton("Get Tree", "Get the tree visualizer of an instance", "rbxassetid://4458901886")

	local function onDirectoryButtonClick()

		local select = Selection:Get()[1]:GetFullName()
		local message = Instance.new('Hint')
		message.Text='Your Directory is' .. select .. ', Check the output to copy and paste it'
		message.Parent = workspace
		print('InstanceDirectories - ' .. select)
		
		wait(6)
		message:Destroy()
	end

	local function createSortedHierarchy(ancestor)
		local function convertChildrenToTable(parent)
			local children = {}
			for _, child in pairs(parent:GetChildren()) do
				children[child.Name] = convertChildrenToTable(child)
			end
			return children
		end
		return {[ancestor.Name] = convertChildrenToTable(ancestor)}
	end

	print(createSortedHierarchy(Selection:Get()))

	directoryButton.Click:Connect(onDirectoryButtonClick)
	treeButton.Click:Connect(createSortedHierarchy)