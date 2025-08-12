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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "IconReferencesSet", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"IconReferencesSet", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): WindowType
function WindowTypes:Get(name, role) end
---@overload fun(index: integer, class: "WindowType", undo: Undo?): WindowType
---@overload fun(index: integer, class: nil, undo: Undo?): WindowType
function WindowTypes:Create(index, class, undo) end
---@overload fun(class: "WindowType", undo: Undo?, count: integer?): WindowType
---@overload fun(class: nil, undo: Undo?, count: integer?): WindowType
function WindowTypes:Append(class, undo, count) end
---@overload fun(class: "WindowType", undo: Undo?): WindowType
---@overload fun(class: nil, undo: Undo?): WindowType
function WindowTypes:Acquire(class, undo) end
---@overload fun(class: "WindowType", undo: Undo?): WindowType
---@overload fun(class: nil, undo: Undo?): WindowType
---@deprecated use "Acquire" instead
function WindowTypes:Aquire(class, undo) end
---@overload fun(index: integer, class: "WindowType", undo: Undo?, count: integer?): WindowType
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): WindowType
function WindowTypes:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "WindowType"): WindowType
---@overload fun(name: string, class: nil): WindowType
function WindowTypes:Find(name, class) end
---@overload fun(name: string, class: "WindowType"): WindowType
---@overload fun(name: string, class: nil): Object
function WindowTypes:FindRecursive(name, class) end
