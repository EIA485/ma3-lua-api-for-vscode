---@meta

---@class UIArrowButton: UITabButton
local UIArrowButton = {}
---@return "UIArrowButton"
function UIArrowButton:GetClass() end
---@return "UIObject"
function UIArrowButton:GetChildClass() end
---@generic T : UIArrowButton
---@param class `T`
---@return boolean
function UIArrowButton:IsClass(class) end