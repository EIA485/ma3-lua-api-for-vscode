---@meta
--- Ma3 API version: 2.2

-- Object definition
-- ========================================

---@param baseLocationHandle? Object @Optional
---@param useToAddrIndex? boolean|nil @Optional
---@param isCueObject? boolean @Optional
---@return string numericRootAddress
function Object:Addr(baseLocationHandle, useToAddrIndex, isCueObject)
    return ""
end

---@param baseLocationHandle? Object @Optional
---@param returnNamesInQuotes? boolean @Optional
---@return string numericRootAddress
function Object:AddrNative(baseLocationHandle, returnNamesInQuotes)
    return ""
end


---@return integer count
function Object:Count()
    return 0
end

function Object:Dump()
end

---@param filePath string
---@param fileName string
---@return boolean success
function Object:Export(filePath, fileName)
    return true
end

---@return table dependencies
function Object:GetDependencies()
    return {}
end

---@param tokenAndIndex table
---@return number value 
function Object:GetFader(tokenAndIndex)
    return 0
end

---@param tokenAndIndex table
---@return string text
function Object:GetFaderText(tokenAndIndex)
    return ""
end

---@return string references
function Object:GetReferences()
    return ""
end

---@return string uiEditorName
function Object:GetUIEditor()
    return ""
end

---@return string uiSettingsName
function Object:GetUISettings()
    return ""
end

---@return boolean hasActivePlayback
function Object:HasActivePlayback()
    return true
end

---@param filePath string
---@param fileName string
---@return boolean success
function Object:Import(filePath, fileName)
    return true
end

---@param settingsTable table
function Object:SetFader(settingsTable)
end


---@param returnName boolean
---@return string address
function Object:ToAddr(returnName)
    return ""
end