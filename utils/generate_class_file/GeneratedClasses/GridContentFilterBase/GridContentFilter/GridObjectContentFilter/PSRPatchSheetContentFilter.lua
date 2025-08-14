---@meta

---@class PSRPatchSheetContentFilter: GridObjectContentFilter
local PSRPatchSheetContentFilter = {}
---@return "PSRPatchSheetContentFilter"
function PSRPatchSheetContentFilter:GetClass() end
---@return "GridObjectContentFilterItem"
function PSRPatchSheetContentFilter:GetChildClass() end
---@return PSRPatchSheetSettings
function PSRPatchSheetContentFilter:Parent() end