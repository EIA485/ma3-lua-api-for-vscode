---@meta

---@class PsrFixtureGridData: DBObjectGridData
local PsrFixtureGridData = {}
---@return "PsrFixtureGridData"
function PsrFixtureGridData:GetClass() end
---@return "Object"
function PsrFixtureGridData:GetChildClass() end
---@generic T : PsrFixtureGridData
---@param class `T`
---@return boolean
function PsrFixtureGridData:IsClass(class) end