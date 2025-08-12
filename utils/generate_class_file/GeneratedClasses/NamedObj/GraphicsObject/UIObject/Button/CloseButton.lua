---@meta

---@class CloseButton: Button A close button (derived from a Button class) with a defined default look'n'feel and a default close signal that is sent when it is clicked
local CloseButton = {}
---@return "CloseButton"
function CloseButton:GetClass() end
---@return "UIObject"
function CloseButton:GetChildClass() end
---@return TitleBar
function CloseButton:Parent() end
