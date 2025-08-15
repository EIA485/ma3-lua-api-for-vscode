---@meta

---@class CuePartGridData: PresetGridData
local CuePartGridData = {}
---@return "CuePartGridData"
function CuePartGridData:GetClass() end
---@return "Object"
function CuePartGridData:GetChildClass() end
---@generic T : CuePartGridData
---@param class `T`
---@return boolean
function CuePartGridData:IsClass(class) end