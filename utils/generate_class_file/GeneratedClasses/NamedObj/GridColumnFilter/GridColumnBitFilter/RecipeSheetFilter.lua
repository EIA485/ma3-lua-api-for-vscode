---@meta

---@class RecipeSheetFilter: GridColumnBitFilter
local RecipeSheetFilter = {}
---@return "RecipeSheetFilter"
function RecipeSheetFilter:GetClass() end
---@return "Object"
function RecipeSheetFilter:GetChildClass() end
---@generic T : RecipeSheetFilter
---@param class `T`
---@return boolean
function RecipeSheetFilter:IsClass(class) end