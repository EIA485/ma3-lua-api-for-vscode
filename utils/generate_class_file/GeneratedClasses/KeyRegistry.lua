---@meta

---@class KeyRegistry: Object All keys stored locally.
---@field Key Key
local KeyRegistry = {}
---@return "KeyRegistry"
function KeyRegistry:GetClass() end
---@return "Key"
function KeyRegistry:GetChildClass() end
---@return Root
function KeyRegistry:Parent() end
---@param index integer
---@return Key
function KeyRegistry:Ptr(index) end
---@return Key[]
function KeyRegistry:Children() end
---@return Key?
function KeyRegistry:CurrentChild() end
---@overload fun(name: "Key", role: nil): Key
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Key"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Key
function KeyRegistry:Get(name, role) end
---@generic T : Key
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Key
function KeyRegistry:Create(index, class, undo) end
---@generic T : Key
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Key
function KeyRegistry:Append(class, undo, count) end
---@generic T : Key
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Key
function KeyRegistry:Acquire(class, undo) end
---@generic T : Key
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Key
---@deprecated use "Acquire" instead
function KeyRegistry:Aquire(class, undo) end
---@generic T : Key
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Key
function KeyRegistry:Insert(index, class, undo, count) end
---@generic T : Key
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Key
function KeyRegistry:Find(class, undo) end