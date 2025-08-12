---@meta

---@class PoolFiller: IndicatorButton An abstract pool UI component
local PoolFiller = {}
---@return "PoolFiller"
function PoolFiller:GetClass() end
---@return "UIObject"
function PoolFiller:GetChildClass() end
---@return PoolLayoutGrid
function PoolFiller:Parent() end
