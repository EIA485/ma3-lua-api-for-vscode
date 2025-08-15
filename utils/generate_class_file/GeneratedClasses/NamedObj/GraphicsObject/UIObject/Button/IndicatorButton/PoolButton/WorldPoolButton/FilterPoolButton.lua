---@meta

---@class FilterPoolButton: WorldPoolButton
local FilterPoolButton = {}
---@return "FilterPoolButton"
function FilterPoolButton:GetClass() end
---@return "UIObject"
function FilterPoolButton:GetChildClass() end
---@generic T : FilterPoolButton
---@param class `T`
---@return boolean
function FilterPoolButton:IsClass(class) end