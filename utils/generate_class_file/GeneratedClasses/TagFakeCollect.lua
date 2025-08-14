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
---@overload fun(name: "Target", role: nil): GuidObject
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Target"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): TagFakeObject
function TagFakeCollect:Get(name, role) end
---@generic T : TagFakeObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): TagFakeObject
function TagFakeCollect:Create(index, class, undo) end
---@generic T : TagFakeObject
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): TagFakeObject
function TagFakeCollect:Append(class, undo, count) end
---@generic T : TagFakeObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TagFakeObject
function TagFakeCollect:Acquire(class, undo) end
---@generic T : TagFakeObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TagFakeObject
---@deprecated use "Acquire" instead
function TagFakeCollect:Aquire(class, undo) end
---@generic T : TagFakeObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TagFakeObject
function TagFakeCollect:Insert(index, class, undo, count) end
---@generic T : TagFakeObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TagFakeObject
function TagFakeCollect:Find(class, undo) end