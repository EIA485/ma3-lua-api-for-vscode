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
---@overload fun(name: "HasBootAnimation"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "BootAnimationLength"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "HasBootAnimation"|"BootAnimationLength"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): LedDefinition
function LedDefinitions:Get(name, role) end
---@generic T : LedDefinition
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): LedDefinition
function LedDefinitions:Create(index, class, undo) end
---@generic T : LedDefinition
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): LedDefinition
function LedDefinitions:Append(class, undo, count) end
---@generic T : LedDefinition
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LedDefinition
function LedDefinitions:Acquire(class, undo) end
---@generic T : LedDefinition
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LedDefinition
---@deprecated use "Acquire" instead
function LedDefinitions:Aquire(class, undo) end
---@generic T : LedDefinition
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): LedDefinition
function LedDefinitions:Insert(index, class, undo, count) end
---@generic T : LedDefinition
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LedDefinition
function LedDefinitions:Find(class, undo) end