---@meta

---@class Tag: GuidObject
---@field TagType integer
---@field ForwardCommands integer
---@field DummyAssignable integer
local Tag = {
    TagType="None",
    ForwardCommands="Yes"
}
---@return "Tag"
function Tag:GetClass() end
---@return "TagReference"
function Tag:GetChildClass() end
---@return Tags
function Tag:Parent() end
---@param index integer
---@return TagReference
function Tag:Ptr(index) end
---@return TagReference[]
function Tag:Children() end
---@return TagReference?
function Tag:CurrentChild() end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "TagType"|"ForwardCommands"|"DummyAssignable"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "TagType"|"ForwardCommands"|"DummyAssignable"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): TagReference
function Tag:Get(name, role) end
---@generic T : TagReference
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): TagReference
function Tag:Create(index, class, undo) end
---@generic T : TagReference
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): TagReference
function Tag:Append(class, undo, count) end
---@generic T : TagReference
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TagReference
function Tag:Acquire(class, undo) end
---@generic T : TagReference
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TagReference
---@deprecated use "Acquire" instead
function Tag:Aquire(class, undo) end
---@generic T : TagReference
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TagReference
function Tag:Insert(index, class, undo, count) end
---@generic T : TagReference
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TagReference
function Tag:Find(class, undo) end