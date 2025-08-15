---@meta

---@class RecipeGridData: DBObjectGridData
local RecipeGridData = {}
---@return "RecipeGridData"
function RecipeGridData:GetClass() end
---@return "Object"
function RecipeGridData:GetChildClass() end
---@generic T : RecipeGridData
---@param class `T`
---@return boolean
function RecipeGridData:IsClass(class) end