---@meta

---@class SequenceSheetColumnFilter: GridColumnBitFilter
local SequenceSheetColumnFilter = {}
---@return "SequenceSheetColumnFilter"
function SequenceSheetColumnFilter:GetClass() end
---@return "Object"
function SequenceSheetColumnFilter:GetChildClass() end
---@generic T : SequenceSheetColumnFilter
---@param class `T`
---@return boolean
function SequenceSheetColumnFilter:IsClass(class) end