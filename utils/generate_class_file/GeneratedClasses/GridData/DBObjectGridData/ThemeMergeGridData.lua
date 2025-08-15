---@meta

---@class ThemeMergeGridData: DBObjectGridData
local ThemeMergeGridData = {}
---@return "ThemeMergeGridData"
function ThemeMergeGridData:GetClass() end
---@return "Object"
function ThemeMergeGridData:GetChildClass() end
---@generic T : ThemeMergeGridData
---@param class `T`
---@return boolean
function ThemeMergeGridData:IsClass(class) end