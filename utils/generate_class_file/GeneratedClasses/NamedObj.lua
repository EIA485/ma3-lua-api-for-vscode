---@meta

---@class NamedObj: Object Base class for all objects that can be labeled.
local NamedObj = {}
---@return "NamedObj"
function NamedObj:GetClass() end
---@return "Object"
function NamedObj:GetChildClass() end
