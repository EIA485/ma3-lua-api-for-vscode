---@meta

---@class Marker: TimeRange
local Marker = {}
---@return "Marker"
function Marker:GetClass() end
---@return "SubTrack"
function Marker:GetChildClass() end
---@generic T : Marker
---@param class `T`
---@return boolean
function Marker:IsClass(class) end
---@return MarkerTrack
function Marker:Parent() end