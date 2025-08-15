---@meta

---@class EditKeybShortcutGridData: DBObjectGridData
local EditKeybShortcutGridData = {}
---@return "EditKeybShortcutGridData"
function EditKeybShortcutGridData:GetClass() end
---@return "Object"
function EditKeybShortcutGridData:GetChildClass() end
---@generic T : EditKeybShortcutGridData
---@param class `T`
---@return boolean
function EditKeybShortcutGridData:IsClass(class) end