---@meta

---@class RecurringOverlay: ShadedOverlay Overlay that can only be explicitly closed by user
local RecurringOverlay = {}
---@return "RecurringOverlay"
function RecurringOverlay:GetClass() end
---@return "UIObject"
function RecurringOverlay:GetChildClass() end
