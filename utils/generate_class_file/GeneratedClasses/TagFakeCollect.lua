---@meta

---@class TagFakeCollect: Object
---@field Target GuidObject
local TagFakeCollect = {}
---@return "TagFakeCollect"
function TagFakeCollect:GetClass() end
---@return "TagFakeObject"
function TagFakeCollect:GetChildClass() end
---@param index integer
---@return TagFakeObject
function TagFakeCollect:Ptr(index) end
---@return TagFakeObject[]
function TagFakeCollect:Children() end
---@return TagFakeObject?
function TagFakeCollect:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Target", role: nil): GuidObject
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Target", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): TagFakeObject
function TagFakeCollect:Get(name, role) end
---@overload fun(index: integer, class: "TagFakeObject", undo: Undo?): TagFakeObject
---@overload fun(index: integer, class: nil, undo: Undo?): TagFakeObject
function TagFakeCollect:Create(index, class, undo) end
---@overload fun(class: "TagFakeObject", undo: Undo?, count: integer?): TagFakeObject
---@overload fun(class: nil, undo: Undo?, count: integer?): TagFakeObject
function TagFakeCollect:Append(class, undo, count) end
---@overload fun(class: "TagFakeObject", undo: Undo?): TagFakeObject
---@overload fun(class: nil, undo: Undo?): TagFakeObject
function TagFakeCollect:Acquire(class, undo) end
---@overload fun(class: "TagFakeObject", undo: Undo?): TagFakeObject
---@overload fun(class: nil, undo: Undo?): TagFakeObject
---@deprecated use "Acquire" instead
function TagFakeCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "TagFakeObject", undo: Undo?, count: integer?): TagFakeObject
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TagFakeObject
function TagFakeCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "TagFakeObject"): TagFakeObject
---@overload fun(name: string, class: nil): TagFakeObject
function TagFakeCollect:Find(name, class) end
---@overload fun(name: string, class: "TagFakeObject"): TagFakeObject
---@overload fun(name: string, class: nil): Object
function TagFakeCollect:FindRecursive(name, class) end
