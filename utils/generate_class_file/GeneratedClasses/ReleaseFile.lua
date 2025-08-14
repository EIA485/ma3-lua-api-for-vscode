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
---@overload fun(name: "haveUpdate"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Description"|"Version"|"Date"|"ReleaseFileVersion"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Description"|"Version"|"Date"|"ReleaseFileVersion"|"haveUpdate"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MAPacket
function ReleaseFile:Get(name, role) end
---@generic T : MAPacket
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MAPacket
function ReleaseFile:Create(index, class, undo) end
---@generic T : MAPacket
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MAPacket
function ReleaseFile:Append(class, undo, count) end
---@generic T : MAPacket
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MAPacket
function ReleaseFile:Acquire(class, undo) end
---@generic T : MAPacket
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MAPacket
---@deprecated use "Acquire" instead
function ReleaseFile:Aquire(class, undo) end
---@generic T : MAPacket
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MAPacket
function ReleaseFile:Insert(index, class, undo, count) end
---@generic T : MAPacket
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MAPacket
function ReleaseFile:Find(class, undo) end