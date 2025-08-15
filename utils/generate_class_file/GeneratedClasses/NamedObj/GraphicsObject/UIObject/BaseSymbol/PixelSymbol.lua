---@meta

---@class PixelSymbol: BaseSymbol A UI component used to show some symbol
local PixelSymbol = {}
---@return "PixelSymbol"
function PixelSymbol:GetClass() end
---@return "UIObject"
function PixelSymbol:GetChildClass() end
---@generic T : PixelSymbol
---@param class `T`
---@return boolean
function PixelSymbol:IsClass(class) end