---@meta

---@class SequenceSheetRowFilter: GridObjectContentFilter
local SequenceSheetRowFilter = {}
---@return "SequenceSheetRowFilter"
function SequenceSheetRowFilter:GetClass() end
---@return "GridObjectContentFilterItem"
function SequenceSheetRowFilter:GetChildClass() end
---@return SequenceSheetSettings
function SequenceSheetRowFilter:Parent() end