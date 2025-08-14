---@meta

---@class WindowTypes: Object
---@field IconReferencesSet boolean
local WindowTypes = {}
---@return "WindowTypes"
function WindowTypes:GetClass() end
---@return "WindowType"
function WindowTypes:GetChildClass() end
---@return UserProfile
function WindowTypes:Parent() end
---@param index integer
---@return WindowType
function WindowTypes:Ptr(index) end
---@return WindowType[]
function WindowTypes:Children() end
---@return WindowType?
function WindowTypes:CurrentChild() end
---@overload fun(name: "IconReferencesSet"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IconReferencesSet"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): WindowType
function WindowTypes:Get(name, role) end
---@generic T : WindowType
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): WindowType
function WindowTypes:Create(index, class, undo) end
---@generic T : WindowType
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): WindowType
function WindowTypes:Append(class, undo, count) end
---@generic T : WindowType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowType
function WindowTypes:Acquire(class, undo) end
---@generic T : WindowType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowType
---@deprecated use "Acquire" instead
function WindowTypes:Aquire(class, undo) end
---@generic T : WindowType
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): WindowType
function WindowTypes:Insert(index, class, undo, count) end
---@generic T : WindowType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowType
function WindowTypes:Find(class, undo) end