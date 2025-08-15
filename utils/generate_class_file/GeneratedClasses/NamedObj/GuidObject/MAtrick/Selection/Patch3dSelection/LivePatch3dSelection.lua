---@meta

---@class LivePatch3dSelection: Patch3dSelection Defines the current selection of the live patch for the 3d context.
local LivePatch3dSelection = {}
---@return "LivePatch3dSelection"
function LivePatch3dSelection:GetClass() end
---@return "Object"
function LivePatch3dSelection:GetChildClass() end
---@generic T : LivePatch3dSelection
---@param class `T`
---@return boolean
function LivePatch3dSelection:IsClass(class) end