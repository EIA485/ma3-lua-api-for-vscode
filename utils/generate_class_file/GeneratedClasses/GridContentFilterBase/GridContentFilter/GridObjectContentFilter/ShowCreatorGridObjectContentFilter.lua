---@meta

---@class ShowCreatorGridObjectContentFilter: GridObjectContentFilter
local ShowCreatorGridObjectContentFilter = {}
---@return "ShowCreatorGridObjectContentFilter"
function ShowCreatorGridObjectContentFilter:GetClass() end
---@return "GridObjectContentFilterItem"
function ShowCreatorGridObjectContentFilter:GetChildClass() end
---@generic T : ShowCreatorGridObjectContentFilter
---@param class `T`
---@return boolean
function ShowCreatorGridObjectContentFilter:IsClass(class) end
---@return ShowCreatorSheetSettings
function ShowCreatorGridObjectContentFilter:Parent() end