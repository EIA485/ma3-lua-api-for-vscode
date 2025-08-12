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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Key", role: nil): Key
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Key", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Key
function KeyRegistry:Get(name, role) end
---@overload fun(index: integer, class: "Key", undo: Undo?): Key
---@overload fun(index: integer, class: nil, undo: Undo?): Key
function KeyRegistry:Create(index, class, undo) end
---@overload fun(class: "Key", undo: Undo?, count: integer?): Key
---@overload fun(class: nil, undo: Undo?, count: integer?): Key
function KeyRegistry:Append(class, undo, count) end
---@overload fun(class: "Key", undo: Undo?): Key
---@overload fun(class: nil, undo: Undo?): Key
function KeyRegistry:Acquire(class, undo) end
---@overload fun(class: "Key", undo: Undo?): Key
---@overload fun(class: nil, undo: Undo?): Key
---@deprecated use "Acquire" instead
function KeyRegistry:Aquire(class, undo) end
---@overload fun(index: integer, class: "Key", undo: Undo?, count: integer?): Key
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Key
function KeyRegistry:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Key"): Key
---@overload fun(name: string, class: nil): Key
function KeyRegistry:Find(name, class) end
---@overload fun(name: string, class: "Key"): Key
---@overload fun(name: string, class: nil): Object
function KeyRegistry:FindRecursive(name, class) end
