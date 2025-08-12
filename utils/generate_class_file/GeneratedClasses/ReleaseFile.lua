---@meta

---@class ReleaseFile: Object
---@field Description string
---@field Version string
---@field Date string
---@field ReleaseFileVersion string
---@field haveUpdate boolean
local ReleaseFile = {}
---@return "ReleaseFile"
function ReleaseFile:GetClass() end
---@return "MAPacket"
function ReleaseFile:GetChildClass() end
---@return Temp
function ReleaseFile:Parent() end
---@param index integer
---@return MAPacket
function ReleaseFile:Ptr(index) end
---@return MAPacket[]
function ReleaseFile:Children() end
---@return MAPacket?
function ReleaseFile:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Description"|"Version"|"Date"|"ReleaseFileVersion", role: nil): string
---@overload fun(name: "haveUpdate", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Description"|"Version"|"Date"|"ReleaseFileVersion"|"haveUpdate", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MAPacket
function ReleaseFile:Get(name, role) end
---@overload fun(index: integer, class: "MAPacket", undo: Undo?): MAPacket
---@overload fun(index: integer, class: nil, undo: Undo?): MAPacket
function ReleaseFile:Create(index, class, undo) end
---@overload fun(class: "MAPacket", undo: Undo?, count: integer?): MAPacket
---@overload fun(class: nil, undo: Undo?, count: integer?): MAPacket
function ReleaseFile:Append(class, undo, count) end
---@overload fun(class: "MAPacket", undo: Undo?): MAPacket
---@overload fun(class: nil, undo: Undo?): MAPacket
function ReleaseFile:Acquire(class, undo) end
---@overload fun(class: "MAPacket", undo: Undo?): MAPacket
---@overload fun(class: nil, undo: Undo?): MAPacket
---@deprecated use "Acquire" instead
function ReleaseFile:Aquire(class, undo) end
---@overload fun(index: integer, class: "MAPacket", undo: Undo?, count: integer?): MAPacket
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MAPacket
function ReleaseFile:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MAPacket"): MAPacket
---@overload fun(name: string, class: nil): MAPacket
function ReleaseFile:Find(name, class) end
---@overload fun(name: string, class: "MAPacket"): MAPacket
---@overload fun(name: string, class: nil): Object
function ReleaseFile:FindRecursive(name, class) end
