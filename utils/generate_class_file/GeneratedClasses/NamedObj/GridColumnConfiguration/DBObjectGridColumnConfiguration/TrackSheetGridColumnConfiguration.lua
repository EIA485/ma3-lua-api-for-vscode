---@meta

---@class TrackSheetGridColumnConfiguration: DBObjectGridColumnConfiguration
local TrackSheetGridColumnConfiguration = {}
---@return "TrackSheetGridColumnConfiguration"
function TrackSheetGridColumnConfiguration:GetClass() end
---@return "DBObjectGridLine"
function TrackSheetGridColumnConfiguration:GetChildClass() end
---@generic T : TrackSheetGridColumnConfiguration
---@param class `T`
---@return boolean
function TrackSheetGridColumnConfiguration:IsClass(class) end