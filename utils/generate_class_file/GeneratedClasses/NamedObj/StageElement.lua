---@meta

---@class StageElement: NamedObj
---@field Follow
Stage
Dimensions integer
---@field P1X number
---@field P1Y number
---@field P1Z number
---@field P2X number
---@field P2Y number
---@field P2Z number
---@field P3X number
---@field P3Y number
---@field P3Z number
---@field P4X number
---@field P4Y number
---@field P4Z number
local StageElement = {
    ["Follow
Stage
Dimensions"]="1",
    P1X="0",
    P1Y="0",
    P1Z="0",
    P2X="0",
    P2Y="0",
    P2Z="0",
    P3X="0",
    P3Y="0",
    P3Z="0",
    P4X="0",
    P4Y="0",
    P4Z="0"
}
---@return "StageElement"
function StageElement:GetClass() end
---@return "IllegalObject"
function StageElement:GetChildClass() end
---@return Space
function StageElement:Parent() end
---@param index integer
---@return IllegalObject
function StageElement:Ptr(index) end
---@return IllegalObject[]
function StageElement:Children() end
---@return IllegalObject?
function StageElement:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Follow
Stage
Dimensions", role: nil): integer
---@overload fun(name: "P1X"|"P1Y"|"P1Z"|"P2X"|"P2Y"|"P2Z"|"P3X"|"P3Y"|"P3Z"|"P4X"|"P4Y"|"P4Z", role: nil): number
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Follow
Stage
Dimensions"|"P1X"|"P1Y"|"P1Z"|"P2X"|"P2Y"|"P2Z"|"P3X"|"P3Y"|"P3Z"|"P4X"|"P4Y"|"P4Z", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): IllegalObject
function StageElement:Get(name, role) end
---@overload fun(index: integer, class: "IllegalObject", undo: Undo?): IllegalObject
---@overload fun(index: integer, class: nil, undo: Undo?): IllegalObject
function StageElement:Create(index, class, undo) end
---@overload fun(class: "IllegalObject", undo: Undo?, count: integer?): IllegalObject
---@overload fun(class: nil, undo: Undo?, count: integer?): IllegalObject
function StageElement:Append(class, undo, count) end
---@overload fun(class: "IllegalObject", undo: Undo?): IllegalObject
---@overload fun(class: nil, undo: Undo?): IllegalObject
function StageElement:Acquire(class, undo) end
---@overload fun(class: "IllegalObject", undo: Undo?): IllegalObject
---@overload fun(class: nil, undo: Undo?): IllegalObject
---@deprecated use "Acquire" instead
function StageElement:Aquire(class, undo) end
---@overload fun(index: integer, class: "IllegalObject", undo: Undo?, count: integer?): IllegalObject
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): IllegalObject
function StageElement:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "IllegalObject"): IllegalObject
---@overload fun(name: string, class: nil): IllegalObject
function StageElement:Find(name, class) end
---@overload fun(name: string, class: "IllegalObject"): IllegalObject
---@overload fun(name: string, class: nil): Object
function StageElement:FindRecursive(name, class) end
