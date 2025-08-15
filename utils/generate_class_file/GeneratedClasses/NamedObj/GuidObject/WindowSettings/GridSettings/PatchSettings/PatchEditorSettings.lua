---@meta

---@class PatchEditorSettings: PatchSettings
local PatchEditorSettings = {}
---@return "PatchEditorSettings"
function PatchEditorSettings:GetClass() end
---@return "Object"
function PatchEditorSettings:GetChildClass() end
---@generic T : PatchEditorSettings
---@param class `T`
---@return boolean
function PatchEditorSettings:IsClass(class) end