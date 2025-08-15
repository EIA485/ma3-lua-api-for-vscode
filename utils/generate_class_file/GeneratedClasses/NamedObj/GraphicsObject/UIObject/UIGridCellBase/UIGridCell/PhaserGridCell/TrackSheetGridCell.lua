---@meta

---@class TrackSheetGridCell: PhaserGridCell
local TrackSheetGridCell = {}
---@return "TrackSheetGridCell"
function TrackSheetGridCell:GetClass() end
---@return "UIObject"
function TrackSheetGridCell:GetChildClass() end
---@generic T : TrackSheetGridCell
---@param class `T`
---@return boolean
function TrackSheetGridCell:IsClass(class) end