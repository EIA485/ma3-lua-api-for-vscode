---@meta

---@class TrackSheetGridData: DBObjectGridData Data model for a tracking sheet
local TrackSheetGridData = {}
---@return "TrackSheetGridData"
function TrackSheetGridData:GetClass() end
---@return "Object"
function TrackSheetGridData:GetChildClass() end
---@generic T : TrackSheetGridData
---@param class `T`
---@return boolean
function TrackSheetGridData:IsClass(class) end