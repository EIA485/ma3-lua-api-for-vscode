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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"DataPoolNo", role: nil): integer
---@overload fun(name: "DataPoolName"|"Parent"|"Name"|"Number", role: nil): string
---@overload fun(name: "SequenceNo", role: nil): integer
---@overload fun(name: "SequenceName", role: nil): string
---@overload fun(name: "TargetCue"|"TargetPart", role: nil): integer
---@overload fun(name: "TargetName", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DataPoolNo"|"DataPoolName"|"Parent"|"Name"|"Number"|"SequenceNo"|"SequenceName"|"TargetCue"|"TargetPart"|"TargetName", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function CueUpdate:Get(name, role) end
