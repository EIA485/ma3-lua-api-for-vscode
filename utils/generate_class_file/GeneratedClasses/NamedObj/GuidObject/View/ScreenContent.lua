---@meta

---@class ScreenContent: View
local ScreenContent = {}
---@return "ScreenContent"
function ScreenContent:GetClass() end
---@return "ViewWidget"
function ScreenContent:GetChildClass() end
---@generic T : ScreenContent
---@param class `T`
---@return boolean
function ScreenContent:IsClass(class) end
---@return ScreenContents
function ScreenContent:Parent() end