---@meta

---@class FixtureTypeFake: Object This is NOT a fixture type, but a mere reference to one
---@field Name string
---@field FTRef Object
---@field Used integer
local FixtureTypeFake = {
    Used="0"
}
---@return "FixtureTypeFake"
function FixtureTypeFake:GetClass() end
---@return "DMXModeFake"
function FixtureTypeFake:GetChildClass() end
---@return FixtureTypesOverview
function FixtureTypeFake:Parent() end
---@param index integer
---@return DMXModeFake
function FixtureTypeFake:Ptr(index) end
---@return DMXModeFake[]
function FixtureTypeFake:Children() end
---@return DMXModeFake?
function FixtureTypeFake:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Name", role: nil): string
---@overload fun(name: "FTRef", role: nil): Object
---@overload fun(name: "Used", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Name"|"FTRef"|"Used", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): DMXModeFake
function FixtureTypeFake:Get(name, role) end
---@overload fun(index: integer, class: "DMXModeFake", undo: Undo?): DMXModeFake
---@overload fun(index: integer, class: nil, undo: Undo?): DMXModeFake
function FixtureTypeFake:Create(index, class, undo) end
---@overload fun(class: "DMXModeFake", undo: Undo?, count: integer?): DMXModeFake
---@overload fun(class: nil, undo: Undo?, count: integer?): DMXModeFake
function FixtureTypeFake:Append(class, undo, count) end
---@overload fun(class: "DMXModeFake", undo: Undo?): DMXModeFake
---@overload fun(class: nil, undo: Undo?): DMXModeFake
function FixtureTypeFake:Acquire(class, undo) end
---@overload fun(class: "DMXModeFake", undo: Undo?): DMXModeFake
---@overload fun(class: nil, undo: Undo?): DMXModeFake
---@deprecated use "Acquire" instead
function FixtureTypeFake:Aquire(class, undo) end
---@overload fun(index: integer, class: "DMXModeFake", undo: Undo?, count: integer?): DMXModeFake
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DMXModeFake
function FixtureTypeFake:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "DMXModeFake"): DMXModeFake
---@overload fun(name: string, class: nil): DMXModeFake
function FixtureTypeFake:Find(name, class) end
---@overload fun(name: string, class: "DMXModeFake"): DMXModeFake
---@overload fun(name: string, class: nil): Object
function FixtureTypeFake:FindRecursive(name, class) end
