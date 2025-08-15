---@meta

---@class PhaserSheetRowFilter: GridContentFilter
local PhaserSheetRowFilter = {}
---@return "PhaserSheetRowFilter"
function PhaserSheetRowFilter:GetClass() end
---@return "GridContentFilterItem"
function PhaserSheetRowFilter:GetChildClass() end
---@generic T : PhaserSheetRowFilter
---@param class `T`
---@return boolean
function PhaserSheetRowFilter:IsClass(class) end