---@meta

---@class ContentSheetGridSelection: TrackSheetGridSelection
local ContentSheetGridSelection = {}
---@return "ContentSheetGridSelection"
function ContentSheetGridSelection:GetClass() end
---@return "Object"
function ContentSheetGridSelection:GetChildClass() end
---@generic T : ContentSheetGridSelection
---@param class `T`
---@return boolean
function ContentSheetGridSelection:IsClass(class) end