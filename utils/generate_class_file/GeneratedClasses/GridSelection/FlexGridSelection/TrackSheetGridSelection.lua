---@meta

---@class TrackSheetGridSelection: FlexGridSelection
local TrackSheetGridSelection = {}
---@return "TrackSheetGridSelection"
function TrackSheetGridSelection:GetClass() end
---@return "Object"
function TrackSheetGridSelection:GetChildClass() end
---@generic T : TrackSheetGridSelection
---@param class `T`
---@return boolean
function TrackSheetGridSelection:IsClass(class) end