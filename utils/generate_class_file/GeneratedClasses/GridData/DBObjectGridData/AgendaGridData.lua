---@meta

---@class AgendaGridData: DBObjectGridData
local AgendaGridData = {}
---@return "AgendaGridData"
function AgendaGridData:GetClass() end
---@return "Object"
function AgendaGridData:GetChildClass() end
---@generic T : AgendaGridData
---@param class `T`
---@return boolean
function AgendaGridData:IsClass(class) end