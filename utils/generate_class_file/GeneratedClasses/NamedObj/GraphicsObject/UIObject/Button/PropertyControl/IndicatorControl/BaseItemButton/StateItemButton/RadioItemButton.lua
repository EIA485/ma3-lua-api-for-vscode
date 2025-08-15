---@meta

---@class RadioItemButton: StateItemButton
local RadioItemButton = {}
---@return "RadioItemButton"
function RadioItemButton:GetClass() end
---@return "UIObject"
function RadioItemButton:GetChildClass() end
---@generic T : RadioItemButton
---@param class `T`
---@return boolean
function RadioItemButton:IsClass(class) end