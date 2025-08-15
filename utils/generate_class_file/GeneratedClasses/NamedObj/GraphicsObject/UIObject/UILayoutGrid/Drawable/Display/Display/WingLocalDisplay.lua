---@meta

---@class WingLocalDisplay: Display
local WingLocalDisplay = {}
---@return "WingLocalDisplay"
function WingLocalDisplay:GetClass() end
---@return "UIObject"
function WingLocalDisplay:GetChildClass() end
---@generic T : WingLocalDisplay
---@param class `T`
---@return boolean
function WingLocalDisplay:IsClass(class) end