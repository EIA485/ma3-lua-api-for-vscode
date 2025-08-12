---@meta

---@class LedDefinitions: Object
---@field HasBootAnimation boolean
---@field BootAnimationLength integer
local LedDefinitions = {
    HasBootAnimation="No",
    BootAnimationLength="0"
}
---@return "LedDefinitions"
function LedDefinitions:GetClass() end
---@return "LedDefinition"
function LedDefinitions:GetChildClass() end
---@return HardwareConfiguration
function LedDefinitions:Parent() end
---@param index integer
---@return LedDefinition
function LedDefinitions:Ptr(index) end
---@return LedDefinition[]
function LedDefinitions:Children() end
---@return LedDefinition?
function LedDefinitions:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "HasBootAnimation", role: nil): boolean
---@overload fun(name: "BootAnimationLength", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"HasBootAnimation"|"BootAnimationLength", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): LedDefinition
function LedDefinitions:Get(name, role) end
---@overload fun(index: integer, class: "LedDefinition", undo: Undo?): LedDefinition
---@overload fun(index: integer, class: nil, undo: Undo?): LedDefinition
function LedDefinitions:Create(index, class, undo) end
---@overload fun(class: "LedDefinition", undo: Undo?, count: integer?): LedDefinition
---@overload fun(class: nil, undo: Undo?, count: integer?): LedDefinition
function LedDefinitions:Append(class, undo, count) end
---@overload fun(class: "LedDefinition", undo: Undo?): LedDefinition
---@overload fun(class: nil, undo: Undo?): LedDefinition
function LedDefinitions:Acquire(class, undo) end
---@overload fun(class: "LedDefinition", undo: Undo?): LedDefinition
---@overload fun(class: nil, undo: Undo?): LedDefinition
---@deprecated use "Acquire" instead
function LedDefinitions:Aquire(class, undo) end
---@overload fun(index: integer, class: "LedDefinition", undo: Undo?, count: integer?): LedDefinition
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): LedDefinition
function LedDefinitions:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "LedDefinition"): LedDefinition
---@overload fun(name: string, class: nil): LedDefinition
function LedDefinitions:Find(name, class) end
---@overload fun(name: string, class: "LedDefinition"): LedDefinition
---@overload fun(name: string, class: nil): Object
function LedDefinitions:FindRecursive(name, class) end
