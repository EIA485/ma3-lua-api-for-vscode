---@meta

---@class Drawable: UILayoutGrid Base class for other classes that have their own frame buffers they are being rendered to (e.g. Window, Display)
local Drawable = {}
---@return "Drawable"
function Drawable:GetClass() end
---@return "UIObject"
function Drawable:GetChildClass() end
