local Settings = {}

local Paths = {}
Paths.Root = utils.get_appdata_path("PopstarDevs", "2Take1Menu")
Paths.Cfg = Paths.Root .. "\\cfg"

function Settings.Save(SettingsFile, SettingsTbl)
	assert(SettingsFile, "Nil passed for SettingsFile to Settings.Save")
	assert(SettingsTbl, "Nil passed for SettingsTbl to Settings.Save")
	local file = io.open(Paths.Cfg .. "\\" .. SettingsFile .. ".cfg", "w")
	for k,v in pairs(SettingsTbl) do
		file:write(tostring(k) .. "=" .. tostring(v) .. "\n")
	end
	file:close()
end

function Settings.Load(SettingsFile, SettingsTbl)
	assert(SettingsFile, "Nil passed for SettingsFile to Settings.Load")
	assert(SettingsTbl, "Nil passed for SettingsTbl to Settings.Load")
	SettingsFile = Paths.Cfg .. "\\" .. SettingsFile .. ".cfg"
	if not utils.file_exists(SettingsFile) then
		return false
	end
	for line in io.lines(SettingsFile) do
		local separator = line:find("=", 1, true)
		if separator then
			local key = line:sub(1, separator - 1)
			local value = line:sub(separator + 1)
			local num = tonumber(value)
			if num then
				value = num
			elseif value == "true" then
				value = true
			elseif value == "false" then
				value = false
			end
			num = tonumber(key)
			if num then
				key = num
			end
			SettingsTbl[key] = value
		end
	end
	return true
end

return Settings