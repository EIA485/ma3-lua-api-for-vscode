---@meta

---@class CueUpdate: ProgUpdate
---@field SequenceNo integer
---@field SequenceName string
---@field TargetCue integer
---@field TargetPart integer
---@field TargetName string
local CueUpdate = {}
---@return "CueUpdate"
function CueUpdate:GetClass() end
---@return "Object"
function CueUpdate:GetChildClass() end
---@return CueUpdates
function CueUpdate:Parent() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "SequenceNo"|"TargetCue"|"TargetPart"|"DataPoolNo"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "SequenceName"|"TargetName"|"DataPoolName"|"Parent"|"Name"|"Number"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "SequenceNo"|"SequenceName"|"TargetCue"|"TargetPart"|"TargetName"|"DataPoolNo"|"DataPoolName"|"Parent"|"Name"|"Number"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function CueUpdate:Get(name, role) end