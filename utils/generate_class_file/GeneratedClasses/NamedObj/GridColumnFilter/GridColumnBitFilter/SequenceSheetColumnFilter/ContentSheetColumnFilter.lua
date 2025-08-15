---@meta

---@class ContentSheetColumnFilter: SequenceSheetColumnFilter
local ContentSheetColumnFilter = {}
---@return "ContentSheetColumnFilter"
function ContentSheetColumnFilter:GetClass() end
---@return "Object"
function ContentSheetColumnFilter:GetChildClass() end
---@generic T : ContentSheetColumnFilter
---@param class `T`
---@return boolean
function ContentSheetColumnFilter:IsClass(class) end