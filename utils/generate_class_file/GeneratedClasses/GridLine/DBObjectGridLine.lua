---@meta

---@class DBObjectGridLine: GridLine
local DBObjectGridLine = {}
---@return "DBObjectGridLine"
function DBObjectGridLine:GetClass() end
---@return "Object"
function DBObjectGridLine:GetChildClass() end
---@generic T : DBObjectGridLine
---@param class `T`
---@return boolean
function DBObjectGridLine:IsClass(class) end
---@return DBObjectGridColumnConfiguration
function DBObjectGridLine:Parent() end