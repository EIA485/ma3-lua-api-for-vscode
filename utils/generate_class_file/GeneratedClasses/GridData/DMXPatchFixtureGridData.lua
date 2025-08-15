---@meta

---@class DMXPatchFixtureGridData: GridData
local DMXPatchFixtureGridData = {}
---@return "DMXPatchFixtureGridData"
function DMXPatchFixtureGridData:GetClass() end
---@return "Object"
function DMXPatchFixtureGridData:GetChildClass() end
---@generic T : DMXPatchFixtureGridData
---@param class `T`
---@return boolean
function DMXPatchFixtureGridData:IsClass(class) end