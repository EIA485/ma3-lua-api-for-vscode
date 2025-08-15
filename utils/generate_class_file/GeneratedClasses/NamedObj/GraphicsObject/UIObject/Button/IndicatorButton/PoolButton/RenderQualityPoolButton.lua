---@meta

---@class RenderQualityPoolButton: PoolButton
local RenderQualityPoolButton = {}
---@return "RenderQualityPoolButton"
function RenderQualityPoolButton:GetClass() end
---@return "UIObject"
function RenderQualityPoolButton:GetChildClass() end
---@generic T : RenderQualityPoolButton
---@param class `T`
---@return boolean
function RenderQualityPoolButton:IsClass(class) end