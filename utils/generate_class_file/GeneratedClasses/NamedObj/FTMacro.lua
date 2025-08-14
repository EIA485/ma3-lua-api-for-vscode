---@meta

---@class FTMacro: NamedObj Describes a set of values that need to be apllied to a fixture in order to trigger a special behavior (like striking the lamp).
---@field ChannelFunction ChannelFunction
local FTMacro = {}
---@return "FTMacro"
function FTMacro:GetClass() end
---@return "MacroDMX"
function FTMacro:GetChildClass() end
---@return FTMacros
function FTMacro:Parent() end
---@param index integer
---@return MacroDMX
function FTMacro:Ptr(index) end
---@return MacroDMX[]
function FTMacro:Children() end
---@return MacroDMX?
function FTMacro:CurrentChild() end
---@overload fun(name: "ChannelFunction", role: nil): ChannelFunction
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "ChannelFunction"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MacroDMX
function FTMacro:Get(name, role) end
---@generic T : MacroDMX
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MacroDMX
function FTMacro:Create(index, class, undo) end
---@generic T : MacroDMX
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MacroDMX
function FTMacro:Append(class, undo, count) end
---@generic T : MacroDMX
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroDMX
function FTMacro:Acquire(class, undo) end
---@generic T : MacroDMX
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroDMX
---@deprecated use "Acquire" instead
function FTMacro:Aquire(class, undo) end
---@generic T : MacroDMX
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MacroDMX
function FTMacro:Insert(index, class, undo, count) end
---@generic T : MacroDMX
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroDMX
function FTMacro:Find(class, undo) end