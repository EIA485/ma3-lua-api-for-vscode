---@meta

---@class PagePoolButton: PoolButton
local PagePoolButton = {}
---@return "PagePoolButton"
function PagePoolButton:GetClass() end
---@return "UIObject"
function PagePoolButton:GetChildClass() end
---@generic T : PagePoolButton
---@param class `T`
---@return boolean
function PagePoolButton:IsClass(class) end