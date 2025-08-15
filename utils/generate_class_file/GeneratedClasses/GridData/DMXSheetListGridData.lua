---@meta

---@class DMXSheetListGridData: GridData
local DMXSheetListGridData = {}
---@return "DMXSheetListGridData"
function DMXSheetListGridData:GetClass() end
---@return "Object"
function DMXSheetListGridData:GetChildClass() end
---@generic T : DMXSheetListGridData
---@param class `T`
---@return boolean
function DMXSheetListGridData:IsClass(class) end