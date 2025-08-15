---@meta

---@class PhaserStepGridData: AttributeGridData
local PhaserStepGridData = {}
---@return "PhaserStepGridData"
function PhaserStepGridData:GetClass() end
---@return "Object"
function PhaserStepGridData:GetChildClass() end
---@generic T : PhaserStepGridData
---@param class `T`
---@return boolean
function PhaserStepGridData:IsClass(class) end