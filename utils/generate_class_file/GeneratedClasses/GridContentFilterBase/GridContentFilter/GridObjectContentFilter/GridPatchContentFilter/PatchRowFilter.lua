---@meta

---@class PatchRowFilter: GridPatchContentFilter
local PatchRowFilter = {}
---@return "PatchRowFilter"
function PatchRowFilter:GetClass() end
---@return "GridPatchContentFilterItem"
function PatchRowFilter:GetChildClass() end
---@generic T : PatchRowFilter
---@param class `T`
---@return boolean
function PatchRowFilter:IsClass(class) end