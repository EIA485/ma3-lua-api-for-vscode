---@meta

---@class AllPoolFiller: IndicatorButton An abstract pool UI component
local AllPoolFiller = {}
---@return "AllPoolFiller"
function AllPoolFiller:GetClass() end
---@return "UIObject"
function AllPoolFiller:GetChildClass() end
---@return AllPoolLayoutGrid
function AllPoolFiller:Parent() end
