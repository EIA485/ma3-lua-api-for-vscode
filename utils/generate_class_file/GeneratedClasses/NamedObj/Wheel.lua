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
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "AllowShortcut"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "AllowShortcut"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Slot
function Wheel:Get(name, role) end
---@generic T : Slot
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Slot
function Wheel:Create(index, class, undo) end
---@generic T : Slot
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Slot
function Wheel:Append(class, undo, count) end
---@generic T : Slot
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Slot
function Wheel:Acquire(class, undo) end
---@generic T : Slot
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Slot
---@deprecated use "Acquire" instead
function Wheel:Aquire(class, undo) end
---@generic T : Slot
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Slot
function Wheel:Insert(index, class, undo, count) end
---@generic T : Slot
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Slot
function Wheel:Find(class, undo) end