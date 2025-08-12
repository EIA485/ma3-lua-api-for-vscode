---@meta

---@class PlaceHolder: PlaceHolderBase A special dummy object used as a parent for UI components with passing names
local PlaceHolder = {}
---@return "PlaceHolder"
function PlaceHolder:GetClass() end
---@return "UIObject"
function PlaceHolder:GetChildClass() end
