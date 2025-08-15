---@meta

---@class CueUpdateGridData: UpdateGridData
local CueUpdateGridData = {}
---@return "CueUpdateGridData"
function CueUpdateGridData:GetClass() end
---@return "Object"
function CueUpdateGridData:GetChildClass() end
---@generic T : CueUpdateGridData
---@param class `T`
---@return boolean
function CueUpdateGridData:IsClass(class) end