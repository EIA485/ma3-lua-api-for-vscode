---@meta

---@class Marker: TimeRange
local Marker = {}
---@return "Marker"
function Marker:GetClass() end
---@return "SubTrack"
function Marker:GetChildClass() end
---@return MarkerTrack
function Marker:Parent() end