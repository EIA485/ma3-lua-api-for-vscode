---@meta

---@class ItemCollectRows: ItemCollect
local ItemCollectRows = {}
---@return "ItemCollectRows"
function ItemCollectRows:GetClass() end
---@return "Item"
function ItemCollectRows:GetChildClass() end
---@generic T : ItemCollectRows
---@param class `T`
---@return boolean
function ItemCollectRows:IsClass(class) end