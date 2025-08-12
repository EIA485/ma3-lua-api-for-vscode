---@meta

---@class ProgUpdateCollect: Object
---@field ObjectList integer[]
local ProgUpdateCollect = {}
---@return "ProgUpdateCollect"
function ProgUpdateCollect:GetClass() end
---@return "ProgUpdate"
function ProgUpdateCollect:GetChildClass() end
---@return Cmdline
function ProgUpdateCollect:Parent() end
---@param index integer
---@return ProgUpdate
function ProgUpdateCollect:Ptr(index) end
---@return ProgUpdate[]
function ProgUpdateCollect:Children() end
---@return ProgUpdate?
function ProgUpdateCollect:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "ObjectList", role: nil): integer[]
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ObjectList", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ProgUpdate
function ProgUpdateCollect:Get(name, role) end
---@overload fun(index: integer, class: "ProgUpdate", undo: Undo?): ProgUpdate
---@overload fun(index: integer, class: nil, undo: Undo?): ProgUpdate
function ProgUpdateCollect:Create(index, class, undo) end
---@overload fun(class: "ProgUpdate", undo: Undo?, count: integer?): ProgUpdate
---@overload fun(class: nil, undo: Undo?, count: integer?): ProgUpdate
function ProgUpdateCollect:Append(class, undo, count) end
---@overload fun(class: "ProgUpdate", undo: Undo?): ProgUpdate
---@overload fun(class: nil, undo: Undo?): ProgUpdate
function ProgUpdateCollect:Acquire(class, undo) end
---@overload fun(class: "ProgUpdate", undo: Undo?): ProgUpdate
---@overload fun(class: nil, undo: Undo?): ProgUpdate
---@deprecated use "Acquire" instead
function ProgUpdateCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "ProgUpdate", undo: Undo?, count: integer?): ProgUpdate
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ProgUpdate
function ProgUpdateCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ProgUpdate"): ProgUpdate
---@overload fun(name: string, class: nil): ProgUpdate
function ProgUpdateCollect:Find(name, class) end
---@overload fun(name: string, class: "ProgUpdate"): ProgUpdate
---@overload fun(name: string, class: nil): Object
function ProgUpdateCollect:FindRecursive(name, class) end
