---@meta
--- Ma3 API version: 2.2

-- Object definition
-- ========================================

---@class Object
Object = {}


---@param baseLocationHandle Object? @Optional
---@param useToAddrIndex boolean? @Optional
---@param isCueObject boolean? @Optional
---@return string numericRootAddress
function Object:Addr(baseLocationHandle, useToAddrIndex, isCueObject) end

---@param baseLocationHandle Object? @Optional
---@param returnNamesInQuotes boolean? @Optional
---@return string numericRootAddress
function Object:AddrNative(baseLocationHandle, returnNamesInQuotes) end


---@return integer count
function Object:Count() end

---@return string
function Object:Dump() end

---@param filePath string
---@param fileName string
---@return boolean success
function Object:Export(filePath, fileName) end

---@return Object[] dependencies
function Object:GetDependencies() end

---@param tokenAndIndex {index: integer?, token: string?}
---@return number value #0..100
function Object:GetFader(tokenAndIndex) end

---@param tokenAndIndex {index: integer?, token :string?}
---@return string text #0..100
function Object:GetFaderText(tokenAndIndex) end

---@return Object[] references
function Object:GetReferences() end

---@return string uiEditorName
function Object:GetUIEditor() end

---@return string uiSettingsName
function Object:GetUISettings() end

---@return boolean hasActivePlayback
function Object:HasActivePlayback() end

---@param filePath string
---@param fileName string
---@return boolean success
function Object:Import(filePath, fileName) end

---@param settingsTable {value: number?, faderDisables: boolean?, token: string?} #value 0..100
function Object:SetFader(settingsTable) end


---@param returnName boolean
---@return string address
function Object:ToAddr(returnName) end