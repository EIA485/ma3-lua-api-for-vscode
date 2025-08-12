---@meta

---@class Wheel: NamedObj Describes a physical gobo or color wheel.
---@field AllowShortcut integer
local Wheel = {
    AllowShortcut="No"
}
---@return "Wheel"
function Wheel:GetClass() end
---@return "Slot"
function Wheel:GetChildClass() end
---@return Wheels
function Wheel:Parent() end
---@param index integer
---@return Slot
function Wheel:Ptr(index) end
---@return Slot[]
function Wheel:Children() end
---@return Slot?
function Wheel:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"AllowShortcut", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"AllowShortcut", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Slot
function Wheel:Get(name, role) end
---@overload fun(index: integer, class: "Slot", undo: Undo?): Slot
---@overload fun(index: integer, class: nil, undo: Undo?): Slot
function Wheel:Create(index, class, undo) end
---@overload fun(class: "Slot", undo: Undo?, count: integer?): Slot
---@overload fun(class: nil, undo: Undo?, count: integer?): Slot
function Wheel:Append(class, undo, count) end
---@overload fun(class: "Slot", undo: Undo?): Slot
---@overload fun(class: nil, undo: Undo?): Slot
function Wheel:Acquire(class, undo) end
---@overload fun(class: "Slot", undo: Undo?): Slot
---@overload fun(class: nil, undo: Undo?): Slot
---@deprecated use "Acquire" instead
function Wheel:Aquire(class, undo) end
---@overload fun(index: integer, class: "Slot", undo: Undo?, count: integer?): Slot
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Slot
function Wheel:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Slot"): Slot
---@overload fun(name: string, class: nil): Slot
function Wheel:Find(name, class) end
---@overload fun(name: string, class: "Slot"): Slot
---@overload fun(name: string, class: nil): Object
function Wheel:FindRecursive(name, class) end
