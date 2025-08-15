---@meta

---@class ItemCollectColumns: ItemCollect
local ItemCollectColumns = {}
---@return "ItemCollectColumns"
function ItemCollectColumns:GetClass() end
---@return "Item"
function ItemCollectColumns:GetChildClass() end
---@generic T : ItemCollectColumns
---@param class `T`
---@return boolean
function ItemCollectColumns:IsClass(class) end