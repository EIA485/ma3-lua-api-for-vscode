---@meta

---@class SequenceSheetRowFilter: GridObjectContentFilter
local SequenceSheetRowFilter = {}
---@return "SequenceSheetRowFilter"
function SequenceSheetRowFilter:GetClass() end
---@return "GridObjectContentFilterItem"
function SequenceSheetRowFilter:GetChildClass() end
---@generic T : SequenceSheetRowFilter
---@param class `T`
---@return boolean
function SequenceSheetRowFilter:IsClass(class) end
---@return SequenceSheetSettings
function SequenceSheetRowFilter:Parent() end