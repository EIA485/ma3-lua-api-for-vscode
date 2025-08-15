---@meta

---@class DMXSheetGridData: GridData
local DMXSheetGridData = {}
---@return "DMXSheetGridData"
function DMXSheetGridData:GetClass() end
---@return "Object"
function DMXSheetGridData:GetChildClass() end
---@generic T : DMXSheetGridData
---@param class `T`
---@return boolean
function DMXSheetGridData:IsClass(class) end